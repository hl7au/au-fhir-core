See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a practitioner referenced by another resource
- Read information about a practitioner referenced by another resource

### Profile Specific Implementation Guidance
- Even though AU Core Profiles allow both PractitionerRole and Practitioner to be referenced, because PractitionerRole supplies a provider’s location, contact information, and reference to the Practitioner, it **SHOULD** be referenced instead of the Practitioner resource. 
- If a system only supports Practitioner, the system **SHALL** provide implementation specific guidance how to access a provider’s location and contact information using only the Practitioner resource.
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://hl7.org.au/fhir/6.0.0/generalguidance.html#business-identifiers) in AU Base.

