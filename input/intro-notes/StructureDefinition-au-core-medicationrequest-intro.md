See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medication orders or prescriptions for a patient (current and historical)
- Record or update medication orders or prescriptions for a patient


### Profile specific implementation guidance
- See the [Medicine Information](medicine-information.html) page for guidance on how medicinal product identification can be structured in FHIR conformant to AU Core.
- When recording "self-prescribed" medication, `MedicationRequest.requester` references the Patient or RelatedPerson as the prescriber.
- MedicationRequest resources can represent a medication using either a code as `MedicationRequest.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource using `MedicationRequest.medicationReference`.
  - Responders are not required to support both a code and a reference, but **SHALL** support *at least one* of these methods
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
  - If an external reference to a Medication resource is used, the responder **SHALL** support the `_include` parameter for searching this element
  - A requester **SHALL** support all methods
- When populating `MedicationRequest.medicationCodeableConcept` responders **SHALL** correctly populate `MedicationRequest.medicationCodeableConcept.coding` with either a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, if a coded value is known and **MAY** populate with a code from another code system.
  - Responders **MAY** populate with only text if no coded value is known.
- The MedicationRequest resource can represent the clinical indication as a code with `MedicationRequest.reasonCode`, or a reference with `MedicationRequest.reasonReference` to a Condition or other resource.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements  
