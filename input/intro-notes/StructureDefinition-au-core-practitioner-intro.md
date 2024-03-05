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
    <p>Specific feedback is sought on the following proposals regarding the Practitioner resource. Please provide your comments on the corresponding HL7 Jira items.</p>
    <ul>
        <li>Removal of Must Support from Practitioner.qualification.period and Practitioner.qualification.issuer, as their inclusion in AU Core may be premature without clear support from existing systems. Additionally, issuer can be derived from the AHPRA identifier assigner: <a href="https://jira.hl7.org/browse/FHIR-44587">FHIR-44587</a></li>
        <li>Removal of Must Support from Practitioner.communication as its inclusion in AU Core may be premature without clear support from existing systems: <a href="https://jira.hl7.org/browse/FHIR-44588">FHIR-44588</a></li>
        <li>Removal of the mandatory requirement to support _revinclude of Provenance: <a href="https://jira.hl7.org/browse/FHIR-43850">FHIR-43850</a></li>
    </ul>    
</div>