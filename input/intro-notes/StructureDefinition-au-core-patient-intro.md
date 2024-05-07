### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for records associated with a patient
- Record or update a record associated with a patient
- Query for basic demographics and other administrative information about a patient
- Record or update basic demographics and other administrative information about a patient
- Read information about a patient referenced by another resource


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [IPA-Patient](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-patient.html)
- [Patient (IPS)](http://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Patient-uv-ips.html)
- [US Core Patient](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient) if gender identity is not exchanged. US Core includes the US Gore Gender Identity extension; AU Core requires support of the international Gender Identity extension

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.

### Gender Identity and related concepts
<b>Name to Use (NtU)​</b>

By making `name.use` a Must Support data element, this profile explicitly supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). Name to Use is represented using ‘usual’ in `name.use`. It should be noted that, `name.period` is not a Must Support data element in this version of the profile.

<b>Pronouns​</b>

By making Individual Pronouns a Must Support data element, this profile explicitly supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). 

<b>Gender Identity (GI)</b>

By making Individual Gender Identity a Must Support data element, this profile explicitly supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)). 

<b>Sex Assigned at Birth</b>

Sex assigned at birth is represented using the [Person Recorded Sex or Gender extension](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-individual-recordedSexOrGender.html) extension as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html). It should be noted the [Person Recorded Sex or Gender extension](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-individual-recordedSexOrGender.html) extension is not marked as Must Support in this version of the profile.


### Profile specific implementation guidance
- An individual's IHI **SHOULD** be used in `Patient.identifier` if available, in preference to Medicare or DVA numbers
- See the [Representing communication preferences](general-guidance.html#representing-communication-preferences) section for guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
- This profile supports patient gender identity aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) using the [Individual Gender Identity extension](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) and [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set.
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|
  - *[I/They] use a different term (please specify)*  may be represented by sending only text and no code
  - *Prefer not to answer* may be represented by sending the code "asked-declined"
  - *Not stated or inadequately described* may be represented by the code "unknown"
  - Where the workflow does not support obtaining a gender identity value, it may be represented by sending the code "not-asked"
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/) and [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-patient.html)
- Patient names can be provided as a text representation in `name.text` and/or parts such as `name.family` and `name.given`. 
  - `name.text` specifies the entire name as it should be displayed and this may be provided instead of, or as well as, the specific parts. It is important to note that the presence of parts of a name, e.g. `name.family` and `name.given`, do not imply that `name.text` is known or must be supplied. 
  - In this profile, the following sub-elements of `name` are marked as _Must Support_: `name.use`, `name.text`, `name.family`, and `name.given`
    - servers are required to support at least one of the following sub-elements: `name.text`, `name.family`, and `name.given`
    - clients are required to all sub-elements marked _Must Support_: `name.use`, `name.text`, `name.family`, and `name.given`


