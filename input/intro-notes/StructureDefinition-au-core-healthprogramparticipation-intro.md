#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for information about health programs a patient has participated in the past, is participating now, or will participate in the future
- Record or update information about health programs associated with a patient


#### Profile specific implementation guidance
- `Observation.code` identifies the health program and nature of the observation (e.g. 1602081000168109 \|National bowel cancer screening program participation\| or 1602101000168102 \|National cervical cancer screening program participation	\|)
- Participant status is represented as a SNOMED CT-AU coded value in `Observation.component.valueCodeableConcept` with `Observation.component.code`= "1603781000168102" 




