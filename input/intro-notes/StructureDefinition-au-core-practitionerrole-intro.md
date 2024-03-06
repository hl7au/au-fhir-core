### Usage scenarios

The following are supported usage scenarios for this profile:

- Record or update information about a practitioner in a role referenced by another resource
- Read information about a practitioner in a role referenced by another resource


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-PractitionerRole](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-practitionerrole.html)
- [PractitionerRole (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition-PractitionerRole-uv-ips.html)
- and **MAY** be conformant to [US Core PractitionerRole](http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole) noting that AU Core does not enforce the US Core constraint **pd-1**: SHALL have contact information or a reference to an Endpoint

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.

<p class="request-for-feedback">Specific feedback is sought on whether the location element should be removed from this profile.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43841">FHIR-43841</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on the proposal to remove the mandatory requirement to support _revinclude of Provenance.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43850">FHIR-43850</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on supporting the mandatory search parameter to search PractitionerRole using practitioner by reference, and if a search via a chained practitioner.identifier could be a more effective approach.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43839">FHIR-43839</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on supporting search for organization by reference vs chained searching using organization.identifier.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43839">FHIR-43839</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on proposal to remove support for searching using HPI-I identifier, as it is not supported by AU Core PractitionerRole.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43839">FHIR-43839</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on the use of code-only in an identifier search parameter, along with a recommendation to explicitly specify a single type of identifier (or an explicit list) for greater quality.<br/>Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43839">FHIR-43839</a>.</p>

<p class="request-for-feedback">Specific feedback is sought on the proposal to remove the mandatory requirement to support _revinclude of Provenance.<br/>Please comment on Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43850">FHIR-43850</a>.</p>