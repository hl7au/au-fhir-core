#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a care team for a patient
- Record or update a patient's care team


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [US Core CareTeam](http://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-careteam.html)

No equivalent International Patient Access or International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
- Because PractitionerRole supplies a provider’s location, contact information, and reference to the Practitioner, it **SHOULD** be referenced in `CareTeam.member` instead of the a Practitioner resource.

<p class="stu-note">Specific feedback is sought on appropriate category values for care teams.</p>

