Profile: AUCoreProcedure
Parent: AUBaseProcedure
Id: au-core-procedure
Title: "AU Core Procedure"
Description: "This profile sets minimum expectations for a Procedure resource to record, search, and fetch procedures associated with a patient. It is based on the [AU Base Procedure](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-procedure.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Procedure resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* status MS
* statusReason MS
* category MS
* code 1.. MS
* code from $procedure-1 (extensible)
* subject only Reference(AUCorePatient)
* subject MS
* encounter only Reference(AUCoreEncounter)
* encounter MS
* performed[x] 1.. MS
* recorder only Reference(AUCorePractitioner or AUCorePractitionerRole or AUCorePatient or RelatedPerson)
* recorder MS
* asserter only Reference(AUCorePractitioner or AUCorePractitionerRole or AUCorePatient or RelatedPerson)
* asserter MS
* reasonCode MS
* reasonReference only Reference(AUCoreCondition or AUCoreObservation or AUCoreProcedure or AUCoreDocumentReference)
* reasonReference MS
* bodySite MS
* bodySite from $body-site-1 (extensible)
* bodySite obeys au-core-pro-04
* bodySite ^condition = "au-core-pro-04"
* note MS