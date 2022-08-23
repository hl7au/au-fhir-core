#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of gestational age associated with a patient
- Record or update an observation of gestational age associated with a patient


#### Profile specific implementation guidance
{% include observation_coding_guidance.md -%}
- A more specific code is used to indicate the method, for example 11885-1 *Gestational age Estimated from last menstrual period* in addition to 57036006 *Fetal gestational age*
- Antenatal observations will represent the pregnant individual as `Observation.subject` and the fetus as `Observation.focus`



