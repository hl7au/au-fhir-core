#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of estimated date of delivery associated with a patient
- Record or update an observation of estimated date of delivery associated with a patient


#### Relationship with national and international specifications
- Conformant to [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- Conformant to xxx
- Conformant to xxx


#### Profile specific implementation guidance
{% include observation_coding_guidance.md -%}
- A more specific code is used to indicate the method, for example 738070007 *Estimated date of delivery from antenatal ultrasound scan*
- Antenatal observations will represent the pregnant individual as `Observation.subject` and the fetus as `Observation.focus`
