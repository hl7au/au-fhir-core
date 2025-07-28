See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's problems, diagnoses, and health concerns
- Record or update a patient's problem, diagnosis, or health concern

### Profile Specific Implementation Guidance
- `Condition.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- The use of coding can vary significantly across systems, requesters need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Responders **SHOULD** populate `Condition.code.text` and/or `Condition.code.coding.display` so that requesters can display the condition even if the requester does not recognise the code supplied. 
- See the [Representing Body Site, Which May Include Laterality](https://build.fhir.org/ig/hl7au/au-fhir-core/general-guidance.html#representing-body-site-which-may-include-laterality) section for guidance on representing a relevant body site and associated laterality.
- An active condition is represented using "active" in `Condition.clinicalStatus`
- To represent that a patient does not have a condition or history of condition, an appropriate negation code is used in `Condition.code`:
  - For indicating no known conditions or problems of any type `Condition.code` **SHOULD** use the code SNOMED CT 160245001 \|No current problems or disability (situation)\|
- Refutation is not expected to be handled except as above - an appropriate negation code in `Condition.code` and `Condition.verificationStatus` of "confirmed" or "unconfirmed"

<div class="stu-note" markdown="1">

The additional obligation for `Condition.onsetDateTime` for [AU Core Responder](ActorDefinition-au-core-actor-responder.html) is [SHOULD:populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate). There is no additional obligation for [AU Core Requester](ActorDefinition-au-core-actor-requester.html), the obligation of [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) applies.

This obligation is present in the underlying structure but due to a tooling limitation is not currently rendered in the profile view. See [Zulip discussion](https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Obligation.20on.20ElementDefinition.2Etype) for more information.

</div><!-- stu-note -->