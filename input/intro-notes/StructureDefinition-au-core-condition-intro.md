#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's problems, diagnoses, and health concerns
- Record or update a patient's problem, diagnosis, or health concern


#### Profile specific implementation guidance
- `Condition.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations. 
- An active condition is represented using "active" in `Condition.clinicalStatus`
- To represent that a patient does not have a condition or history of condition, an appropriate negation code is used in `Condition.code`
- Refutation is not expected to be handled except as above - an appropriate negation code in `Condition.code` and `Condition.verificationStatus` of "confirmed" or "unconfirmed"




