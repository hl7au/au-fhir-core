Profile: AUCoreMedicationStatement
Parent: AUBaseMedicationStatement
Id: au-core-medicationstatement
Title: "AU Core MedicationStatement"
Description: "This profile sets minimum expectations for a MedicationStatement resource to record, search, and fetch summary statements of medication use associated with a patient. It is based on the [AU Base Medication Statement](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medicationstatement.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the MedicationStatement when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* basedOn only Reference(AUCoreMedicationRequest or CarePlan or AUCoreServiceRequest)
* basedOn MS
* status MS
* statusReason MS
* category MS
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
* context only Reference(AUCoreEncounter)
* context MS
* effective[x] MS
* dateAsserted MS
//* informationSource Reference(AUCorePatient or AUCorePractitioner or AUCorePractitionerRole or RelatedPerson)
* informationSource MS
* reasonCode MS
* note MS
* dosage MS
* dosage obeys au-core-mst-03
* dosage ^condition = "au-core-mst-03"