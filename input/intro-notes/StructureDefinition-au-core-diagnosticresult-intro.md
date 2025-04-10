See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for diagnostic results for a patient
- Query for category of diagnostic results (e.g. all cardiology results)
- Record or update a diagnostic result for a patient


### Profile specific implementation guidance
{% include observation_diagnostics_guidance.md -%}
- The AU Core Diagnostic Result Observation is used to represent results of non-pathology diagnostic tests. It is not intended to be used for pathology results. To represent results of a pathology test, the [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html) **SHALL** be used.