Profile: AUCoreBiologicalSexAssignedAtBirth
Parent: Observation
Id: au-core-sexassignedatbirth
Title: "AU Core Biological Sex Assigned at Birth"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch observations that represent a patient’s biological sex assigned at birth with standard coding. It is based on the core FHIR [Observation](http://hl7.org/fhir/R4/observation.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context. 
 Biological sex assigned at birth refers to what was determined by sex characteristics observed at birth or infancy, including genital and chromosome composition. Sex assigned at birth is captured once for a patient and is not expected to change within their lifetime."
* ^status = #draft
* ^copyright = "Used by permission of HL7 International, all rights reserved Creative Commons License. HL7 Australia© 2022+; Licensed Under Creative Commons No Rights Reserved.\n\nThis resource includes SNOMED Clinical Terms™ (SNOMED CT®) which is used by permission of the International Health Terminology Standards Development Organisation (IHTSDO). All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. “SNOMED” and “SNOMED CT” are registered trademarks of the IHTSDO. The rights to use and implement or implementation of SNOMED CT content are limited to the extent it is necessary to allow for the end use of this material.  No further rights are granted in respect of the International Release and no further use of any SNOMED CT content by any other party is permitted. \n\nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2021, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.\n\nAll copies of this resource must include this copyright statement and all information contained in this statement."
* obeys au-core-obs-02
* . ^short = "Biological sex assigned at birth"
* . ^definition = "Sex assigned at birth refers to what was determined by biological sex characteristics including genital and chromosome composition observed at birth or infancy. Sex assigned at birth is captured once for a person and is not expected to change within their lifetime."
* . ^comment = "A person's sex can change over the course of their lifetime. The biological sex assigned at birth may not match a person’s gender or the sex recorded on their birth certificate. Biological sex assigned at birth should not be used for observations that occurred later in life including later clinical findings that are the result of a specific measurement e.g. gonadal, ductal or phenotypic. See [AIHW Person – sex concept (ID 635233)](https://meteor.aihw.gov.au/content/index.phtml/itemId/635233) and [ABS Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release)."
* . ^alias[0] = "Birth sex"
* . ^alias[+] = "Biological sex"
* . ^alias[+] = "Sex recorded at birth"
* status = #final (exactly)
* status MS
* category 1.. MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* code MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomedSexAtBirth 1..1 and
    loincSexAtBirth 0..1
* code.coding[snomedSexAtBirth] = $sct#1515311000168102
* code.coding[snomedSexAtBirth] ^short = "SNOMED Sex Assigned at Birth"
* code.coding[loincSexAtBirth] = $loinc#76689-9
* code.coding[loincSexAtBirth] ^short = "LOINC Sex Assigned at Birth"
* subject 1.. MS
* subject only Reference(AUCorePatient)
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the observation was performed"
* effective[x] ^definition = "Date, and optionally time, the observation was performed."
* effective[x] ^condition = "au-core-obs-01"
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or CareTeam or RelatedPerson)
* performer MS
* value[x] only CodeableConcept
* value[x] MS
* value[x] from $biological-sex-1 (extensible)
* value[x] ^short = "Sex assigned at birth"
* value[x] ^definition = "The biological sex assigned at birth (male, female, intersex) or an assertion that the observation of biological sex is indeterminate."
* value[x] ^condition = "au-core-obs-02"
* dataAbsentReason MS
* dataAbsentReason ^condition = "au-core-obs-02"