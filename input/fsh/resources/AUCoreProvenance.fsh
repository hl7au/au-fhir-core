Profile: AUCoreProvenance
Parent: Provenance
Id: au-core-provenance
Title: "AU Core Provenance"
Description: "This profile sets minimum expectations for an Provenance resource to record, search, and fetch basic provenance information for a patient. It is based on the core FHIR [Provenance](http://hl7.org/fhir/R4/provenance.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Provenance when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^version = "1.0.0"
* ^status = #draft
* target MS
* occurred[x] MS
* recorded MS
* activity MS
* agent MS
//* agent.who Reference(AUCorePractitioner or AUCorePractitionerRole or RelatedPerson or AUCorePatient or Device or AUCoreOrganization)
* agent.who MS
//* agent.onBehalfOf Reference(AUCorePractitioner or AUCorePractitionerRole or RelatedPerson or AUCorePatient or Device or AUCoreOrganization)
* agent.onBehalfOf MS