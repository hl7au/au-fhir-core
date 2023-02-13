Systems may deploy, and support, one or more AU Core profiles (i.e. the profiles governed by this guide) to represent clinical information. Each profile defines the FHIR structures required, the data element definitions, their associated rules of usage including the use of extensions and terminology, references the additional profiles necessary to assert conformance.

A system **SHOULD** support all AU Core profiles unless the system does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialised role in clinical or information workflows. For example, a pathology laboratory may support [AU Core DiagnosticReport](StructureDefinition-au-diagnosticreport-core-1.html), but not [AU Core MedicationRequest](StructureDefinition-au-medicationrequest-core-1.html).

To support an AU Core profile:
- systems **SHALL** be able to populate all profile data elements that are mandatory and/or flagged as Must Support as defined by that profile’s StructureDefinition according to the section on [Must Support](must-support.html)
  - systems **SHALL** support all referenced profiles necessary to implement this profile
  - meta.profile **MAY** be populated in a resource to indicate the set of profiles a resource is declared to conform to 
- systems **SHOUD** declare conformance with the profile(s) by specifying the full capability details for that profile it claims to implement by
  - including its official URL in the server’s `CapabilityStatement.rest.resource.supportedProfile` element 
  - listing the supported FHIR RESTful transactions
- systems **SHALL NOT** conform to a Core profile where a more specific profile is applicable

To support an AU Core CapabilityStatement:
- systems **SHALL** declare conformance with the **TBD CapabilityStatement**  by including its official URL in the server’s `CapabilityStatement.instantiates` element: `http://hl7.org.au/fhir/core/Structure/CapabilityStatement/au-core-tbd`
- systems **SHALL** specify the full capability details for that CapabilityStatement it claims to implement by
  - TBC









