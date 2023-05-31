### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of oxygen saturation associated with a patient
- Record or update an observation of oxygen saturation associated with a patient


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [observation-oxygensat](http://hl7.org/fhir/R4/observation-oxygensat.html)
  - and therefore conformant to [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips)
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)

Analysis on equivalency of conformance to [US Core Pulse Oximetry](http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry) is outstanding.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
{% include observation_vitalsigns_guidance.md -%}




