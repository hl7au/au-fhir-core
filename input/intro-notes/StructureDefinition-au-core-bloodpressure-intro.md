### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of blood pressure associated with a patient
- Record or update an observation of blood pressure associated with a patient


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [observation-bp](http://hl7.org/fhir/R4/observation-bp.html)
  - and therefore conformant to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips)
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Blood Pressure](http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}
- Because blood pressure values are communicated in the *mandatory* systolic and diastolic components:
  - `Observation.value[x]` element **SHOULD** be omitted
  - an Observation without a systolic or diastolic result value, **SHOULD** include a reason why the data is absent in `Observation.component.dataAbsentReason`


