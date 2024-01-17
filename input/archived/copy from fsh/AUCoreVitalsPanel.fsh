Profile: AUCoreVitalsPanel
Parent: $vitalspanel
Id: au-core-vitalspanel
Title: "AU Core Vitals Panel"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch vital signs panel observations with standard coding. It is based on the core [FHIR Vital Signs Panel Profile](http://hl7.org/fhir/R4/vitalspanel.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* . ^short = "Vital signs panel"
* . ^definition = "Panel of vital signs measurements observed at a point in time."
* status = #final (exactly)
* code.coding[VitalsPanelCode] 1..1
* code.coding[VitalsPanelCode].system 1..
* code.coding[VitalsPanelCode].code 1..
* subject only Reference(AUCorePatient)
* encounter only Reference(AUCoreEncounter)
* encounter MS
* effective[x] only dateTime
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the observation was performed"
* effective[x] ^definition = "Date, and optionally time, the observation was performed."
* effective[x] ^condition = "au-core-obs-01"
//* performer only Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS