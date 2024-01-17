Profile: AUCoreSmokingStatus
Parent: Observation
Id: au-core-smokingstatus
Title: "AU Core Smoking Status"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch observations that represent a patient’s smoking status, i.e. current behaviour for all types of tobacco smoking, with standard coding. It is based on the core FHIR [Observation](http://hl7.org/fhir/R4/observation.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 Australia© 2022+; Licensed Under Creative Commons No Rights Reserved.\n\nThis resource includes SNOMED Clinical Terms™ (SNOMED CT®) which is used by permission of the International Health Terminology Standards Development Organisation (IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of the IHTSDO. The rights to use and implement or implementation of SNOMED CT content are limited to the extent it is necessary to allow for the end use of this material.  No further rights are granted in respect of the International Release and no further use of any SNOMED CT content by any other party is permitted. \n\nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.\n\nAll copies of this resource must include this copyright statement and all information contained in this statement."
* obeys au-core-obs-02
* . ^short = "Smoking status"
* . ^definition = "An observation of smoking status, i.e. current behaviour for all types of tobacco smoking, at a point in time."
* status = #final (exactly)
* status MS
* category MS
* category ^slicing.discriminator[0].type = #pattern
* category ^slicing.discriminator[=].path = "$this"
* category ^slicing.rules = #open
* category contains socialHistory 1..1
* category[socialHistory] = $observation-category#social-history
* code = $sct#266918002
* code MS
//* code.coding ^slicing.discriminator[0].type = #value
//* code.coding ^slicing.discriminator[=].path = "code"
//* code.coding ^slicing.discriminator[+].type = #value
//* code.coding ^slicing.discriminator[=].path = "system"
//* code.coding ^slicing.rules = #open
//* code.coding contains loincSmokingStatus 0..1
//* code.coding[loincSmokingStatus] ^short = "LOINC Smoking Status"
//* code.coding[loincSmokingStatus].system 1..
//* code.coding[loincSmokingStatus].system = "http://loinc.org" (exactly)
//* code.coding[loincSmokingStatus].code 1..
//* code.coding[loincSmokingStatus].code = #72166-2 (exactly)
* subject 1.. MS
* subject only Reference(AUCorePatient)
* encounter only Reference(AUCoreEncounter)
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the observation was performed"
* effective[x] ^definition = "Date, and optionally time, the observation was performed."
* effective[x] ^condition = "au-core-obs-01"
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS
* value[x] only CodeableConcept
* value[x] MS
* value[x] from $smoking-status-1 (extensible)
* value[x] ^condition = "au-core-obs-02"
* dataAbsentReason MS
* dataAbsentReason ^condition = "au-core-obs-02"