#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medication orders or prescriptions for a patient (current and historical)
- Record or update medication orders or prescriptions for a patient


#### Relationship with national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-MedicationRequest](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest)
- and **MAY** be conformant to:
  -  [Medication Request (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips) if patient is supported as MedicationRequest.subject.reference
  - [US Core MedicationRequest](http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest) if core FHIR MedicationRequest Category codes are supplied in MedicationRequest.category

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance 
- MedicationRequest resources can represent a medication using either a code, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource