#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medications dispensed for a patient
- Record or update a record of dispense for a patient


#### Relationship with national and international specifications
- Conformant to xxx
- Conformant to xxx

No equivalent IPA MedicationDispense profile.


#### Profile specific implementation guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance 
- MedicationDispense resources can represent a medication using either a code, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
