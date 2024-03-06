### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of heart rate associated with a patient
- Record or update an observation of heart rate associated with a patient


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [observation-heartrate](http://hl7.org/fhir/R4/observation-heartrate.html)
  - and therefore conformant to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips)
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Heart Rate](http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}

<p class="request-for-feedback">Specific feedback is sought on the proposal to remove Must Support from Observation.performer element. This element is not flagged as must support in similar profiles in other implementation guides, such as US Core and IPS, and it lacks a counterpart in AUCDI R1 with no inclusion planned for the R2 roadmap. Given that the current guidance and description are quite general, it is proposed future revisions should focus on utilising feedback from distinct use cases (such as patient-reported versus provider-reported observations) to provide more specific guidance.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44588">FHIR-44588</a>.</p>



