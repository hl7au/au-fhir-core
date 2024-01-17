Profile: AUCorePractitioner
Parent: AUBasePractitioner
Id: au-core-practitioner
Title: "AU Core Practitioner"
Description: "This profile sets minimum expectations for a Practitioner resource to record, search, and fetch basic demographics and other administrative information about an individual practitioner. It is based on the [AU Base Practitioner](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-practitioner.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Practitioner when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* . ^short = "A person with a formal responsibility in the provisioning of services"
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^definition = "An identifier that applies to this person in this role."
* identifier contains hpii 0..1 MS
* identifier[hpii] only AUHPII
* name 1.. MS
* name obeys au-core-prac-01
* name ^condition = "au-core-prac-01"
* telecom MS
* address MS
* qualification MS
* qualification.identifier MS
* qualification.code MS
* qualification.period MS
* qualification.issuer MS
* communication MS