### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for diagnostic results for a patient
- Query for category of diagnostic results (e.g. all cardiology results)
- Record or update a diagnostic result for a patient


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- and **MAY** be conformant to
    - [Observation Results (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips) if patient is supported as Observation.subject.reference and Observation.status is `final`
    - [US Core Observation Clinical Result](http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result) noting that US Core extensibly binds Observation.code to LOINC and restricts Observation.quantity[x] to UCUM for coded quantity units

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
{% include observation_diagnostics_guidance.md -%}
- Source system identifiers that identify the business process (order ids and reporting identifiers) **MAY** be included as [AU Local Order Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localorderidentifier.html) and [AU Local Report Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localreportidentifier.html) to support workflow and deduplication of Observation resources.
  - See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.