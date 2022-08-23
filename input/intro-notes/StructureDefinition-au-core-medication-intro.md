#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query medications associated with a patient referenced by another resource
- Record or update a medication associated with a patient referenced by another resource
- Read medications associated with a patient referenced by another resource


#### Profile specific implementation guidance
- See the [Medicine information](guidance.html#medicine-information) section for guidance on constructing a resource and the use of medicines terminology
- Manufacturer information will commonly be exchanged as a PBS code, this information can be represented as an external resource of by using `Medication.manufacturer.identifier` to carry the PBS code and `Medication.manufacturer.display` to carry the name of the manufacturer  
