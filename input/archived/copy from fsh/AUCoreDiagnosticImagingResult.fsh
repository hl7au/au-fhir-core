Profile: AUCoreDiagnosticImagingResult
Parent: AUBaseDiagnosticImagingResult
Id: au-core-diagnosticresult-imag
Title: "AU Core Diagnostic Imaging Result Observation"
Description: "This profile sets minimum expectations for an Observation resource to record, search, and fetch diagnostic imaging results associated with a patient. It is based on the [AU Base Diagnostic Imaging Result](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-imagingresult.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Observation when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-obs-05
* identifier MS
* status MS
* status from $observationstatus-result-available-1 (required)
* status ^short = "preliminary | final | amended +"
* category MS
* code MS
* subject only Reference(AUCorePatient)
* subject MS
* effective[x] MS
* effective[x] obeys au-core-obs-01
* effective[x] ^short = "Date, and optionally time, the imaging study was performed"
* effective[x] ^condition = "au-core-obs-01"
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson)
* performer MS
* value[x] MS
* value[x] ^condition = "au-core-obs-05"
* dataAbsentReason MS
* dataAbsentReason ^condition = "au-core-obs-05"
* interpretation MS
* note MS
* bodySite 1.. MS
* bodySite from $body-site-1 (extensible)
* bodySite obeys au-core-obs-04
* bodySite ^condition = "au-core-obs-04"
* method MS
* referenceRange MS
* referenceRange.low MS
* referenceRange.high MS
* referenceRange.type MS
* referenceRange.text MS
* hasMember only Reference(AUCoreDiagnosticImagingResult)
* hasMember MS
* hasMember ^short = "Individual observations in a group, study, or panel"
* hasMember.reference 1..
* component MS
* component obeys au-core-obs-06
* component.code MS
* component.value[x] MS
* component.value[x] ^condition = "au-core-obs-06"
* component.dataAbsentReason MS
* component.dataAbsentReason ^condition = "au-core-obs-06"