See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update basic information for a location
- Read information about a location referenced by another resource


### Profile specific implementation guidance
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://hl7.org.au/fhir/5.0.0/generalguidance.html#business-identifiers) in AU Base.
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](https://hl7.org.au/fhir/5.0.0/StructureDefinition-au-address.html) data type profile