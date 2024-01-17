Profile: AUCoreImmunization
Parent: AUBaseImmunisation
Id: au-core-immunization
Title: "AU Core Immunization"
Description: "This profile sets minimum expectations for an Immunization resource to record, search, and fetch immunisation history associated with a patient. It is based on the [AU Base Immunisation](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-immunization.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Immunization resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains VaccineSerialNumber named vaccine-serial-number 0..1 MS
* identifier MS
* status MS
* statusReason MS
* vaccineCode MS
* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "system"
* vaccineCode.coding ^slicing.ordered = false
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding[amtVaccineCode] MS
* vaccineCode.coding[airVaccineCode] MS
* patient only Reference(AUCorePatient)
* patient MS
* encounter only Reference(AUCoreEncounter)
* encounter MS
* occurrence[x] MS
* performer MS
* performer.function MS
//* performer.actor Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization)
* performer.actor MS
* note MS
* reasonCode MS
* protocolApplied MS
* protocolApplied.series MS
* protocolApplied.targetDisease MS
* protocolApplied.doseNumber[x] MS