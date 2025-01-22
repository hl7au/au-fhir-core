See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's medication usage (current and historical)
- Record or update stated medication usage for a patient


### Profile specific implementation guidance
  - See the [Medicine Information](medicine-information.html) page for guidance on how medicinal product identification can be structured in FHIR conformant to AU Core.
  - MedicationStatement resources can represent a medication using either a code with `MedicationStatement.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource with `MedicationStatement.medicationReference`.
    - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
    - A requester **SHALL** support both elements
    - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
    - If an external reference to a Medication resource is used, the responder **SHALL** support the `_include` parameter for searching this element
    - The requester **SHALL** support all methods
  - MedicationStatement resources may record medication use that is derived from other records such as a MedicationRequest or MedicationDispense. In this case source system identifiers **SHOULD** be included as [AU Local Prescription Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localprescriptionidentifier.html), [AU ETP Prescription Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-etpprescriptionidentifier.html), or [AU Local Dispense Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localdispenseidentifier.html) to support deduplication across medication resources.
- The MedicationRequest resource can represent the clinical indication as a code with `MedicationStatement.reasonCode`, or a reference with `MedicationStatement.reasonReference` to a Condition or other resource.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements 