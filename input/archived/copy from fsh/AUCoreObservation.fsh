Profile: AUCoreObservation
Parent: Observation
Id: au-core-observation
Title: "AU Core Observation"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch observations that represent simple measurements and assertions about a patient. It is based on the core FHIR [Observation](http://hl7.org/fhir/R4/observation.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-obs-05
* status MS
* category 1.. MS
* code MS
* subject 1.. MS
* subject only Reference(AUCorePatient)
* encounter only Reference(AUCoreEncounter)
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the observation was performed"
* effective[x] ^definition = "Date, and optionally time, the observation was performed."
* effective[x] ^condition = "au-core-obs-01"
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS
* value[x] MS
* value[x] ^condition = "au-core-obs-05"
* dataAbsentReason MS
* dataAbsentReason ^condition = "au-core-obs-05"
* note MS