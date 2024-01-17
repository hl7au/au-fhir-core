Profile: AUCoreLipidResult
Parent: AUCorePathologyResult
Id: au-core-lipid-result
Title: "AU Core Lipid Result"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch lipids observations associated with a patient and with standard coding and units of measure. It is based on the [AU Core Pathology Result Observation](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-diagnosticresult-path.html) and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-lipid-01
* . ^short = "Individual lipid result in an Australian healthcare context"
* . ^definition = "An individual lipid pathology test result for a patient. This observation is a single test often included in a lipid panel."
* category[specificDiscipline] 1..1
* category[specificDiscipline] ^short = "Chemistry"
* category[specificDiscipline].coding.system 1..
* category[specificDiscipline].coding.system = "http://terminology.hl7.org/CodeSystem/v2-0074" (exactly)
* category[specificDiscipline].coding.code 1..
* category[specificDiscipline].coding.code = #CH (exactly)
* code from LipidResultReporting (required)
* code ^short = "Individual Lipid Test"
* code ^comment = "The concepts supported are aligned to the RCPA Standardised Pathology Informatics in Australia (SPIA) reporting guidelines."
* valueQuantity ^condition = "au-core-lipid-01"
* valueQuantity.value 1..
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code = #mmol/L (exactly)