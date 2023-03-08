#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for documents belonging to a patient
- Query for a specific document belonging to a patient
- Record or update a document belonging to a patient


#### Relationship with national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-DocumentReference](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-documentreference)
- and **MAY** be conformant to [US Core DocumentReference](http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference) if DocumentReference.code is supplied with a value from the US Core DocumentReference Type value set

No equivalent International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
TBD




