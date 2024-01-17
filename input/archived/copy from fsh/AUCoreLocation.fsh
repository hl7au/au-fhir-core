Profile: AUCoreLocation
Parent: AUBaseLocation
Id: au-core-location
Title: "AU Core Location"
Description: "This profile sets minimum expectations for a Location resource to record, search, and fetch information about a location. It is based on the [AU Base Location](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-location.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Location when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-loc-01
* . ^short = "A location in an Australian healthcare context"
* identifier MS
* identifier ^short = "Unique code or number identifying the location to its users"
* identifier ^definition = "Unique code or number identifying the location to its users."
* identifier ^condition = "au-core-loc-01"
* name MS
* description MS
* mode MS
* type MS
* type ^condition = "au-core-loc-01"
* address MS
* address ^condition = "au-core-loc-01"
* physicalType MS
* managingOrganization only Reference(AUCoreOrganization)
* managingOrganization MS