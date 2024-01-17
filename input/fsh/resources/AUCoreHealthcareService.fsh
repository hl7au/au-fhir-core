Profile: AUCoreHealthcareService
Parent: AUBaseHealthcareService
Id: au-core-healthcareservice
Title: "AU Core HealthcareService"
Description: "This profile sets minimum expectations for a HealthcareService resource to record, search, and fetch information about a healthcare service. It is based on the [AU Base Healthcare Service](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-healthcareservice.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the HealthcareService when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* . ^short = "A healthcare service in an Australian healthcare context"
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^short = "External identifiers for this item"
* identifier contains hpio 0..1 MS
* identifier[hpio] only AUHPIO
* active = true (exactly)
* providedBy only Reference(AUCoreOrganization)
* providedBy MS
* category MS
* type MS
* specialty MS
* location only Reference(AUCoreLocation)
* location MS
* name 1.. MS
* serviceProvisionCode MS
//* serviceProvisionCode from ServiceProvisionConditionsAustralianConcepts (extensible)