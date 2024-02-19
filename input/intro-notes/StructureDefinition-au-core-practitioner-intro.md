### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a practitioner referenced by another resource
- Read information about a practitioner referenced by another resource


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Practitioner](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-practitioner.html)
- [Practitioner (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-Practitioner-uv-ips.html)
- and **MAY** be conformant to [US Core Practitioner](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner) if Practitioner.identifier is supplied

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.

### Gender Identity and related concepts

Gender Identity (GI)

By making Individual Gender Identity a Must Support data element, this profile explicitly supports representation and exchange of the Gender Identity data element (as defined in the [ HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)).

Pronouns

By making Individual Pronouns a Must Support data element, this profile explicitly supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)).

### Profile specific implementation guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
- Because PractitionerRole supplies a provider’s location, contact information, and reference to the Practitioner, it **SHOULD** be referenced in `CareTeam.member` instead of the Practitioner resource. If a system only supports Practitioner, the system **SHALL** provide implementation specific guidance how to access a provider’s location and contact information using only the Practitioner resource.
- This profile supports practitioner's gender identity aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) using the [genderIdentity extension](http://hl7.org/fhir/StructureDefinition/patient-genderIdentity) and [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) value set.
  - *Man or male* may be represented by sending the SNOMED CT code 446151000124109\|Identifies as male gender\|
  - *Woman or female* may be represented by sending the SNOMED CT code 446141000124107\|Identifies as female gender\|
  - *Non-binary* may be represented by sending the SNOMED CT code 33791000087105\|Identifies as nonbinary gender\|, see example [Patient/example4](Patient-example4.html)
  - *[I/They] use a different term (please specify)*  may be represented by sending only text and no code, see example [Patient/example7](Patient-example7.html)
  - *Prefer not to answer* may be represented by sending the code "asked-declined", see example [Patient/example0](Patient-example0.html)
  - *Not stated or inadequately described* may be represented by the code "unknown"
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).

<p class="request-for-feedback">Specific feedback is sought on the proposal to remove Must Support from Practitioner.qualification.period and Practitioner.qualification.issuer, as their inclusion in AU Core may be premature without clear support from existing systems.  Additionally, issuer can be derived from the AHPRA identifier assigner. <br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44587">FHIR-44587</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on the proposal to remove Must Support from Practitioner.communication, as its inclusion in AU Core may be premature without clear support from existing systems.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44588">FHIR-44588</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on the proposal to remove the mandatory requirement to support _revinclude of Provenance.<br/>Please comment on <a href="https://jira.hl7.org/browse/FHIR-43850">Jira issue #FHIR-43850</a>.</p>