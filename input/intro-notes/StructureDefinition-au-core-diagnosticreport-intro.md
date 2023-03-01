#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a specific diagnostic report such as an electrocardiogram (ECG) or full blood count (FBC).
- Query for category of diagnostic report (e.g. all cardiology reports)
- Record or update a diagnostic report for a patient


#### Profile specific implementation guidance
- `DiagnosticReport.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Results that are free text or report form are represented using ‘DiagnosticReport.presentedForm`.
- References to a Media resource are preferred to be [contained](http://hl7.org/fhir/R4/references.html#contained) but may be an external resource
- The DiagnosticReport resource can represent the clinical conclusion as a text summary with `DiagnosticReport.conclusion` or a set of codes with `DiagnosticReport.conclusionCode`.
  - Although both are marked as must support, sending systems are not required to support both a text and a set of codes, but they **SHALL** support *at least one* of these elements
  - A receiving or persisting system **SHALL** support both elements
- The DiagnosticReport resource can represent the result as a text summary with `DiagnosticReport.conclusion` or a set of codes with `DiagnosticReport.conclusionCode`.
  - Although both are marked as must support, sending systems are not required to support both a text and a set of codes, but they **SHALL** support *at least one* of these elements
  - A receiving or persisting system **SHALL** support both elements


