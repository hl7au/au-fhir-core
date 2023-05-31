### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a practitioner referenced by another resource
- Read information about a practitioner referenced by another resource


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Practitioner](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-practitioner.html)
- [Practitioner (IPS)](http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition/Practitioner-uv-ips)
- [US Core Practitioner](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
- Because PractitionerRole supplies a provider’s location, contact information, and reference to the Practitioner, it **SHOULD** be referenced in `CareTeam.member` instead of the a Practitioner resource. If a system only supports Practitioner, the system **SHALL** provide implementation specific guidance how to access a provider’s location and contact information using only the Practitioner resource.