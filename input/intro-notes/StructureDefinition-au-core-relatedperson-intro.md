See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query about a person related to a patient
- Record or update information about a related person referenced by another resource

### Profile specific implementation guidance
- An individual's IHI **SHOULD** be used in `RelatedPerson.identifier` if available, in preference to Medicare or DVA numbers
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base
- See the [Representing communication preferences](general-guidance.html#representing-communication-preferences) section for guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
- Related person names can be provided as a text representation in `name.text` and/or parts such as `name.family` and `name.given`. 
  - `name.text` specifies the entire name as it should be displayed and this may be provided instead of, or as well as, the specific parts. It is important to note that the presence of parts of a name, e.g. `name.family` and `name.given`, do not imply that `name.text` is known or must be supplied. 
  

