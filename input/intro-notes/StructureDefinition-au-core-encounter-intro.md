### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a specific patient encounter
- Query for all patient encounters
- Record or update a patient encounter


### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [US Core Encounter](http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter) if Encounter.type is supplied

No equivalent International Patient Access or International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- The use of coding can vary significantly across systems, client applications need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Servers **SHOULD** populate `Encounter.code.text` and/or `Encounter.code.coding.display` so that client applications can at least display the condition even if the client application does not recognise the code supplied. 
- The Encounter resource can represent a reason as a code with `Encounter.reasonCode`, or a reference with `Encounter.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, servers are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements

<div class="request-for-feedback">
    <p>Feedback is requested on the proposals to remove Must Support from the following elements:
    <ul>
        <li>Encounter.type:  please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44580">FHIR-44580</a>.</li>
        <li>Encounter.serviceType:  please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44581">FHIR-44581</a>.</li>
        <li>Encounter.reasonReference: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-44582">FHIR-44582</a>.</li>
    </ul>
    </p>
</div>