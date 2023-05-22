#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medications dispensed for a patient
- Record or update a record of dispense for a patient


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [US Core MedicationDispense](http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationdispense)

No equivalent International Patient Access or International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
- See the [Medicine information](general-guidance.html#medicine-information) section for guidance 
- MedicationDispense resources can represent a medication using either a code with `MedicationDispense.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource with `MedicationDispense.medicationReference`.
  - Although both are marked as must support, servers are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
