### Usage scenarios

The following are example usage scenarios for this profile:

- Query for observations of clinical judgement of no relevant finding associated with a patient (e.g. no current medications or no history of vaccination)
- Record or update a clinical judgement of no relevant finding associated with a patient (e.g. no current medications or no history of vaccination)


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)

No equivalent International Patient Summary or US Core profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- An Observation of no relevant finding **SHOULD** only be used where there is no suitable other resource.
  - negated allergy or no known allergies **SHOULD** be supported in an AllergyIntolerance resource.
  - negated condition or no known problems **SHOULD** be supported in a Condition resource.
{% include observation_coding_guidance.md -%}






