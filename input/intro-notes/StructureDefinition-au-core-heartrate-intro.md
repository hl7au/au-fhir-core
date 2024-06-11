### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of heart rate associated with a patient
- Record or update an observation of heart rate associated with a patient


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [observation-heartrate](http://hl7.org/fhir/R4/observation-heartrate.html)
  - and therefore conformant to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips)
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Heart Rate](http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}
- Pulse rate and heart rate are different concepts. In FHIR, both concepts are children of the parent Heart Rate concept and conform to the AU Core Heart Rate profile. When representing a pulse rate observation specifically, an *additional* SNOMED CT code 78564009 \|Pulse rate\| **SHALL** be added to `Observation.code`. This allows pulse rate observations to be identified and searched for directly. When populating pulse rate, the body site from which the pulse rate was observed is optional to include.
