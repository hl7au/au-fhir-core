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

<div class="request-for-feedback">
  <p>We seek specific feedback on the following proposals regarding the Organization resource. Please provide your comments on the corresponding HL7 Jira items:</p>
  <ul>
    <li>Removal of Must Support from <code>Organization.alias</code>, , as its inclusion in AU Core may be premature without clear support from existing systems: <a href="https://jira.hl7.org/browse/FHIR-44585">FHIR-44585</a></li>
    <li>Supporting search on <code>Organization.address</code> vs <code>Organization.contact.address</code>. The core FHIR search parameter <code>address</code> searches in <code>Organization.contact.address</code>. There is no core FHIR search parameter that searches <code>Organization.address</code>.</li>
    <li>Supporting mandatory search parameter for <code>address</code>,  and whether it could pose challenges in primary care or hospital systems: <a href="https://jira.hl7.org/browse/FHIR-43837">FHIR-43837</a></li>
    <li>Purpose of searching by ABN in a primary care system, especially when there is likely to be only one ABN: <a href="https://jira.hl7.org/browse/FHIR-43837">FHIR-43837</a></li>
    <li>Removal of the mandatory requirement to support <code>_revinclude</code> of Provenance: <a href="https://jira.hl7.org/browse/FHIR-43837">FHIR-43837</a></li>
  </ul>
</div>