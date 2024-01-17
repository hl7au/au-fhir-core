Profile: AUCoreDiagnosticReport
Parent: AUBaseDiagnosticReport
Id: au-core-diagnosticreport
Title: "AU Core DiagnosticReport"
Description: "This profile sets minimum expectations for a DiagnosticReport resource to record, search, and fetch diagnostic reports associated with a patient. It is based on the [AU Base Diagnostic Report](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-diagnosticreport.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the DiagnosticReport when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-dir-01
* identifier 1.. MS
* basedOn only Reference(AUCoreServiceRequest)
* basedOn MS
* basedOn ^short = "Diagnostic investigation order"
* status MS
* status from $diagnosticreportstatus-report-available-1 (required)
* status ^short = "partial | preliminary | final +"
* category 1.. MS
* category from DiagnosticServiceSectionCodes (extensible)
* code MS
* code ^short = "Diagnostic examination name / study name / group name"
* subject 1.. MS
* subject only Reference(AUCorePatient)
* effective[x] 1.. MS
* effective[x] obeys au-core-dir-04
* effective[x] ^condition = "au-core-dir-04"
* issued 1.. MS
* issued ^short = "Diagnostic report date time"
* performer 1.. MS
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization)
//* result Reference(AUCoreDiagnosticResult or AUCoreDiagnosticImagingResult or AUCorePathologyResult)
* result MS
* result ^condition = "au-core-dir-01"
* result.reference 1..
* media MS
* media.link MS
* conclusion MS
* conclusionCode MS
* presentedForm MS
* presentedForm ^condition = "au-core-dir-01"