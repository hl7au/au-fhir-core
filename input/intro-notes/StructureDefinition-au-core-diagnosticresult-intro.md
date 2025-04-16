See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for diagnostic results for a patient
- Query for category of diagnostic results (e.g. all cardiology results)
- Record or update a diagnostic result for a patient

<div class="stu-note">
There is currently no specific Imaging Result Observation profile in AU Core. Implementers may use the <a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-imagingresult.html">AU Base Diagnostic Imaging Result</a> profile or develop an implementation specific profile if required. Support for imaging result observations may be added to AU Core in the future.
</div>

### Profile specific implementation guidance
{% include observation_diagnostics_guidance.md -%}
- The AU Core Diagnostic Result Observation is used to represent the result of a non-pathology diagnostic test. It is not intended to be used for pathology results. To represent the result of a pathology test, see the [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html) profile.
