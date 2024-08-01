See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a practitioner in a role referenced by another resource
- Read information about a practitioner in a role referenced by another resource


### Profile specific implementation guidance
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.
- Requesters can request responders return the Practitioner resource using `_include`, see the Notes section below.
