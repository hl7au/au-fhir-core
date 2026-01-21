See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for specialist or other diagnostic results for a patient
- Query for category of specialist or other diagnostic results (e.g. all cardiology results)
- Record or update a specialist or other diagnostic result for a patient

<div class="stu-note">
There is currently no profile for diagnostic imaging results in AU Core. Implementers can refer to the  <a href="https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-imagingresult.html">AU Base Diagnostic Imaging Result</a> profile for guidance on exchanging diagnostic imaging results. Support for imaging result observations may be added to AU Core in the future.
</div>

### Profile Specific Implementation Guidance
{% include observation_diagnostics_guidance.md -%}
- To represent the result of a pathology test, see the [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html) profile.
