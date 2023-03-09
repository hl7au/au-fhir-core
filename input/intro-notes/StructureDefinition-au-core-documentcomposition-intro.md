#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a clinical document for a patient
- Record or update a clinical document for a patient


#### Relationship with national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [Composition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips) if:
  - Composition.type is 60591-5
  - patient is supported as Composition.subject.reference
  - a medications section is supplied with Section.code 10160-0, has at least one section.entry with a supported resource type, and does not include unsupported resource types
  - an allergies section is supplied with Section.code 48765-2, has at least one section.entry with a supported resource type, and does not include unsupported resource types
  - a problems section is supplied with Section.code 11450-4, has at least one section.entry with a supported resource type, and does not include unsupported resource types

No equivalent International Patient Access or US Core profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
None.