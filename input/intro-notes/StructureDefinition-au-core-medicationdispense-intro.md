See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query the supply (dispense) of medications for a patient (current and historical)
- Record or update the supply (dispense) of medications for a patient


### Profile Specific Implementation Guidance
- See the [Medicine Information](medicine-information.html) page for guidance on how medicinal product identification can be structured in FHIR conformant to AU Core.
- MedicationDispense resources can represent a medication using either a code as `MedicationDispense.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource using `MedicationDispense.medicationReference`.
  - Responders are not required to support both a code and a reference, but **SHALL** support *at least one* of these methods
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
  - A requester **SHALL** support all methods
- When populating `MedicationDispense.medicationCodeableConcept` responders **SHALL** correctly populate `MedicationDispense.medicationCodeableConcept.coding` with either a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, if a coded value is known and **MAY** populate with a code from another code system.
  - Responders **MAY** populate with only text if no coded value is known.
- The MedicationDispense resource **SHALL NOT** be used to represent that a patient is not currently taking any medications; implementers **SHOULD** use the MedicationStatement resource following the [profile specific implementation guidance](StructureDefinition-au-core-medicationstatement.html#profile-specific-implementation-guidance) in [AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html). 