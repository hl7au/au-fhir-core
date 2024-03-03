### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for procedures performed on a patient
- Record or update a record of a procedure performed on a patient


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [US Core Procedure](http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure)
- and **MAY** be conformant to [Procedure (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips) if patient is supported as Procedure.subject.reference

No equivalent International Patient Access profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- `Procedure.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The use of coding can vary significantly across systems, client applications need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Servers **SHOULD** populate `Procedure.code.text` and/or `Procedure.code.coding.display` so that client applications can at least display the condition even if the client application does not recognise the code supplied.
- In an exchange with the My Health Record system `Procedure.status` is "completed"
- The Procedure resource can represent a reason as a code with `Procedure.reasonCode`, or a reference with `Procedure.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, servers are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements
- A procedure including an implantable device should use `Procedure.focalDevice` with a reference to a Device resource

<div class="request-for-feedback">
  <p>We seek specific feedback on the following proposals regarding the Procedure resource. Please provide your comments on the corresponding HL7 Jira items:
  <ul>
    <li>Removal of the mandatory requirement to support <code>_revinclude</code> of Provenance: <a href="https://github.com/hl7au/au-fhir-core/issues/70">au-fhir-core/issues/70</a></li>
    <li>Should the <code>bodySite</code> be removed from this profile and AU Core only supports information being sent in <code>Procedure.code</code> i.e bodySite is redundant as body is pre-coordinated in Procedure.code or qualifies Procedure.code as body site is not defined in code: <a href="https://github.com/hl7au/au-fhir-core/issues/64">au-fhir-core/issues/64</a></li>
  </ul>
  </p>
</div>