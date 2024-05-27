### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medications associated with a patient referenced by another resource
- Record or update a medication associated with a patient referenced by another resource
- Read medications associated with a patient referenced by another resource


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [IPA-Medication](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medication)
- and **MAY** be conformant to
  - [Medication (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips) if [Data Type Profile: Quantity (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Quantity-uv-ips) constraints are met
  - [US Core Medication](http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication) noting that US Core extensibly binds to RxNorm which is not an AU medicines terminology

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.

### Profile specific implementation guidance
- See the [Medicine Information](medicine-information.html) page for guidance on constructing a resource and the use of medicines terminology

