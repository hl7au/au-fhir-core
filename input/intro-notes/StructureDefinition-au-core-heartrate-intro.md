#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of heart rate associated with a patient
- Record or update an observation of heart rate associated with a patient


#### Relationship with national and international specifications

A resource conforming to this profile is conformant to:
- [observation-heartrate](http://hl7.org/fhir/R4/observation-heartrate.html)
  - and therefore conformant to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips)
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Heart Rate](http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}




