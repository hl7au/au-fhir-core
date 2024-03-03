### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for Provenance records associated with a specific FHIR resource
- Query for Provenance records associated with all FHIR resources of a specific type

### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [US Core Provenance](http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-provenance.html) if all instances of Provenance.agent.onBehalfOf are supplied as Organization

No equivalent International Patient Access or International Patient Summary profile.

A resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY** conform to AU Core.


### Profile specific implementation guidance
- see guidance in the core FHIR specification on [using the provenance resource](http://hl7.org/fhir/R4/provenance.html#using)

<div class="request-for-feedback">
    <p>We seek specific feedback on the following proposals regarding the AllergyIntolerance resource. Please provide your comments on the corresponding HL7 Jira items:
    <ul>
        <li>Proposal to remove the mandatory requirement to support <code>_revinclude</code> of Provenance: <a href="https://jira.hl7.org/browse/FHIR-43850">https://jira.hl7.org/browse/FHIR-43850</a></li>
        <li>The need for AU Core to support targeted Provenance. Provenance.target may point at a specific element within the targeted resource using the <a href="http://hl7.org/fhir/extensions/StructureDefinition-targetElement.html">target element extension</a> or <a href="http://hl7.org/fhir/extensions/StructureDefinition-targetPath.html">target path extension</a>. These extensions are only available at this time in R5 but can be supported in R4 AU Core if needed.</li>
    </ul>
    </p>
</div>

