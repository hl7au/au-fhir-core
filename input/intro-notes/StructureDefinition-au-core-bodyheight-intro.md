### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of body height associated with a patient
- Record or update an observation of body height associated with a patient


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [observation-bodyheight](http://hl7.org/fhir/R4/observation-bodyheight.html)
  - and therefore conformant to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips)
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Body Height](http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-height)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance


{% include observation_vitalsigns_guidance.md -%}

<p class="request-for-feedback">Feedback is requested on the proposal to remove the binding to metric units and allow for metric or imperial measurements. Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44787">FHIR-44787</a>.</p>
