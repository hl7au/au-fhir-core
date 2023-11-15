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

<div class="stu-note"><p>AU Core TDG held a discussion on preferred identifiers to support where an individual is ineligible for an IHI, e.g. tourist or other temporary stay in Australia. Passport was proposed for use (see example <a href="Patient-italia-sofia.html">Patient/italia-sofia</a>).</p><p>AU Core TDG decided this is not a priority for AU Core and will not be addressed in AU Core release 1.</p></div>

<div class="stu-note"><p>AU Core TDG discussed whether MRN is to be a supported identifier for patients.</p><p>AU Core TDG decided that MRN will not be added to the profile as a supported identifier, noting that MRN is still permitted.</p></div>

<div class="stu-note">
<p>AU Core Patient currently supports <a href="https://www.hl7.org/fhir/R4/patient.html#gender">Administrative Gender</a> as Patient.gender.</p>
<p>Specific feedback is sought on the case for inclusion of specific gender and sex use-data elements in AU Core Patient in release 1:
<ol>
<li><a href="https://hl7.org/xprod/ig/uv/gender-harmony/model.html#gender-identity-gi">Gender Identity</a></li>
<li><a href="https://hl7.org/xprod/ig/uv/gender-harmony/model.html#sex-parameter-for-clinical-use-spcu">Sex Parameter for Clinical Use (SPCU)</a></li>
<li><a href="https://hl7.org/xprod/ig/uv/gender-harmony/model.html#recorded-sex-or-gender-rsg">Recorder Sex or Gender (RSG)</a></li>
</ol></p>
<p>Please comment on <a href="https://github.com/hl7au/au-fhir-core/issues/66">au-fhir-core/issues/66</a>.</p>
</div>

