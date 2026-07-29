See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for observations of smoking status associated with a patient
- Record or update an observation of smoking status associated with a patient

### Profile Specific Implementation Guidance
{% include observation_coding_guidance.md %}


<div class="stu-note" markdown="1">
This profile applies a `patternCodeableConcept` on `Observation.code` requiring the SNOMED CT code 1747861000168109 \| Smoking status \|, and an optional slice on `Observation.code.coding` for the LOINC smoking status code. 

The requirement is present in the underlying structure but due to a tooling limitation is not currently rendered in the Formal Views of Profile Content. The `Observation.code.coding` slice continues to be rendered as expected. See [Zulip discussion](https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/patternCodeableConcept.20not.20rendering.20when.20coding.20is.20sliced/with/612520633) for more information.

</div><!-- stu-note -->



