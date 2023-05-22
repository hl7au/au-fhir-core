#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medications administered for a patient (current and historical)
- Record or update a medication administration record for a patient


#### Comparison with other national and international specifications

No equivalent International Patient Access, International Patient Summary, or US Core profile.


#### Profile specific implementation guidance
- See the [Medicine information](general-guidance.html#medicine-information) section for guidance 
- MedicationAdministration resources can represent a medication using either a code with `MedicationAdministration.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource with `MedicationAdministration.medicationReference`.
  - Although both are marked as must support, servers are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
