See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medication orders or prescriptions for a patient (current and historical)
- Record or update medication orders or prescriptions for a patient


### Profile specific implementation guidance
- See the [Medicine Information](medicine-information.html) page for guidance
- When recording "self-prescribed" medication, `MedicationRequest.requester` references the Patient or RelatedPerson as the prescriber.
- MedicationRequest resources can represent a medication using either a code with `MedicationRequest.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource with `MedicationRequest.medicationReference`.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
  - If an external reference to a Medication resource is used, the responder **SHALL** support the `_include` parameter for searching this element
  - The requester **SHALL** support all method
- The MedicationRequest resource can represent the clinical indication as a code with `MedicationRequest.reasonCode`, or a reference with `MedicationRequest.reasonReference` to a Condition or other resource.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements  
