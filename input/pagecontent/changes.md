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
  - Procedure.bodySite [FHIR-45017](https://jira.hl7.org/browse/FHIR-45017). Additionally, we've added profile-specific implementation guidance on including body site information.
