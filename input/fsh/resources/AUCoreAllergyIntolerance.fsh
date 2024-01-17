Profile: AUCoreAllergyIntolerance
Parent: AUBaseAllergyIntolerance
Id: au-core-allergyintolerance
Title: "AU Core AllergyIntolerance"
Description: "This profile sets minimum expectations for an AllergyIntolerance resource to record, search, and fetch allergies/adverse reactions associated with a patient. It is based on the [AU Base Allergy Intolerance](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-allergyintolerance.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the AllergyIntolerance resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* clinicalStatus MS
* verificationStatus MS
* type MS
* category MS
* code 1.. MS
* patient only Reference(au-core-patient)
* patient MS
* encounter only Reference(AUCoreEncounter)
* encounter MS
* onset[x] only dateTime or Age or Period or Range
* onset[x] MS
* recorder only Reference(AUCorePractitioner or AUCorePatient or RelatedPerson or AUCorePractitionerRole)
* recorder MS
* asserter only Reference(AUCorePatient or RelatedPerson or AUCorePractitioner or AUCorePractitionerRole)
* asserter MS
* note MS
* reaction MS
* reaction.substance MS
* reaction.manifestation MS
* reaction.severity MS