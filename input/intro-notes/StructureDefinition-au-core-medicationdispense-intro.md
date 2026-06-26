See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query the supply (dispense) of medications for a patient (current and historical)
- Record or update the supply (dispense) of medications for a patient


### Profile Specific Implementation Guidance

<div class="stu-note" markdown="1">

This profile was approved without any profile specific advice, the following material is aligned with similar advice given for the [AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html) profile and is provided to promote discussion:

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

<div class="stu-note">

	<p>This profile was approved without constraints on precision of dates provided the following constraints included to promote discussion:</p>

	<table class="list presentation" data-fhir="generated-heirarchy">
  <tbody><tr>
    <td width="60">
      <b>Id</b>
    </td>
    <td>
      <b>Grade</b>
    </td>
    <td>
      <b>Path(s)</b>
    </td>
    <td>
      <b>Description</b>
    </td>
    <td>
      <b>Expression</b>
    </td>
  </tr>
  <tr>
    <td>au-core-meddisp-01</td>
    <td>error</td>
    <td>MedicationDispense.whenHandedOver</td>
    <td>Date shall be precise to the day or, if not available, the Data Absent Reason extension shall be present</td>
    <td>
      <code>$this.hasValue() implies (extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').value.exists().not() and $this.toString().length() &gt;= 10)</code>
    </td>
  </tr>
  <tr>
    <td>au-core-meddisp-02</td>
    <td>error</td>
    <td>MedicationDispense.whenPrepared</td>
    <td>Date shall be precise to the day or, if not available, the Data Absent Reason extension shall be present</td>
    <td>
      <code>$this.hasValue() implies (extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').value.exists().not() and $this.toString().length() &gt;= 10)</code>
    </td>
  </tr>
</tbody></table>
</div>
