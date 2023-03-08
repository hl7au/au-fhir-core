#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's problems, diagnoses, and health concerns
- Record or update a patient's problem, diagnosis, or health concern


#### Relationship with national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Condition](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-condition)
- and **MAY** be conformant to
    - [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips) if patient is supported as Condition.subject.reference
    - [US Core Condition Problems and Health Concerns](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns) if one Condition.category is supplied with a value from the US Core Problem or Health Concern value set
    - [US Core Condition Encounter Diagnosis](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis) if one Condition.category is supplied with concept `encounter-diagnosis` is supplied



#### Profile specific implementation guidance
- `Condition.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- An active condition is represented using "active" in `Condition.clinicalStatus`
- To represent that a patient does not have a condition or history of condition, an appropriate negation code is used in `Condition.code`
- Refutation is not expected to be handled except as above - an appropriate negation code in `Condition.code` and `Condition.verificationStatus` of "confirmed" or "unconfirmed"




