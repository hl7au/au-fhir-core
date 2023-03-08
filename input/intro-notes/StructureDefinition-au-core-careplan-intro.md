#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a care plan for a patient
- Record or update a patient's care plans


#### Relationship with national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [US Core CarePlan](http://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-careplan.html) if CarePlan.text is included and CarePlan.category supplies the US Core specific terminology

No equivalent International Patient Access or International Patient Summary profile, noting that International Patient Summary supports the core FHIR CarePlan resource unprofiled.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
TBD




