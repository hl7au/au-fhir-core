### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for procedures performed on a patient
- Record or update a record of a procedure performed on a patient


### Comparison with other national and international IGs

A resource conforming to this profile is conformant to:
- [US Core Procedure](http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure)
- and **MAY** be conformant to [Procedure (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips) if patient is supported as Procedure.subject.reference

No equivalent International Patient Access profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- `Procedure.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The use of coding can vary significantly across systems, requesters need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Responders **SHOULD** populate `Procedure.code.text` and/or `Procedure.code.coding.display` so that requesters can at least display the procedure even if the requester does not recognise the code supplied.
- `Procedure.code` contains the identification of the procedure which may include body site information. Where a system has information not supported by the coding in `Procedure.code.coding` (e.g. body site, laterality and other qualification of procedure coding terms) that information **SHOULD** be supplied in `Procedure.code.text`
- In an exchange with the My Health Record system `Procedure.status` is "completed"
- The Procedure resource can represent a clinical indication with `Procedure.reasonCode`, or a reference with `Procedure.reasonReference` to a Condition or other resource.
  - Although both are marked as *Must Support*, responders are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A requester **SHALL** support both elements
- A procedure including an implantable device should use `Procedure.focalDevice` with a reference to a Device resource