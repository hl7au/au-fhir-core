###  Version = TBD-ballot
- Expected Publication date: August 2024
- Expected Publication status: Ballot
- Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version 0.3.0-ballot to the upcoming August ballot.

#### Changes in this version

- Removed Must Support from the following elements in AU Core Procedure:
  - Procedure.statusReason [FHIR-45013](https://jira.hl7.org/browse/FHIR-45013)
  - Procedure.category [FHIR-45014](https://jira.hl7.org/browse/FHIR-45014)
  - Procedure.recorder [FHIR-45015](https://jira.hl7.org/browse/FHIR-45015)
  - Procedure.asserter [FHIR-45016](https://jira.hl7.org/browse/FHIR-45016)
  - Procedure.bodySite and added profile-specific implementation guidance on including body site information [FHIR-45017](https://jira.hl7.org/browse/FHIR-45017).
- Removed AU Core MedicationStatement and added to Future of AU Core that AU Core MedicationStatement is planned for AU Core R2 [FHIR-45052](https://jira.hl7.org/browse/FHIR-45052).
- Updated mapping of AUCDI Procedure Completed Event to be represented by Procedure only [au-fhir-core #147](https://github.com/hl7au/au-fhir-core/issues/147).
- Updated mapping of AUCDI Medication Use Statement to be represented by MedicationStatement only [au-fhir-core #145](https://github.com/hl7au/au-fhir-core/issues/145).
- Updated AU Core Medication name [FHIR-45032](https://jira.hl7.org/browse/FHIR-45032)
- Deleted erroneous must support file [FHIR-45100](https://jira.hl7.org/browse/FHIR-45100)
- Added UCUM to supported CodeSystems on Terminology page [FHIR-45071](https://jira.hl7.org/browse/FHIR-45071)
- Fixed typos on General Requirements page [FHIR-45149](https://jira.hl7.org/browse/FHIR-45149)
- Corrected the wording of STU Note [FHIR-45156](https://jira.hl7.org/browse/FHIR-45156)
- Updated the resource type in the AU Core Waist Circumference example [FHIR-45027](https://jira.hl7.org/browse/FHIR-45027)
- Changed 'supply' to 'supplying' to clarify terminology support guidelines [FHIR-45105](https://jira.hl7.org/browse/FHIR-45105)
