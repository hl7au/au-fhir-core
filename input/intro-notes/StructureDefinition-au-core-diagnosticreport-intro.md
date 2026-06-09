See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's diagnostic report
- Record or update a patient's diagnostic report

### Profile Specific Implementation Guidance
- Where a DiagnosticReport resource represents a panel:
    - `DiagnosticReport.code` identifies the report code for the panel (e.g. Lipid panel)
    - `DiagnosticReport.result` references Observation resources containing results of tests performed as part of the panel (e.g. HDL, LDL, cholesterol and triglycerides)