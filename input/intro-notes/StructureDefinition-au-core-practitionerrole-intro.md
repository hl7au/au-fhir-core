#### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a practitioner in a role referenced by another resource
- Read information about a practitioner in a role referenced by another resource


#### Relationship with national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-PractitionerRole](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-practitionerrole.html)
- [PractitionerRole (IPS)](http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition/PractitionerRole-uv-ips)
- and **MAY** be conformant to [US Core PractitionerRole](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole) noting that AU Core does not enforce the US Core constraint **pd-1**: SHALL have contact information or a reference to an Endpoint

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
None.