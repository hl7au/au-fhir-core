See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for records associated with a patient
- Record or update a record associated with a patient
- Query for basic demographics and other administrative information about a patient
- Record or update basic demographics and other administrative information about a patient
- Read information about a patient referenced by another resource

### Profile specific implementation guidance
- An individual's IHI **SHOULD** be used in `Patient.identifier` if available, in preference to Medicare or DVA numbers.
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#business-identifiers) in AU Base.
- This profile supports the sex, gender, and related concepts of: Name to Use, Gender Identity, and Individual Pronouns. See the [Sex and Gender](sex-and-gender.html) page for guidance on exchanging sex and gender related concepts conformant to AU Core.
  - Sex Assigned at Birth is not marked as *Must Support* but may be exchanged using the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html)
- When constructing an address:
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
 - Patient names can be provided as a text representation in `name.text` and/or parts such as `name.family` and `name.given`. 
  - `name.text` specifies the entire name as it is intended to be displayed. This may be provided instead of, or as well as, the specific parts. It is important to note that the presence of parts of a name, e.g. `name.family` and `name.given`, do not imply that `name.text` is known or needs to be supplied. 
  - In this profile, the following sub-elements of `name` are marked as *Must Support*: `name.use`, `name.text`, `name.family`, and `name.given`
    - responders are required to support at least one of the following sub-elements: `name.text`, `name.family`, and `name.given`
    - requesters are required to support all sub-elements marked *Must Support*: `name.use`, `name.text`, `name.family`, and `name.given`
- See the section on [Representing communication preferences](http://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#representing-communication-preferences) for guidance on how to represent languages that may be used to communicate with the patient about their health including preferred language and if an interpreter is required.