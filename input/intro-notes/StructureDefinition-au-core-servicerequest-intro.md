### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a specific procedure or test request such as an electrocardiogram (ECG) order or a referral to a support program
- Query for a specific service offered to a patient such as a referral to a support program
- Query for category of service request (e.g. all cardiology requests)
- Record or update a request for a service for a patient


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [US Core ServiceRequest](http://hl7.org/fhir/us/core/StructureDefinition/us-core-servicerequest)

No equivalent International Patient Access or International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- `ServiceRequest.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The use of coding can vary significantly across systems, client applications need to understand that they may encounter codes they do not recognise and be prepared to handle those resources appropriately. Servers **SHOULD** populate `ServiceRequest.code.text` and/or `ServiceRequest.code.coding.display` so that client applications can at least display the condition even if the client application does not recognise the code supplied. 
- The ServiceRequest resource can represent a reason as a code with `ServiceRequest.reasonCode`, or a reference with `ServiceRequest.reasonReference` to a Condition or other resource.
  - Although both are marked as must support, servers are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements
- The ServiceRequest resource can represent the desired performer as a code with `ServiceRequest.performerType`, or a reference with `ServiceRequest.performer` to a HealthcareService or other resource.
  - Although both are marked as must support, servers are not required to support both a code and a reference, but they **SHALL** support *at least one* of these elements
  - A client application **SHALL** support both elements
- `ServiceRequest.supportingInfo` is broad to accommodate a wide variety of use cases by allowing a reference to any resource. 
   - servers **SHALL** ensure references to external resources are only to resources that conform to at least an AU Core profile and the resource type is supported by the Conformance/Capability statement for that endpoint and conform
  - See guidance on the construction of identifiers in each Identifier profile and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.
  - Source system identifiers that identify the business process (order ids) **SHOULD** be included as [AU Local Order Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localorderidentifier.html) to support workflow and deduplication of ServiceRequest resources.
    - See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.
