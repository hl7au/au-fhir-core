#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations of estimated date of delivery associated with a patient
- Record or update an observation of estimated date of delivery associated with a patient


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Simple Observation](http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation)
- and **MAY** be conformant to IPS [Observation - Pregnancy: EDD](http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips) if an additional coding is sent in Observtion.code from the set of supported LOINC codes (AU & IPS support the same LOINC concepts)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
{% include observation_coding_guidance.md -%}
- A more specific code is used to indicate the method, for example 738070007 *Estimated date of delivery from antenatal ultrasound scan*
- Antenatal observations will represent the pregnant individual as `Observation.subject` and the fetus as `Observation.focus`

<p class="stu-note">Specific feedback is sought on appropriate category values for Observations relating to pregnancy.</p>

