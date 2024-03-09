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


### Profile specific implementation guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
- Because PractitionerRole supplies a provider’s location, contact information, and reference to the Practitioner, it **SHOULD** be referenced in `CareTeam.member` instead of the Practitioner resource. If a system only supports Practitioner, the system **SHALL** provide implementation specific guidance how to access a provider’s location and contact information using only the Practitioner resource.
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.

<div class="request-for-feedback">
    <p>Feedback is requested on the proposals to remove Must Support from the following elements:
    <ul>
        <li>Practitioner.qualification.period and Practitioner.qualification.issuer: please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44587">FHIR-44587</a>.</li>
        <li>Practitioner.communication: please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44588">FHIR-44588</a>.</li>
       <li>Practitioner.address and Practitioner.telecom: please comment on HL7 JIRA <a href="https://jira.hl7.org/browse/FHIR-43860">FHIR-43860</a>.</li>
    </ul>
    </p>
</div>

<p class="request-for-feedback">Feedback is requested on the proposal on Practitioner.name to put Must Support on parts of Practitioner.name and make Practitioner.name.family mandatory. Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44819">FHIR-44819</a>.</p>
