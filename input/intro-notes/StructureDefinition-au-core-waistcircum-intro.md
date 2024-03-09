### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of waist circumference associated with a patient
- Record or update an observation of waist circumference associated with a patient


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Simple Observation](http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation)

No equivalent International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}

<p class="request-for-feedback">Feedback is requested on the proposal to remove Must Support from Observation.performer element across AU Core Vital Signs profiles. Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44786">FHIR-44786</a>.</p>

<p class="request-for-feedback">Feedback is requested on the proposal to remove the binding to metric units and allow for metric or imperial measurements. Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44787">FHIR-44787</a>.</p>