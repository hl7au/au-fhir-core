Profile: AUCoreEncounter
Parent: AUBaseEncounter
Id: au-core-encounter
Title: "AU Core Encounter"
Description: "This profile sets minimum expectations for an Encounter resource to record, search, and fetch basic encounter information for a patient. It is based on the [AU Base Encounter](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-encounter.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Encounter when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* extension[encounterDescription] MS
* identifier MS
* status MS
* class MS
* type MS
* type from $encounter-type-1 (preferred)
* serviceType MS
* serviceType from $service-type-1 (preferred)
* subject 1.. MS
* subject only Reference(AUCorePatient)
* participant MS
* participant.type MS
* participant.individual only Reference(AUCorePractitioner or AUCorePractitionerRole or RelatedPerson)
* participant.individual MS
* period 1.. MS
* reasonCode MS
* reasonReference only Reference(AUCoreCondition or AUCoreObservation or AUCoreProcedure)
* reasonReference MS
* hospitalization MS
* hospitalization.dischargeDisposition MS
* location MS
* location.location only Reference(AUCoreLocation)
* location.location MS
* serviceProvider only Reference(AUCoreOrganization)
* serviceProvider MS