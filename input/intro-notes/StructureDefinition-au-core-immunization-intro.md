### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's immunisations
- Record or update an immunisation record for a patient

### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Immunization](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-immunization)
- and **MAY** be conformant to
  - [Immunization (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips) if patient is supported as Immunization.patient.reference
  - [US Core Immunization](http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance) noting that US Core extensibly binds to CVX which is not an AU vaccine terminology

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- Use the status code: `not-done` to represent that an immunization was *not* given.
