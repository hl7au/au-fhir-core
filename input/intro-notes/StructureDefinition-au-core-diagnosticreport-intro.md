See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's diagnostic report
- Record or update a patient's diagnostic report

### Profile Specific Implementation Guidance
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- For DiagnosticReport resources reporting a panel:
    - `DiagnosticReport.code` identifies the panel procedure (e.g. Lipid panel)
    - `DiagnosticReport.result` references Observation resources containing results of tests performed as part of the panel (e.g. HDL, LDL, cholesterol and triglycerides)