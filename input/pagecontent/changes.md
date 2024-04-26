###  Version = TBD-ballot
- Expected Publication date: August 2024
- Expected Publication status: Ballot
- Based on FHIR version: 4.0.1

This change log documents the significant updates and resolutions implemented from version 0.3.0-ballot to the upcoming August ballot.

#### Changes in this version

- Removed Must Support from the following elements in AU Core Procedure:
  - Procedure.statusReason [FHIR-45013](https://jira.hl7.org/browse/FHIR-45013)
  - Procedure.category [FHIR-45014](https://jira.hl7.org/browse/FHIR-45014)
  - Procedure.recorder [FHIR-45015](https://jira.hl7.org/browse/FHIR-45015), [FHIR-45082](https://jira.hl7.org/browse/FHIR-45082)
  - Procedure.asserter [FHIR-45016](https://jira.hl7.org/browse/FHIR-45016), [FHIR-45083](https://jira.hl7.org/browse/FHIR-45083)
  - Procedure.bodySite and added profile-specific implementation guidance on including body site information [FHIR-45017](https://jira.hl7.org/browse/FHIR-45017).
- Removed AU Core MedicationStatement and added to Future of AU Core that AU Core MedicationStatement is planned for AU Core R2 [FHIR-45052](https://jira.hl7.org/browse/FHIR-45052).
- Updated mapping of AUCDI Procedure Completed Event to be represented by Procedure only [au-fhir-core #147](https://github.com/hl7au/au-fhir-core/issues/147).
- Updated mapping of AUCDI Medication Use Statement to be represented by MedicationStatement only [au-fhir-core #145](https://github.com/hl7au/au-fhir-core/issues/145).
- Removed Must Support from the following elements in AU Core Condition:
  - Condition.asserter [FHIR-45019](https://jira.hl7.org/browse/FHIR-45019), [FHIR-45127](https://jira.hl7.org/browse/FHIR-45127), [FHIR-45083](https://jira.hl7.org/browse/FHIR-45083)
  - Condition.recorder [FHIR-45019](https://jira.hl7.org/browse/FHIR-45019), [FHIR-45082](https://jira.hl7.org/browse/FHIR-45082)
  - Condition.encounter [FHIR-45189](https://jira.hl7.org/browse/FHIR-45189)
- Removed Must Support from the following elements in AU Core AllergyIntolerance:
  - AllergyIntolerance.asserter [FHIR-44699](https://jira.hl7.org/browse/FHIR-44699), [FHIR-45083](https://jira.hl7.org/browse/FHIR-45083)
  - AllergyIntolerance.recorder [FHIR-45082](https://jira.hl7.org/browse/FHIR-45082), [FHIR-45066](https://jira.hl7.org/browse/FHIR-45066)
  - AllergyIntolerance.encounter [FHIR-45123](https://jira.hl7.org/browse/FHIR-45123)
- Removed Must Support flag from Observation.encounter in AU Core Smoking Status [FHIR-45222](https://jira.hl7.org/browse/FHIR-45222).
- Removed Must Support flag from Immunization.encounter in AU Core Immunization [FHIR-45218](https://jira.hl7.org/browse/FHIR-45218).
- Removed Must Support flag from Observation.encounter in the following AU Core vital signs profiles:
  - AU Core Blood Pressure [FHIR-45134](https://jira.hl7.org/browse/FHIR-45134)
  - AU Core Body Height [FHIR-45134](https://jira.hl7.org/browse/FHIR-45134)
  - AU Core Body Temperature [FHIR-45134](https://jira.hl7.org/browse/FHIR-45134)  
  - AU Core Body Weight [FHIR-45134](https://jira.hl7.org/browse/FHIR-45134)
  - AU Core Heart Rate [FHIR-45134](https://jira.hl7.org/browse/FHIR-45134)
  - AU Core Respiration Rate [FHIR-45134](https://jira.hl7.org/browse/FHIR-45134)
  - AU Core Waist Circumference [FHIR-45134](https://jira.hl7.org/browse/FHIR-45134)