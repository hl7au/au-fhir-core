### Profile Specific Implementation Guidance
- See the [Sex and Gender](sex-and-gender.html) page for guidance on exchanging sex and gender related concepts conformant to AU Core.

<div class="stu-note" markdown="1">
This profile applies a `patternCodeableConcept` on `Extension.extension:type.value[x]` requiring the SNOMED CT code 1515311000168102 \|Biological sex at birth\|. 

The requirement is present in the underlying structure but due to a tooling limitation is not currently rendered in the Formal Views of Profile Content. See [Zulip discussion](https://chat.fhir.org/#narrow/channel/179173-australia/topic/AU.20Core.20Sex.20Assigned.20At.20Birth/with/625638071) for more information.

</div><!-- stu-note -->

**Examples:**

* Examples for this Extension Profile: [Patient/banks-mia-leanne](Patient-banks-mia-leanne.html)