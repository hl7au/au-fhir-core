In support of the vision for LGBTIQA+ people achieving equitable health and wellbeing outcomes, AU Core has included content to represent and exchange key data elements including Name to Use, Pronouns and Gender Identity.
Where possible, AU Core has considered:
- the logical data element models provided by [HL7 International’s Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1 specification](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/),
- the FHIR representations of the Gender Harmony data elements in the core FHIR standard and FHIR core extensions,
- localisation and adoption of these data elements from [HL7 Australia’ AU Base FHIR Implementation Guide](https://build.fhir.org/ig/hl7au/au-fhir-base) profiles.

This page provides guidance on how sex and gender related concepts can be structured in FHIR and conformant to AU Core. 

AU Base represents sex and gender related data elements, and describes their use for Patient, Pracititoner and Related Person. Guidance that is relevant the use of these elements in AU Core has been excerpted from AU Base. See the AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) guidance for additional detail. AU Core inherits those sex and gender related elements defined in AU Base, and places *Must Support* and Obligations on some concepts. The tables below provide an overview of the sex and gender related data elements in AU Base and AU Core, indicating for which profiles the element is supported or allowed. 

**Legend:**

<img src="green_checkmark.svg.png" width="20"/> **Supported**: The sex or gender related element has *Must Support* and Obligations in the specified profile.

<img src="orange_checkmark.svg.png" width="20"/> **Allowed**: The sex or gender related element may be used in the specified profile, but does not have *Must Support* or Obligations defined.

<img src="minus_symbol.svg.png" width="20"/> **Not applicable**: Sex or gender related element is not applicable to the specified profile.


<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;" rowspan="2">Sex and Gender Concept</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;" colspan="3">AU Base<sup>1</sup></th>
        </tr>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Patient</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Practitioner</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Related Person</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Name to Use</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Pronouns</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Gender Identity</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Recorded Sex or Gender</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Sex Assigned at Birth</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Patient.gender</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
    </tbody>
</table>
<br>
*Notes*
1. AU Base does not place *Must Support* requirements, and therefore all concepts included in AU Base are <img src="orange_checkmark.svg.png" width="20"/> and not *Must Support*.   


<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;" rowspan="2">Sex and Gender Concept</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;" colspan="3">AU Core<sup>1</sup></th>
        </tr>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Patient</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Practitioner<sup>2</sup></th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Related Person<sup>3</sup></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Name to Use</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Pronouns</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Gender Identity</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Recorded Sex or Gender</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Sex Assigned at Birth</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Patient.gender</td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
        </tr>
    </tbody>
</table>
<br>
*Notes*
1. AU Base does not place *Must Support* requirements, and therefore all concepts inherhited from AU Base are <img src="orange_checkmark.svg.png" width="20"/> and not *Must Support*. 
2. The requirements for sex and gender related concepts in Practitioner are inherited from AU Base.
3. The requirements for sex and gender related concepts in Related Person are inherited from AU Base.


### Name to Use

AU Core supports representation and exchange of the Name to Use (NtU) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Name to Use is represented using ‘usual’ in `name.use`. In AU Core, `name.use` is a *Must Support* data element. It should be noted that, `name.period` is not a *Must Support* data element. 

Example: Patient resource with name to use
~~~
{
  "resourceType" : "Patient",
    ...
    "name" : [
    {
      "use" : "usual",
      "family" : "Bennelong",
      "given" : [
        "Anne"
      ]
    }
  ],
  ...
}  
~~~

### Pronouns​

AU Core supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Pronouns is represented with the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension. In AU Core, the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is a *Must Support* data element, and the value element of the extension is constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).  

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


### Gender Identity

AU Core supports representation and exchange of the Gender Identity (GI) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) and aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Gender Identity is represented with the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension. In AU Core, the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is a *Must Support* data element, and the value element of the extension is constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)). 

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

### Recorded Sex or Gender

AU Core allows representation and exchange of the Recorded Sex or Gender (RSG) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)
- [AU Core Practitioner](StructureDefinition-au-core-practitioner.html)
- [AU Core RelatedPerson](StructureDefinition-au-core-relatedperson.html)  

RSG is represented using the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension.  It should be noted the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension is not marked as *Must Support* in AU Core. The use of this extension is not supported, with the exception of Sex Assigned at Birth.  

### Sex Assigned at Birth

<p class="request-for-feedback">Implementers are advised that the <a href="StructureDefinition-au-core-rsg-sexassignedab.html">AU Core Sex Assigned At Birth</a> extension is under consideration for *Must Support* in AU Core. Input is welcome, please see <a href="https://jira.hl7.org/browse/FHIR-44857">FHIR-44857</a>.</p>

AU Core allows representation and exchange of the Sex Assigned at Birth data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)
- [AU Core Practitioner](StructureDefinition-au-core-practitioner.html)
- [AU Core RelatedPerson](StructureDefinition-au-core-relatedperson.html)

Sex Assigned at Birth is represented using the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html). The AU Core profile, Sex Assigned at Birth, is a representation of the guidance present in AU Base. It should be noted that while elements within Sex Assigned at Birth are *Must Support*, the Sex Assigned at Birth extension is not marked as *Must Support* in AU Core.  

When populating the value element of the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) for [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html):
  - *Male* may be represented by sending the SNOMED CT code 248153007\|Male\|
  - *Female* may be represented by sending the SNOMED CT code 248152002\|Female\|
  - *Intersex* may be represented by sending the SNOMED CT code 32570691000036108\|Intersex\|
  - *Indeterminate sex* may be represented by sending the SNOMED CT code 32570681000036106\|Indeterminate sex\|
  - *Prefer not to answer* may be represented by sending the Data Absent Reason code "asked-declined"
  - *Asked but not known* may be represented by sending the Data Absent Reason code "asked-unknown"
  - *Not stated or inadequately described* may be represented by sending the Data Absent Reason code "unknown"
  - Where the workflow does not support obtaining a sex at birth, it may be represented by sending the Data Absent Reason code "not-asked"

Example: Patient resource with sex assigned at birth.
~~~
{
  "resourceType" : "Patient",
  ...
  {
      "url" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-rsg-sexassignedab",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "248152002"
              }
            ],
            "text" : "Female"
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "1515311000168102",
                "display" : "Biological sex at birth"
              }
            ]
          }
        }
      ]
    }
  ...
}
~~~

### `Patient.gender`
The [AU Core Patient](StructureDefinition-au-core-patient.html) profile inherits from and extends the [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) profile from the AU Base FHIR Implementation Guide. Accordingly, it should be noted that the following implementation guidance applies to instances of the AU Core Patient profile:
- The `Patient.gender` value **SHALL** be regarded as a Recorded Sex or Gender value. If assertions regarding the nature of the `Patient.gender` value are required, a single instance of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension may be included with these assertions and its `genderElementQualifier` subelement set to a value of “true”.
- Practically, this means that the `Patient.gender` element in instances of AU Core Patient
    - must not be relied upon as a valid gender identity value for the patient
    - must not be relied upon as a sex category for clinical use.

Example: Patient resource with `Patient.gender` qualified with Person Recorded Sex or Gender extension. 
~~~
{
  "resourceType" : "Patient",
  ...
  "gender" : "female",
  {
      "url" : "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender",
      "extension" : [
        {
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "248152002"
              }
            ]
          }
        },
        {
          "url" : "type",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "1515311000168102",
                "display" : "Biological sex at birth"
              }
            ]
          }
        },
        {
          "url" : "genderElementQualifier",
          "valueBoolean" : true
        }
      ]
    }
  ...
}
~~~