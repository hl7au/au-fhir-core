Profile: AUCoreBloodPressure
Parent: $bp
Id: au-core-bloodpressure
Title: "AU Core Blood Pressure"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch blood pressure observations with standard coding and units of measure. It is based on the [FHIR Blood Pressure Profile](http://hl7.org/fhir/R4/bp.html) and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 Australia© 2022+; Licensed Under Creative Commons No Rights Reserved.\n\nThis resource includes SNOMED Clinical Terms™ (SNOMED CT®) which is used by permission of the International Health Terminology Standards Development Organisation (IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of the IHTSDO. The rights to use and implement or implementation of SNOMED CT content are limited to the extent it is necessary to allow for the end use of this material.  No further rights are granted in respect of the International Release and no further use of any SNOMED CT content by any other party is permitted. \n\nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.\n\nAll copies of this resource must include this copyright statement and all information contained in this statement."
* . ^short = "Blood pressure"
* . ^definition = "Measurement of a patient's blood pressure at a point in time."
* . ^comment = "Blood pressure (BP) observation using a LOINC code, a SNOMED CT code and UCUM unit of measure. It has no value in Observation.valueQuantity but contains two components, one for systolic BP and the other for diastolic BP."
* status = #final (exactly)
* code.coding contains snomedBPCode 1..1
* code.coding[snomedBPCode] ^short = "SNOMED CT Blood Pressure"
* code.coding[snomedBPCode].system 1..
* code.coding[snomedBPCode].system = "http://snomed.info/sct" (exactly)
* code.coding[snomedBPCode].code 1..
* code.coding[snomedBPCode].code = #75367002 (exactly)
* subject only Reference(AUCorePatient)
* encounter only Reference(AUCoreEncounter)
* encounter MS
* effective[x] only dateTime
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the observation was performed"
* effective[x] ^definition = "Date, and optionally time, the observation was performed."
* effective[x] ^condition = "au-core-obs-01"
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS
* dataAbsentReason MS
* bodySite from $body-site-1 (extensible)
* bodySite obeys au-core-obs-04
* bodySite ^condition = "au-core-obs-04"
* component[SystolicBP] ^short = "Systolic Blood Pressure"
* component[SystolicBP].code.coding contains snomedSBP 1..1
* component[SystolicBP].code.coding[snomedSBP] ^short = "SNOMED CT Systolic Blood Pressure"
* component[SystolicBP].code.coding[snomedSBP].system 1..
* component[SystolicBP].code.coding[snomedSBP].system = "http://snomed.info/sct" (exactly)
* component[SystolicBP].code.coding[snomedSBP].code 1..
* component[SystolicBP].code.coding[snomedSBP].code = #271649006 (exactly)
* component[SystolicBP].dataAbsentReason MS
* component[DiastolicBP] ^short = "Diastolic Blood Pressure"
* component[DiastolicBP].code.coding contains snomedDBP 1..1
* component[DiastolicBP].code.coding[snomedDBP] ^short = "SNOMED CT Diastolic Blood Pressure"
* component[DiastolicBP].code.coding[snomedDBP].system 1..
* component[DiastolicBP].code.coding[snomedDBP].system = "http://snomed.info/sct" (exactly)
* component[DiastolicBP].code.coding[snomedDBP].code 1..
* component[DiastolicBP].code.coding[snomedDBP].code = #271650006 (exactly)
* component[DiastolicBP].dataAbsentReason MS