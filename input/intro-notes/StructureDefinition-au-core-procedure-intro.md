See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for procedures performed on a patient
- Record or update a record of a procedure performed on a patient

### Profile Specific Implementation Guidance
- `Procedure.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The use of coding can vary significantly across systems, requesters need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Responders **SHOULD** populate `Procedure.code.text` and/or `Procedure.code.coding.display` so that requesters can at least display the procedure even if the requester does not recognise the code supplied.
- `Procedure.code` contains the identification of the procedure which may include body site information. Where a system has information not supported by the coding in `Procedure.code.coding` (e.g. body site, laterality and other qualification of procedure coding terms) that information **SHOULD** be supplied in `Procedure.code.text`
- See the [Representing Body Site, Which May Include Laterality](https://build.fhir.org/ig/hl7au/au-fhir-core/general-guidance.html#representing-body-site-which-may-include-laterality) section for guidance on representing a relevant body site and associated laterality.
- The Procedure resource can represent a clinical indication with `Procedure.reasonCode`, or a reference with `Procedure.reasonReference` to a Condition or other resource.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements
- A procedure including an implantable device is recommended to use `Procedure.focalDevice` with a reference to a Device resource

<div class="stu-note" markdown="1">

The additional obligation for `Procedure.performedDateTime` for [AU Core Responder](ActorDefinition-au-core-actor-responder.html) is [SHOULD:populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate). There is no additional obligation for [AU Core Requester](ActorDefinition-au-core-actor-requester.html), the obligation of [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) applies.

This obligation is present in the underlying structure but due to a tooling limitation is not currently rendered in the profile view. See [Zulip discussion](https://chat.fhir.org/#narrow/channel/179252-IG-creation/topic/Obligation.20Extension.20on.20ElementDefinition.2Etype.20not.20rendering) for more information.

</div><!-- stu-note -->