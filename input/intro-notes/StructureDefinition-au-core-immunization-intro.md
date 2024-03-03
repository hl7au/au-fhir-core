### Usage scenarios, 

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
  <p>We seek specific feedback on the following proposals regarding the Immunization resource. Please provide your comments on the corresponding HL7 Jira items:
  <ul>
      <li>Removal of Must Support from <code>Immunization.performer</code> and its children. The performer is likely to only be known when it is being reported as part of the administration but it may not be relevant for other use cases: <a href="https://jira.hl7.org/browse/FHIR-44653">FHIR-44653</a></li>
      <li>Removal of Must Support from <code>Immunization.note</code>. The notes for a vaccine may be taken as part of the administration but it may not be relevant for other use cases: <a href="https://jira.hl7.org/browse/FHIR-44672">FHIR-44672</a>
      </li>
      <li>Removal of Must Support from <code>Immunization.reasonCode</code>: <a href="https://jira.hl7.org/browse/FHIR-44654">FHIR-44654</a></li>
      <li>Removal of Must Support  from <code>Immunization.protocolApplied.series</code>.Existing systems may not record the name of the vaccine series that an immunisation is being administered for as it is implied in the vaccine: <a href="https://jira.hl7.org/browse/FHIR-44657">FHIR-44657</a></li>
      <li>Removal of Must Support from <code>Immunization.protocolApplied.targetDisease</code>. Existing systems may not record the reason or target disease that an immunisation is being administered for as it is implied in the vaccine: <a href="https://jira.hl7.org/browse/FHIR-44654">FHIR-44654</a></li>
      <li>Removal of Must Support from <code>Immunization.protocolApplied.doseNumber</code>. It is unknown if systems support capture of the dose number within series: <a href="https://jira.hl7.org/browse/FHIR-44674">FHIR-44674</a></li>
      <li>Addition of Must Support for <code>Immunization.primarySource</code>, to indicate whether the vaccine was reported by someone other than the person who administered the vaccine. This would support the distinction between definitive administrative records and subjective past historical records: <a href="https://jira.hl7.org/browse/FHIR-44659">FHIR-44659</a></li>
      <li>Addition of Must Support for <code>Immunization.location</code>: <a href="https://jira.hl7.org/browse/FHIR-44671">FHIR-44671</a>
      </li>
    </ul>
  </p>
</div>
