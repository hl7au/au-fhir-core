Profile: AUCoreServiceRequest
Parent: ServiceRequest
Id: au-core-servicerequest
Title: "AU Core ServiceRequest"
Description: "This profile sets minimum expectations for a ServiceRequest resource to record, search, and fetch information about requests, plans, or orders for a service for a patient. It is based on the core [ServiceRequest]( http://hl7.org/fhir/R4/servicerequest.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the ServiceRequest when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* identifier MS
//* basedOn only Reference(AUCoreMedicationRequest or AUCoreServiceRequest)
* basedOn MS
* status MS
* intent MS
* category MS
* category from $service-type-1 (example)
* code 1.. MS
* code from $procedure-1 (preferred)
* subject 1.. MS
* subject only Reference(AUCorePatient)
* encounter only Reference(AUCoreEncounter)
* encounter MS
* authoredOn MS
* requester 1.. MS
//* requester Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or AUCorePatient or RelatedPerson or Device)
* performerType MS
* performerType from $practitioner-role-1 (preferred)
//* performer Reference(AUCorePractitioner or AUCorePractitionerRole or AUCoreOrganization or CareTeam or AUCoreHealthcareService or AUCorePatient or RelatedPerson)
* performer MS
* reasonCode MS
* reasonCode from $reason-for-request-1 (preferred)
//* reasonReference Reference(AUCoreCondition or AUCoreObservation or AUCoreDiagnosticReport or AUCoreDocumentReference)
* reasonReference MS
* supportingInfo MS