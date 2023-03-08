#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medications administered for a patient (current and historical)
- Record or update a medication administration record for a patient


#### Relationship with national and international specifications

No equivalent International Patient Access, International Patient Summary, or US Core profile.


#### Profile specific implementation guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance 
- MedicationAdministration resources can represent a medication using either a code, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
