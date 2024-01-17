Profile: AUCoreOrganization
Parent: AUBaseOrganisation
Id: au-core-organization
Title: "AU Core Organization"
Description: "This profile sets minimum expectations for a Organization resource to record, search, and fetch information about an organisation. It is based on the [AU Base Organization](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-organization.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Organization when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* identifier MS
* identifier obeys au-core-org-01
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.ordered = false
* identifier ^slicing.rules = #open
* identifier ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems."
* identifier ^condition = "au-core-org-01"
* identifier contains
    hpio 0..1 MS and
    abn 0..* MS
* identifier[hpio] only AUHPIO
* identifier[abn] only AUAustralianBusinessNumber
* type MS
* name 1.. MS
* alias MS
* telecom MS
* address MS
* address ^definition = "An address for the organization."