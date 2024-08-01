See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for pathology results for a patient
- Query for category of pathology results (e.g. all chemistry)
- Record or update pathology results belonging to a patient


### Profile specific implementation guidance
{% include observation_diagnostics_guidance.md -%}
- Unless the specimen is explicitly clear in `Observation.code`, specimen information **SHOULD** be made available in `Observation.specimen`.
- Source system identifiers that identify the business process (order ids and reporting identifiers) **MAY** be included as [AU Local Order Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localorderidentifier.html) and [AU Local Report Identifier](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-localreportidentifier.html) to support workflow and deduplication of Observation resources.
  - See guidance on the construction of an identifier on the relevant Identifier profile page and the section on [Business Identifiers](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#business-identifiers) in AU Base.
