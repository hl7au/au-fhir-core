#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of gravidity count associated with a patient
- Record or update an observation of gravidity count associated with a patient


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Simple Observation](http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation)

No equivalent International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
{% include observation_coding_guidance.md -%}

<p class="stu-note">Specific feedback is sought on appropriate category values for Observations relating to pregnancy.</p>

