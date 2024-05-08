### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's problems, diagnoses, and health concerns
- Record or update a patient's problem, diagnosis, or health concern


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [IPA-Condition](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-condition)
- and **MAY** be conformant to
    - [IPA-problem-list-item](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-problem-list-item) if one Condition.category `problem-list-item` is supplied 
    - [Condition (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips) if patient is supported as Condition.subject.reference
    - [US Core Condition Problems and Health Concerns](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns) if one Condition.category is supplied with a value from the US Core Problem or Health Concern value set
    - [US Core Condition Encounter Diagnosis](http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis) if one Condition.category `encounter-diagnosis` is supplied 

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- `Condition.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- The use of coding can vary significantly across systems, requesters need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Responders **SHOULD** populate `Condition.code.text` and/or `Condition.code.coding.display` so that requesters can display the condition even if the requester does not recognise the code supplied. 
- `Condition.code` contains the identification of the condition, problem or diagnosis which may include body site information. Where a system has information not supported by the coding in `Condition.code.coding` (e.g. body site, laterality and other qualification of condition coding terms) that information **SHOULD** be supplied in `Condition.code.text`
- An active condition is represented using "active" in `Condition.clinicalStatus`
- To represent that a patient does not have a condition or history of condition, an appropriate negation code is used in `Condition.code`
- Refutation is not expected to be handled except as above - an appropriate negation code in `Condition.code` and `Condition.verificationStatus` of "confirmed" or "unconfirmed"

<p class="request-for-feedback">Input is requested on how to exchange 'free text' medical history i.e. are these always Condition and/or Procedure resources? Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43846">FHIR-43846</a>.</p>

<p class="request-for-feedback">Input is requested on how a diagnosis type (e.g. Comorbidity, Complication) would be represented in AU Core Condition. Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43847">FHIR-43847</a>.</p>
