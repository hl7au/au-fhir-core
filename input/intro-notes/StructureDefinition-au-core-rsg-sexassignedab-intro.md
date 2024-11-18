### Profile specific implementation guidance
- When populating the value element of the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension for Sex Assigned at Birth:
  - *Male* may be represented by sending the SNOMED CT code 248153007\|Male\|
  - *Female* may be represented by sending the SNOMED CT code 248152002\|Female\|
  - *Intersex* may be represented by sending the SNOMED CT code 32570691000036108\|Intersex\|
  - *Indeterminate sex* may be represented by sending the SNOMED CT code 32570681000036106\|Indeterminate sex\|
Refer to [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#sex-assigned-at-birth) in AU Base for further guidance.

**Examples:**

* Examples for this Extension Profile: [Patient/banks-mia-leanne](Patient-banks-mia-leanne.html)