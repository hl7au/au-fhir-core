Profile: AUCorePathologyResult
Parent: AUBasePathologyResult
Id: au-core-diagnosticresult-path
Title: "AU Core Pathology Result Observation"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch pathology results associated with a patient. It is based on the [AU Base Pathology Result](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-pathologyresult.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-obs-05
* identifier MS
* status MS
* status from $observationstatus-result-available-1 (required)
* status ^short = "preliminary | final | amended +"
* category MS
* code MS
* code from $spia-pathology-reporting-1 (extensible)
* subject only Reference(AUCorePatient)
* subject MS
* effective[x] MS
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Time of specimen collection"
* effective[x] ^condition = "au-core-obs-01"
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS
* value[x] MS
* value[x] ^condition = "au-core-obs-05"
* dataAbsentReason MS
* dataAbsentReason ^condition = "au-core-obs-05"
* interpretation MS
* note MS
* method MS
* specimen MS
* specimen.reference 1..
* referenceRange MS
* referenceRange.low MS
* referenceRange.high MS
* referenceRange.type MS
* referenceRange.text MS
* hasMember only Reference(AUCorePathologyResult)
* hasMember MS
* hasMember ^short = "Individual observations in a group, study, or panel"
* hasMember.reference 1..
* component MS
* component obeys au-core-obs-06
* component.code MS
* component.code from $spia-pathology-reporting-1 (extensible)
* component.value[x] MS
* component.value[x] ^condition = "au-core-obs-06"
* component.dataAbsentReason MS
* component.dataAbsentReason ^condition = "au-core-obs-06"