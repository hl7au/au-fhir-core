#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of estimated date of delivery associated with a patient
- Record or update an observation of estimated date of delivery associated with a patient


#### Profile specific implementation guidance
{% include observation_coding_guidance.md -%}
- Antenatal observations will represent the pregnant individual as `Observation.subject` and the fetus as `Observation.focus`
