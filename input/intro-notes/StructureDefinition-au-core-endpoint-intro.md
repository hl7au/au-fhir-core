See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for an endpoint
- Record or update endpoint information

### Profile Specific Implementation Guidance

- This profile does not define conformance expectations for how any particular kind of technical endpoint is represented. The examples in this guide illustrate representations that are in use, they are not a recommended or required pattern for a connection type.
- The type of environment exposed at an endpoint, for example a production or a development environment, is not a Must Support element in this profile. Where a system needs to convey it, [AU Base Endpoint](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-endpoint.html) defines an `environmentType` element using the R5 pre-adoption extension [Endpoint.environmentType](http://hl7.org/fhir/5.0/StructureDefinition/extension-Endpoint.environmentType).
