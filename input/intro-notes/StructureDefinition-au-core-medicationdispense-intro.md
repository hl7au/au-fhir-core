See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query the supply (dispense) of medications for a patient (current and historical)
- Record or update the supply (dispense) of medications for a patient


### Profile Specific Implementation Guidance

<div class="stu-note" markdown="1">

	This profile was approved without any profile specific advice, the following material is aligned with similar advice given for the [AU Core MedicationRequest]() profile and is provided to promote discussion:

- See the [Medicine Information](medicine-information.html) page for guidance on how medicinal product identification can be structured in FHIR conformant to AU Core.
- MedicationDispense resources can represent a medication using either a code as `MedicationDispense.medicationCodeableConcept`, or reference a [Medication](http://hl7.org/fhir/R4/medication.html) resource using `MedicationDispense.medicationReference`.
  - Responders are not required to support both a code and a reference, but **SHALL** support *at least one* of these methods
  - When referencing a Medication resource, it is preferred the resource is [contained](http://hl7.org/fhir/R4/references.html#contained) but it may be an external resource
  - If an external reference to a Medication resource is used, the responder **SHALL** support the `_include` parameter for searching this element
  - A requester **SHALL** support all methods
- When populating `MedicationDispense.medicationCodeableConcept` responders **SHALL** correctly populate `MedicationDispense.medicationCodeableConcept.coding` with either a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, if a coded value is known and **MAY** populate with a code from another code system.
  - Responders **MAY** populate with only text if no coded value is known.
- `MedicationDispense.authorizingPrescription` references the [AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html) (i.e. the prescription) that authorised the supply, where this is known.

</div>

<div class="stu-note" markdown="1">

	This profile was approved without constraints on precision of dates provided the following is included to promote discussion:

	<table class="list" data-fhir="generated-heirarchy">
  <tbody><tr>
    <td>
      <b>Path</b>
    </td>
    <td>
      <b>Status</b>
    </td>
    <td>
      <b>Usage</b>
    </td>
    <td>
      <b>ValueSet</b>
    </td>
    <td>
      <b>Version</b>
    </td>
    <td>
      <b>Source</b>
    </td>
  </tr>
  <tr>
    <td>MedicationDispense.medication[x]:medicationCodeableConcept.&ZeroWidthSpace;coding:pbs</td>
    <td>Base</td>
    <td>
      <a style="opacity: 1.0" href="http://hl7.org/fhir/R4/terminologies.html#Enumeration[required]">required</a>
    </td>
    <td>
      <a style="opacity: 0.5" href="https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-pbs-item.html">PBS Item Codes</a>
      <button data-clipboard-text="http://terminology.hl7.org.au/ValueSet/pbs-item" title="" class="btn-copy" data-original-title="Click to copy URL" fdprocessedid="psbdln"></button>
    </td>
    <td title="Version is not explicitly stated, which means it is fixed to 6.0.1-ci-build, the version found through the package references">📦6.0.1-ci-build</td>
    <td>
      <a href="https://build.fhir.org/ig/hl7au/au-fhir-base/">AU Base Implementation Guide vnull</a>
    </td>
  </tr>
  <tr>
    <td>MedicationDispense.medication[x]:medicationCodeableConcept.&ZeroWidthSpace;coding:amt</td>
    <td>Base</td>
    <td>
      <a style="opacity: 1.0" href="http://hl7.org/fhir/R4/terminologies.html#Enumeration[required]">required</a>
    </td>
    <td>
      <a style="opacity: 0.5" href="https://tx.hl7.org.au/fhir/ValueSet/australian-medication-1">Australian Medication</a>
      <button data-clipboard-text="https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1" title="" class="btn-copy" data-original-title="Click to copy URL" fdprocessedid="pw94cb"></button>
      <img src="external.png" alt=".">
    </td>
    <td style="opacity: 0.5" title="Version is not explicitly stated. When building this specification, the most recent version 1.0.2 has been used">⏿1.0.2</td>
    <td>
      <a href="https://tx.hl7.org.au/fhir">tx.hl7.org.au</a>
    </td>
  </tr>
</tbody></table>

</div>
