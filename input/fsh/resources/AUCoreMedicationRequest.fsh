Profile: AUCoreMedicationRequest
Parent: AUBaseMedicationRequest
Id: au-core-medicationrequest
Title: "AU Core MedicationRequest"
Description: "This profile sets minimum expectations for a MedicationRequest resource to record, search, and fetch medication orders and requests (i.e. prescriptions) associated with a patient. It is based on the [AU Base Medication Request](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicationrequest.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the MedicationRequest when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* identifier MS
* status MS
* intent MS
* category MS
* category from $medicationrequest-category_1 (extensible)
* medication[x] MS
* medication[x] ^slicing.discriminator.type = #type
* medication[x] ^slicing.discriminator.path = "$this"
* medication[x] ^slicing.rules = #closed
* medicationCodeableConcept only CodeableConcept
* medicationCodeableConcept.coding ^slicing.discriminator.type = #value
* medicationCodeableConcept.coding ^slicing.discriminator.path = "system"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding[pbs] MS
* medicationCodeableConcept.coding[amt] MS
* medicationReference only Reference(AUMedication)
* subject only Reference(AUCorePatient)
* subject MS
* encounter only Reference(AUCoreEncounter)
* encounter MS
* authoredOn 1.. MS
* authoredOn obeys au-core-medreq-03
* authoredOn ^condition = "au-core-medreq-03"
* requester 1.. MS
//* requester Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* reasonCode MS
* note MS
* dosageInstruction MS
* dispenseRequest MS
* dispenseRequest.validityPeriod MS
* dispenseRequest.numberOfRepeatsAllowed MS
* dispenseRequest.quantity MS
* substitution MS
* substitution.allowed[x] MS