#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for diagnostic imaging results for a patient
- Query for category of diagnostic imaging results (e.g. all x-ray)
- Record or update diagnostic imaging results belonging to a patient


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- and **MAY** be conformant to
    - [Observation Results: radiology (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips) if patient is supported as Observation.subject.reference, Observation.status is `final`, and Observation.performer is supplied, noting that IPS extensibly binds Observation.code to LOINC
    - [US Core Observation Clinical Result](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result) noting that US Core extensibly binds Observation.code to LOINC and restricts Observation.quantity[x] to UCUM for coded quantity units

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
{% include observation_diagnostics_guidance.md -%}

<p class="stu-note">Specific feedback is sought on supporting complex body site information in Observations. Coded laterality (or other qualifiers) can be supplied using a post-coordinated concept e.g. Observation.bodySite.coding.code="71341001:272741003=7771000" (see <a href="Observation-bonedensity-simple-precon.html">Observation/bonedensity-simple-precon</a>) or by use of the extension <a href="http://hl7.org/fhir/R4/extension-bodysite.html">bodySite</a> to reference a BodyStructure resource a contained BodyStructure (see example <a href="Observation-bonedensity-simple-contained.html">Observation/bonedensity-simple-contained</a>). Additional body site information can only be supported by referenced BodyStructure resource.</p>


