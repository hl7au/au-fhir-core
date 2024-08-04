See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of blood pressure associated with a patient
- Record or update an observation of blood pressure associated with a patient

### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}
- Because blood pressure values are communicated in the *mandatory* systolic and diastolic components:
  - `Observation.value[x]` element **SHOULD** be omitted
  - an Observation without a systolic or diastolic result value, **SHOULD** include a reason why the data is absent in `Observation.component.dataAbsentReason`


