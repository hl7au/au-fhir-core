### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for records associated with a patient
- Record or update a record associated with a patient
- Query for basic demographics and other administrative information about a patient
- Record or update basic demographics and other administrative information about a patient
- Read information about a patient referenced by another resource


### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Patient](http://hl7.org/fhir/uv/ipa/StructureDefinition-ipa-patient.html)
- [Patient (IPS)](http://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Patient-uv-ips.html)
- [US Core Patient](http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient)

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- An individual's IHI **SHOULD** be used in `Patient.identifier` if available, in preference to Medicare or DVA numbers
- See the [Representing communication preferences](general-guidance.html#representing-communication-preferences) section for guidance
- When constructing an address
  - an international address can be represented using the core [Address](http://hl7.org/fhir/R4/datatypes.html#Address) data type
  - an Australian address **SHOULD** be represented using the [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile
- When exchanging concepts of sex or gender, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/) and [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-au-patient.html)

<p class="request-for-feedback">Specific feedback is sought on proposal to implement support for Gender Harmony Name to Use (NtU) concept in AU Core by making name.use a Must Support element in AU Core Patient.<br/>Please comment on <a href="https://jira.hl7.org/browse/FHIR-43833">Jira issue #FHIR-43833</a>.</p>
