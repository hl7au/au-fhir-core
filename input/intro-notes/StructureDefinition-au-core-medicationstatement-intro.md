### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's medication usage (current and historical)
- Record or update a record of a medication the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-MedicationStatement](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationstatement)
- and **MAY** be conformant to [Medication Statement (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips) if MedicationStatement.effective[x] is included and patient is supported as MedicationStatement.subject.reference

No equivalent US Core profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- See the [Medicine information](general-guidance.html#medicine-information) section for guidance 
- MedicationStatement resources can represent a medication using either a code with `MedicationStatement.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource with `MedicationStatement.medicationReference`.
  - Although both are marked as must support, servers are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
- MedicationStatement resources may record medication use that is derived from other records such as a MedicationRequest or MedicationDispense. In this case source system identifiers **SHOULD** be included as [AU Local Prescription Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localprescriptionidentifier.html), [AU ETP Prescription Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-etpprescriptionidentifier.html), or [AU Local Dispense Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localdispenseidentifier.html) to support deduplication across medication resources.
  - See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.