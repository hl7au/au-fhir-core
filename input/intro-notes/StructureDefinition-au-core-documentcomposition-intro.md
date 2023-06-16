### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a clinical document for a patient
- Record or update a clinical document for a patient


### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [Composition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips) if:
  - Composition.type is `60591-5`
  - patient is supported as Composition.subject.reference
  - any section
    - does not supply Section.emptyReason or Section.section
    - supplies at least one Section.entry with a supported resource type
    - does not supply unsupported resource types in Section.entry
  - a medications section is supplied with Section.code `10160-0`
  - an allergies section is supplied with Section.code `48765-2`
  - a problems section is supplied with Section.code `11450-4`

No equivalent International Patient Access or US Core profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance

<p class="stu-note">Composition, DocumentReference, DiagnosticReport, and List resources support support the exchange of clinical notes. Specific feedback is sought on resource selection to form agreement on the clinical notes that SHOULD be exposed via Composition.</p>

<p class="stu-note">Specific feedback is sought on the set of clinical notes and associated codes to be supported in Australia.</p>

<p class="stu-note">Specific feedback is sought on the defining the local requirements of $summary operation (<a href="https://build.fhir.org/ig/HL7/fhir-ips/OperationDefinition-summary.html">IPS Summary</a>).</p>
