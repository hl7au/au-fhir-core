**Example usage scenarios**

The following are example usage scenarios for this profile:

- Query specimens associated with a patient referenced by another resource
- Record or update a specimen associated with a patient referenced by another resource
- Read specimens associated with a patient referenced by another resource


#### Relationship with national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [Specimen (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips) if patient is supported as Specimen.subject.reference
- **MAY** be conformant to [US Core Specimen](http://hl7.org/fhir/us/core/StructureDefinition/us-core-specimen) if Specimen.type is included

No equivalent IPA Specimen profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


**Profile specific implementation guidance**

- TBD






