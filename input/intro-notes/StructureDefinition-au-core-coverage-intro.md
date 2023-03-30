#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient’s insurance coverage
- Record or update a patient's insurance coverages


#### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [US Core Coverage](http://hl7.org/fhir/us/core/StructureDefinition/us-core-coverage) if Coverage.relationship is included

No equivalent International Patient Access or International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
- When querying if a patient is covered `Coverage.status` and `Coverage.period` are relevant. The coverage may not be active at the time of query but may have been applicable during the time of service or claim.




