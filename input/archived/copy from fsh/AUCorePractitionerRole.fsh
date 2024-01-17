Profile: AUCorePractitionerRole
Parent: AUBasePractitionerRole
Id: au-core-practitionerrole
Title: "AU Core PractitionerRole"
Description: "This profile sets minimum expectations for a PractitionerRole resource to record, search, and fetch a practitioner role for a practitioner associated with a patient. It is based on the [AU Base Practitioner Role](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-practitionerrole.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the PractitionerRole resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* . ^short = "A person with formal responsibility in a role providing one or more services"
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^definition = "Business Identifiers that are specific to a role/location."
* identifier contains medicareProvider 0..1 MS
* identifier[medicareProvider] only AUMedicareProviderNumber
* practitioner 1.. MS
* practitioner only Reference(AUCorePractitioner)
* practitioner obeys au-core-prarol-01
* practitioner ^condition = "au-core-prarol-01"
* organization only Reference(AUCoreOrganization)
* organization MS
* code MS
* specialty MS
* location only Reference(AUCoreLocation)
* location MS
* telecom MS