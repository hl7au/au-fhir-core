### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medication orders or prescriptions for a patient (current and historical)
- Record or update medication orders or prescriptions for a patient


### Comparison with other national and international IGs

A resource conforming to this profile:
- **MAY** be conformant to:
  - [IPA-MedicationRequest](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest) if requester is supplied as a reference to a Practitioner, PractitionerRole, Patient resource
  - [Medication Request (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips) if patient is supported as MedicationRequest.subject.reference
  - [US Core MedicationRequest](http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest) if core FHIR MedicationRequest Category codes are supplied in MedicationRequest.category

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- See the [Medicine Information](medicine-information.html) page for guidance
- When recording "self-prescribed" medication, `MedicationRequest.requester` references the Patient or RelatedPerson as the prescriber.
- MedicationRequest resources can represent a medication using either a code with `MedicationRequest.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource with `MedicationRequest.medicationReference`.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
- The MedicationRequest resource can represent a reason as a code with `MedicationRequest.reasonCode`, or a reference with `MedicationRequest.reasonReference` to a Condition or other resource.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements  
