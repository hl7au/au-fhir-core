Profile: AUCoreCondition
Parent: AUBaseCondition
Id: au-core-condition
Title: "AU Core Condition"
Description: "This profile sets minimum expectations for a Condition resource to record, search, and fetch problems, diagnoses, and health concerns associated with a patient. It is based on the [AU Base Condition](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-condition.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Condition resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-cond-05
* clinicalStatus MS
* clinicalStatus ^condition = "au-core-cond-05"
* verificationStatus MS
* category 1.. MS
* severity MS
* severity from $condition-severity (extensible)
* code 1.. MS
* code from $clinical-condition-1 (extensible)
* bodySite MS
* bodySite from $body-site-1 (extensible)
* bodySite obeys au-core-cond-02
* bodySite ^condition = "au-core-cond-02"
* subject only Reference(AUCorePatient)
* subject MS
* encounter only Reference(AUCoreEncounter)
* encounter MS
* onset[x] only dateTime or Age or Period or Range
* onset[x] MS
* abatement[x] only dateTime or Age or Period or Range
* abatement[x] MS
//* recorder Reference(AUCorePractitioner or AUCorePractitionerRole or AUCorePatient or RelatedPerson)
* recorder MS
//* asserter Reference(AUCorePractitioner or AUCorePractitionerRole or AUCorePatient or RelatedPerson)
* asserter MS
* note MS