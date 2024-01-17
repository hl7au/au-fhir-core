Profile: AUCoreDocumentReference
Parent: DocumentReference
Id: au-core-documentreference
Title: "AU Core DocumentReference"
Description: "This profile sets minimum expectations for a DocumentReference resource to record, search, and fetch patient documents. It is based on the core FHIR [DocumentReference](http://hl7.org/fhir/R4/documentreference.html) resource and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the DocumentReference resource when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* identifier 1.. MS
* status MS
* docStatus MS
* type 1.. MS
* category 1.. MS
* subject 1.. MS
* subject only Reference(AUCorePatient)
* date 1.. MS
* author 1.. MS
//* author only Reference(AUCorePractitionerRole or AUCoreOrganization or Device or AUCorePatient or RelatedPerson)
//* authenticator only Reference(AUCorePractitionerRole or AUCoreOrganization)
* authenticator MS
* custodian only Reference(AUCoreOrganization)
* custodian MS
* description MS
* content MS
* content.attachment MS
* content.format MS
* context MS
* context.encounter only Reference(AUCoreEncounter)
* context.encounter MS