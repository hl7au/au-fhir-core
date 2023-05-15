#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for pregnancy status for a patient
- Record or update pregnancy status for a patient


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Observation Pregnancy Status](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-pregnancystatus)
- and **MAY** be conformant to IPS [Observation - Pregnancy: status](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips) if additional LOINC coding is included in Observation.valueCodeableConcept and patient is supported as Observation.subject.reference

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
{% include observation_coding_guidance.md -%}

<p class="stu-note">Specific feedback is sought on appropriate category values for Observations relating to pregnancy.</p>

