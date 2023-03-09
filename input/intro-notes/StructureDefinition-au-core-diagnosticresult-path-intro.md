#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for pathology results for a patient
- Query for category of pathology results (e.g. all chemistry)
- Record or update pathology results belonging to a patient


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Laboratory Result Observation](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab)
- and **MAY** be conformant to
    - [Observation Results: laboratory (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips) if patient is supported as Observation.subject.reference, Observation.status is `final` and Observation.performer is supplied
    - [Observation Results: pathology (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips) if patient is supported as Observation.subject.reference and Observation.performer is supplied

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
{% include observation_diagnostics_guidance.md -%}

