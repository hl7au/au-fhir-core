See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's allergies/adverse reactions
- Record or update a patient's allergies/adverse reactions

### Profile specific implementation guidance
- To represent that a patient does not have an allergy or category of allergies, an appropriate negation code (e.g. 716186003 \|No known allergy\| or 1003774007 \|No known Hevea brasiliensis latex allergy\|) is used in `AllergyIntolerance.code`
- The use of coding can vary significantly across systems, requesters need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Responders **SHOULD** populate `AllergyIntolerance.code.text` and/or `AllergyIntolerance.code.coding.display` so that requesters can at least display the condition even if the requester does not recognise the code supplied.
- Refutation is not expected to be handled except as above - an appropriate negation code in `AllergyIntolerance.code` and `AllergyIntolerance.verificationStatus` of "confirmed" or "unconfirmed"
- Where only substance is known (e.g. 111088007 \|Latex\|) and not a statement of allergy or intolerance (e.g. 1003755004 \|Allergy to latex\|), the substance is sent in `AllergyIntolerance.code`

<div class="stu-note" markdown="1">

The additional obligation for `AllergyIntolerance.onsetDateTime` for [AU Core Responder](ActorDefinition-au-core-actor-responder.html) is [SHOULD:populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate). There is no additional obligation for [AU Core Requester](ActorDefinition-au-core-actor-requester.html), the obligation of [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) applies.

This obligation is present in the underlying structure but due to a tooling limitation is not currently rendered in the profile view. See [Zulip discussion](https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Obligation.20on.20ElementDefinition.2Etype) for more information.

</div><!-- stu-note -->