### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for basic information for an organisation by name or identifier
- Recording or updating basic information for an organisation 
- Read information about an organisation referenced by another resource


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [Organization (IPS)](http://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Organization-uv-ips.html)
- and **MAY** be conformant to [US Core Organization](http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization) if Organization.active is supplied

No equivalent International Patient Access profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile

<p class="request-for-feedback">Feedback is requested on the proposal to remove Must Support from Organization.alias. Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44585">FHIR-44585</a>.</p>

<div class="request-for-feedback">
    <p>Feedback is requested on the following search considerations:
    <ul>
        <li>Proposal to weaken conformance requirement so that support for address parameter is not required.</li>
        <li>Query if the existing recommendation in AU Core to support ABN identifiers in identifier parameter search should be removed.</li>
        <li>Proposal to remove support for _revinclude parameter: Provenance:target.</li>
  </ul>
  Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-43837">FHIR-43837</a>.
    </p>
</div>