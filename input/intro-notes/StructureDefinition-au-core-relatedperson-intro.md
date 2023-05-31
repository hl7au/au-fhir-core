### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a related person referenced by another resource
- Read information about a related person referenced by another resource


### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [US Core RelatedPerson](http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson) if RelatedPerson.active is supplied

No equivalent International Patient Access or International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- An individual's IHI **SHOULD** be used in `RelatedPerson.identifier` if available, in preference to Medicare or DVA numbers
- See the [Representing communication preferences](general-guidance.html#representing-communication-preferences) section for guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile

