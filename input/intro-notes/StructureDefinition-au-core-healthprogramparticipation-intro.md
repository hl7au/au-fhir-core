#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for information about health programs a patient has participated in the past, is participating now, or will participate in the future
- Record or update information about health programs associated with a patient


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Simple Observation](http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation)

No equivalent International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
- `Observation.code` identifies the health program and nature of the observation (e.g. 1602081000168109 \|National bowel cancer screening program participation\| or 1602101000168102 \|National cervical cancer screening program participation	\|)
- Participant status is represented as a SNOMED CT-AU coded value in `Observation.component.valueCodeableConcept` with `Observation.component.code`= "1603781000168102" 




