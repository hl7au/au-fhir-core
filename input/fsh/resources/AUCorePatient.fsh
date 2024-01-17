Profile: AUCorePatient
Parent: AUBasePatient
Id: au-core-patient
Title: "AU Core Patient"
Description: "This profile sets minimum expectations for a Patient resource to record, search, and fetch basic demographics and other administrative information about an individual patient. It is based on the [AU Base Patient](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) profile and identifies the *additional* mandatory core elements, extensions, vocabularies and value sets that **SHALL** be present in the Patient when conforming to this profile. It provides the floor for standards development for specific uses cases in an Australian context."
* ^status = #draft
* obeys au-core-pat-01 and au-core-pat-02
* . ^short = "A patient in the context of electronic exchange of health information"
* extension[birthPlace] MS
* extension[indigenousStatus] MS
* extension[interpreterRequired] MS
* identifier 1.. MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^condition = "au-core-pat-01"
* identifier contains
    ihi 0..1 MS and
    medicare 0..1 MS and
    dva 0..1 MS
* identifier[ihi] only AUIHI
* identifier[medicare] only AUMedicareCardNumber
* identifier[dva] only AUDVANumber
* name 1.. MS
* name obeys au-core-pat-04
* name ^comment = "A patient may have multiple names with different uses or applicable periods. At least one name SHOULD be the name the patient is considered to have for administrative and record keeping purposes - family name is used to enable matching against patient records."
* name ^condition = "inv-au-core-pat-02"
* telecom MS
* gender 1.. MS
* birthDate 1.. MS
* birthDate.extension[accuracyIndicator] MS
* birthDate.extension[birthTime] MS
* address MS
* communication MS
* communication.language MS
* communication.preferred MS