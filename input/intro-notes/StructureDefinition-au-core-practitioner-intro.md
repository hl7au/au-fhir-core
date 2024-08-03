### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a practitioner referenced by another resource
- Read information about a practitioner referenced by another resource


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [IPA-Practitioner](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-practitioner.html)
- [Practitioner (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Practitioner-uv-ips.html)
- and **MAY** be conformant to [US Core Practitioner](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner) if Practitioner.identifier is supplied

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- Even though AU Core Profiles allow both PractitionerRole and Practitioner to be referenced, because PractitionerRole supplies a provider’s location, contact information, and reference to the Practitioner, it **SHOULD** be referenced instead of the Practitioner resource. 
- If a system only supports Practitioner, the system **SHALL** provide implementation specific guidance how to access a provider’s location and contact information using only the Practitioner resource.
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.

