Profile: AUMedication
Parent: AUBaseMedication
Id: au-core-medication
Title: "AU Core Medication"
Description: "This profile sets minimum expectations for a Medication resource to record, search, and fetch medications associated with a patient. It is based on the [AU Base Medication](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Medication when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context.
In AU Core a Medication resource is used within the context of a referencing resource: MedicationAdministration, MedicationDispense, MedicationRequest, or MedicationStatement resource."
* ^status = #draft
* code 1.. MS
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding[pbs] MS
* code.coding[amt] MS
* manufacturer only Reference(AUCoreOrganization)
* manufacturer MS
* manufacturer ^condition = "au-core-med-01"
* form MS
* amount MS
* ingredient MS
//* ingredient.item[x] only CodeableConcept or Reference(Substance or AUMedication)
* ingredient.item[x] MS
* ingredient.isActive MS
* ingredient.strength MS