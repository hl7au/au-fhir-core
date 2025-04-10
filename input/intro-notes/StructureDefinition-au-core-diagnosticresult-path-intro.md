See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for pathology results for a patient
- Query for category of pathology results (e.g. all chemistry)
- Record or update pathology results belonging to a patient


### Profile specific implementation guidance
{% include observation_diagnostics_guidance.md -%}
- The AU Core Pathology Result Observation is used to represent pathology test results. It is not intended to represent other diagnostic results. To represent results of a non-pathology diagnostic test, the [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html) **SHALL** be used.
