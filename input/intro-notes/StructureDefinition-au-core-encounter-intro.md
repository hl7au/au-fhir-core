See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios
TBD

The following are supported usage scenarios for this profile:

- Query for a specific patient encounter
- Query for all patient encounters
- Record or update a patient encounter


- The Encounter resource can represent a reason as a code with `Encounter.reasonCode`, or a reference with `Encounter.reasonReference` to a Condition or other resource.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements