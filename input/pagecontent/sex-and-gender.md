### Sex and Gender Concepts in AU Base and AU Core

|Sex and Gender Concept|AU Base Profile|AU Core Profile|
|---| ---| ---|
|Name to Use (NtU)|[AU Base Patient](http://hl7.org.au/fhir/StructureDefinition/au-patient)<br>[AU Base Practitioner](http://hl7.org.au/fhir/StructureDefinition/au-practitioner)<br>[AU Base Related Person](http://hl7.org.au/fhir/StructureDefinition/au-relatedperson)|[AU Core Patient](StructureDefinition-au-core-patient.html) (*Must Support*)|
|Pronouns|[AU Base Patient](http://hl7.org.au/fhir/StructureDefinition/au-patient)<br>[AU Base Practitioner](http://hl7.org.au/fhir/StructureDefinition/au-practitioner)<br>[AU Base Related Person](http://hl7.org.au/fhir/StructureDefinition/au-relatedperson)|[AU Core Patient](StructureDefinition-au-core-patient.html) (*Must Support*)|
|Gender Identity (GI)|[AU Base Patient](http://hl7.org.au/fhir/StructureDefinition/au-patient)<br>[AU Base Practitioner](http://hl7.org.au/fhir/StructureDefinition/au-practitioner)<br>[AU Base Related Person](http://hl7.org.au/fhir/StructureDefinition/au-relatedperson)|[AU Core Patient](StructureDefinition-au-core-patient.html) (*Must Support*)|
|Recorded Sex or Gender|[AU Base Patient](http://hl7.org.au/fhir/StructureDefinition/au-patient)<br>[AU Base Practitioner](http://hl7.org.au/fhir/StructureDefinition/au-practitioner)<br>[AU Base Related Person](http://hl7.org.au/fhir/StructureDefinition/au-relatedperson)|[AU Core Patient](StructureDefinition-au-core-patient.html)|
|Sex Assigned at Birth|[AU Base Patient](http://hl7.org.au/fhir/StructureDefinition/au-patient)<br>[AU Base Practitioner](http://hl7.org.au/fhir/StructureDefinition/au-practitioner)<br>[AU Base Related Person](http://hl7.org.au/fhir/StructureDefinition/au-relatedperson)|[AU Core Patient](StructureDefinition-au-core-patient.html)|
{:.grid}

### Name to Use (NtU)​

AU Core supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Name to Use is represented using ‘usual’ in `name.use`. In AU Core, `name.use` is a *Must Support* data element. It should be noted that, `name.period` is not a *Must Support* data element. See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#name-to-use-ntu) for further guidance on the use of Name to Use in Practitioner and RelatedPerson resources.

Example: Patient resource with name to use
~~~
{
  "resourceType" : "Patient",
    ...
    "name" : [
    {
      "use" : "usual",
      "family" : "Franklin",
      "given" : [
        "Stella"
      ]
    }
  ],
  ...
}  
~~~

### Pronouns​

<p class="stu-note">Must Support and Obligations for the <a href="http://hl7.org/fhir/StructureDefinition/individual-pronouns">Individual Pronouns</a> extension are requirements for future consideration.</p>


AU Core supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Pronouns is represented with the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension. In AU Core, the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is a *Must Support* data element, and the value element of the extension is constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#pronouns) for further guidance.

When populating the value element of the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension:
- *they/them/their/theirs/themselves* may be represented by sending the LOINC Answer (LA) code LA29520-6
- *she/her/her/hers/herself* may be represented by sending the LOINC Answer (LA) code LA29519-8
- *he/him/his/his/himself* may be represented by sending the LOINC Answer (LA) code LA29518-0
- *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
- *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
- *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
- Where the workflow does not support obtaining a pronoun, it may be represented by sending the Data Absent Reason code "not-asked"
- Where a pronoun is provided but does not correspond to one of the [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) terms then a text only or alternative specific coded value can be supplied.

Example: Patient resource with pronouns
~~~
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "LA29519-8",
                "display" : "she/her/her/hers/herself"
              }
            ]
          }
        },
        {
          "url" : "period",
          "valuePeriod" : {
            "start" : "2001-05-06"
          }
        }
      ]
    },
  ...
}  
~~~

Example: Patient resource with prefer not to answer for pronouns
~~~
{
  "resourceType" : "Patient",
    ...
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                "code" : "asked-declined",
              }
            ]
          }
        }
      ]
    },
  ...
}  
~~~


### Gender Identity (GI)

<p class="stu-note">Must Support and Obligations for the <a href="http://hl7.org/fhir/StructureDefinition/individual-genderIdentity">Individual Gender Identity</a> extension are requirements for future consideration.</p>

AU Core supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) and aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Gender Identity is represented with the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension. In AU Core, the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is a *Must Support* data element, and the value element of the extension is constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#gender-identity-gi) for further guidance.

When populating the value element of the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension:
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|
  - *[I/They] use a different term (please specify)*  may be represented by sending only `text` and no `coding`
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the Data Absent Reason code "not-asked"

Example: Patient resource with gender identity
~~~
{
  "resourceType" : "Patient",
    ...
    "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "446141000124107",
                "display" : "Identifies as female gender (finding)"
              }
            ]
          }
        }
      ]
    },
  ...
}  
~~~

### Recorded Sex or Gender (RSG)

<p class="stu-note">Must Support and Obligations for the <a href="https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html">Person Recorded Sex or Gender</a> extension are requirements for future consideration.</p>

AU Core allows representation and exchange of the Recorded Sex or Gender data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)).  RSG is represented using the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension.  

It should be noted the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension is not marked as *Must Support* in AU Core.  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#recorded-sex-or-gender) for further guidance on the use of RSG in Patient, Practitoner and RelatedPerson resources.

### Sex Assigned at Birth

AU Core supports representation and exchange of the Sex Assigned at Birth data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Sex Assigned at Birth is represented using the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html). It should be noted that Sex Assigned at Birth is not marked as *Must Support* in AU Core.  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#sex-assigned-at-birth) for further guidance on the use of Sex Assigned at Birth in Patient, Practitoner and RelatedPerson resources.