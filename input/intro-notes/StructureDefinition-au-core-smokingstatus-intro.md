#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of smoking status associated with a patient
- Record or update an observation of smoking status associated with a patient


#### Relationship with national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Smoking Status Observation](http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus)
- and **MAY** be conformant to [Observation - SH: tobacco use](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips) if additional LOINC coding is supplied in Observation.code and Observation.valueCodeableConcept, and patient is supported in Observation.subject.reference

No equivalent International Patient Access profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
{% include observation_coding_guidance.md -%}




