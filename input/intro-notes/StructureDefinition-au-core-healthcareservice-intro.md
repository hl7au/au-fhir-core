#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for basic information for a healthcare service by name or identifier
- Record or update basic information for a healthcare service
- Read information about a healthcare service referenced by another resource


#### Comparison with other national and international specifications

No equivalent International Patient Access, International Patient Summary, or US Core profile.


#### Profile specific implementation guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile