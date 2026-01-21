See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query about a person related to a patient
- Record or update information about a related person referenced by another resource

### Profile Specific Implementation Guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](https://hl7.org.au/fhir/6.0.0/StructureDefinition-au-address.html) data type profile
- Related person names can be provided as a text representation in `name.text` and/or parts such as `name.family` and `name.given`. 
  - `name.text` specifies the entire name as it is intended to be displayed. This may be provided instead of, or as well as, the specific parts. It is important to note that the presence of parts of a name, e.g. `name.family` and `name.given`, do not imply that `name.text` is known or needs to be supplied. 
  - In this profile, the following sub-elements of `name` are marked as *Must Support*: `name.use`, `name.text`, `name.family`, and `name.given`
    - responders are required to support at least one of the following sub-elements: `name.text`, `name.family`, and `name.given`
    - requesters are required to support all sub-elements marked *Must Support*: `name.use`, `name.text`, `name.family`, and `name.given`
- See the section on [Representing Communication Preferences](https://hl7.org.au/fhir/6.0.0/generalguidance.html#representing-communication-preferences) for guidance on how to represent languages that can be used to communicate with the related person about a patient's health including preferred language and if an interpreter is required.