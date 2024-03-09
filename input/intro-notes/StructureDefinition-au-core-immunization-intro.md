### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's immunisations
- Record or update an immunisation record for a patient

### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Immunization](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-immunization)
- and **MAY** be conformant to
  - [Immunization (IPS)](https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Immunization-uv-ips.html) if patient is supported as Immunization.patient.reference
  - [US Core Immunization](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-immunization.html) noting that US Core extensibly binds to CVX which is not an AU vaccine terminology

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.

### Profile specific implementation guidance
- Use the status code: `not-done` to represent that an immunization was *not* given.

<div class="request-for-feedback">
    <p>Feedback is requested on the proposals to remove Must Support from the following elements:
    <ul>
        <li>Immunization.performer and its children: please comment on <a href="https://jira.hl7.org/browse/FHIR-44653">FHIR-44653</a>.</li>
        <li>Immunization.note: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44672">FHIR-44672</a>.</li>
        <li>Immunization.reasonCode: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44654">Comment on FHIR-44654</a>.</li>
        <li>Immunization.protocolApplied.series: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44657">FHIR-44657</a>.</li>
        <li>Immunization.protocolApplied.targetDisease: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44654">FHIR-44654</a>.</li>
        <li>Immunization.protocolApplied.doseNumber: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44674">FHIR-44674</a>.</li>
    </ul>
    </p>
</div>

<div class="request-for-feedback">
    <p>Feedback is requested on the proposals to add Must Support to the following elements:
    <ul>
        <li>Immunization.primarySource: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44659">FHIR-44659</a>.</li>
        <li>Immunization.location: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44671">FHIR-44671</a>.</li>
    </ul>
    </p>
</div> 
