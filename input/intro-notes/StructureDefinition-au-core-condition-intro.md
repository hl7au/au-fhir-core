See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's problems, diagnoses, and health concerns
- Record or update a patient's problem, diagnosis, or health concern

### Profile specific implementation guidance
- `Condition.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- The use of coding can vary significantly across systems, requesters need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Responders **SHOULD** populate `Condition.code.text` and/or `Condition.code.coding.display` so that requesters can display the condition even if the requester does not recognise the code supplied. 
- `Condition.code` contains the identification of the condition, problem or diagnosis which may include body site information. Where a system has information not supported by the coding in `Condition.code.coding` (e.g. body site, laterality and other qualification of condition coding terms) that information **SHOULD** be supplied in `Condition.code.text`
- An active condition is represented using "active" in `Condition.clinicalStatus`
- To represent that a patient does not have a condition or history of condition, an appropriate negation code is used in `Condition.code`:
  - For indicating no known conditions or problems of any type `Condition.code` **SHOULD** use the code SNOMED CT 160245001 \|No current problems or disability (situation)\|
- Refutation is not expected to be handled except as above - an appropriate negation code in `Condition.code` and `Condition.verificationStatus` of "confirmed" or "unconfirmed"
