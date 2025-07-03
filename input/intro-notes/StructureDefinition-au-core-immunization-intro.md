See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's immunisations
- Record or update an immunisation record for a patient

### Profile specific implementation guidance
- When populating `Immunization.vaccineCode` responders **SHALL** correctly populate `Immunization.vaccineCode.coding` with either a code from [Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1) or [Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1), or both, if a coded value is known and **MAY** populate with a code from another code system.
  - Responders **MAY** populate with only text if no coded value is known.

<div class="stu-note" markdown="1">

The additional obligation for `Immunization.occurrenceDateTime` for [AU Core Responder](ActorDefinition-au-core-actor-responder.html) is [SHOULD:populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate). There is no additional obligation for [AU Core Requester](ActorDefinition-au-core-actor-requester.html), the obligation of [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) applies.

This obligation is present in the underlying structure but due to a tooling limitation is not currently rendered in the profile view. See [Zulip discussion](https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Obligation.20on.20ElementDefinition.2Etype) for more information.

</div><!-- stu-note -->