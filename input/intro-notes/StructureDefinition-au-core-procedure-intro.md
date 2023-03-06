#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a procedures performed on a patient
- Record or update a record of a procedure performed on a patient


#### Relationship with national and international specifications
- Conformant to xxx
- Conformant to xxx

No equivalent IPA Procedure profile.


#### Profile specific implementation guidance
- `Procedure.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- In an exchange with the My Health Record system `Procedure.status` is "completed"
- The Procedure resource can represent a reason as a code with `Procedure.reasonCode`, or a reference with `Procedure.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, sending systems are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A receiving or persisting system **SHALL** support both elements
- A procedure including an implantable device should use `Procedure.focalDevice` with a reference to a Device resource
