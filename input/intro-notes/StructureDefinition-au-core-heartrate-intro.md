See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of heart rate associated with a patient
- Record or update an observation of heart rate associated with a patient

### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}
- Pulse rate and heart rate are different concepts. In FHIR, both concepts are children of the parent Heart Rate concept and conform to the AU Core Heart Rate profile. When representing a pulse rate observation specifically, an *additional* SNOMED CT code 78564009 \|Pulse rate\| **SHALL** be added to `Observation.code`. This allows pulse rate observations to be identified and searched for directly. When populating pulse rate, the body site from which the pulse rate was observed is optional to include.
