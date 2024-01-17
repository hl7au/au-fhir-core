Profile: AUCoreWaistCircumference
Parent: $vitalsigns
Id: au-core-waistcircum
Title: "AU Core Waist Circumference"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch waist circumference observations with standard coding and units of measure. It is based on the [FHIR Vital Signs Profile](http://hl7.org/fhir/R4/vitalsigns.html) and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* ^copyright = "HL7 Australia© 2018+; Licensed Under Creative Commons No Rights Reserved.\n\nThis resource includes SNOMED Clinical Terms™ (SNOMED CT®) which is used by permission of the International Health Terminology Standards Development Organisation (IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of the IHTSDO. The rights to use and implement or implementation of SNOMED CT content are limited to the extent it is necessary to allow for the end use of this material.  No further rights are granted in respect of the International Release and no further use of any SNOMED CT content by any other party is permitted. \n\nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.\n\nAll copies of this resource must include this copyright statement and all information contained in this statement."
* obeys au-core-obs-02
* . ^short = "Waist circumference"
* . ^definition = "Measurement of a patient's waist circumference at a point in time."
* . ^comment = "Waist circumference observation using a LOINC code, a SNOMED CT code and a metric UCUM unit of measure."
* status = #final (exactly)
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains
    loincWaistCircumCode	 1..1 and
    snomedWaistCircumCode	 1..1
* code.coding[loincWaistCircumCode] ^short = "LOINC Waist Circumference"
* code.coding[loincWaistCircumCode].system 1..
* code.coding[loincWaistCircumCode].system = "http://loinc.org" (exactly)
* code.coding[loincWaistCircumCode].code 1..
* code.coding[loincWaistCircumCode].code = #8280-0 (exactly)
* code.coding[snomedWaistCircumCode] ^short = "SNOMED CT Waist Circumference"
* code.coding[snomedWaistCircumCode].system 1..
* code.coding[snomedWaistCircumCode].system = "http://snomed.info/sct" (exactly)
* code.coding[snomedWaistCircumCode].code 1..
* code.coding[snomedWaistCircumCode].code = #276361009 (exactly)
* subject only Reference(AUCorePatient)
* encounter only Reference(AUCoreEncounter)
* encounter MS
* effective[x] only dateTime
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the observation was performed"
* effective[x] ^definition = "Date, and optionally time, the observation was performed."
* effective[x] ^condition = "au-core-obs-01"
* performer only Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS
* valueQuantity ^short = "Waist circumference"
* valueQuantity ^condition = "au-core-obs-02"
* valueQuantity.value 1..1
* valueQuantity.value only decimal
* valueQuantity.unit 1..1
* valueQuantity.unit only string
* valueQuantity.system 1..1
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1
* valueQuantity.code only code
* valueQuantity.code from $metric-body-length-units-1 (required)
* valueQuantity.code ^short = "Coded responses from the common UCUM units for vital signs value set."
* valueQuantity.code ^definition = "Coded responses from the common UCUM units for vital signs value set."
* dataAbsentReason MS
* dataAbsentReason ^condition = "au-core-obs-02"
* bodySite from $body-site-1 (preferred)
* bodySite obeys au-core-obs-04
* bodySite ^condition = "au-core-obs-04"