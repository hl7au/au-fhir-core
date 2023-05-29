#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a specific diagnostic report such as an electrocardiogram (ECG) or full blood count (FBC).
- Query for category of diagnostic report (e.g. all cardiology reports)
- Record or update a diagnostic report for a patient

#### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to
    - [DiagnosticReport (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips) if patient is supported as DiagnosticReport.subject.reference and DiagnosticReport.status is `final`
    - [US Core DiagnosticReport Profile for Report and Note Exchange](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note) noting that US Core extensibly binds Observation.code to a subset of LOINC
    - [US Core DiagnosticReport Profile for Laboratory Results Reporting](http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab) if Observation.category is `LAB`, noting that US Core extensibly binds Observation.code to a subset of LOINC

No equivalent IPA profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
- `DiagnosticReport.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Results that are free text or report form are represented using ‘DiagnosticReport.presentedForm`.
- References to a Media resource are preferred to be [contained](http://hl7.org/fhir/R4/references.html#contained) but may be an external resource
- The DiagnosticReport resource can represent the clinical conclusion as a text summary with `DiagnosticReport.conclusion` or a set of codes with `DiagnosticReport.conclusionCode`.
  - Although both are marked as must support, servers are not required to support both a text and a set of codes, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements
- The DiagnosticReport resource can represent the result as a text summary with `DiagnosticReport.conclusion` or a set of codes with `DiagnosticReport.conclusionCode`.
  - Although both are marked as must support, servers are not required to support both a text and a set of codes, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements

  <p class="stu-note">Composition, DocumentReference, and DiagnosticReport resources support support the exchange of clinical notes. Specific feedback is sought on resource selection.</p>


