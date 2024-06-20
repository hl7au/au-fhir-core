[Australian Core Data for Interoperability (AUCDI)](https://sparked.csiro.au/index.php/sparked-products-resources/australian-core-data-for-interoperability/aucdi-release-1/) is the product of a national clinician focussed requirements gathering project operating as part of the [Sparked AU FHIR Accelerator](https://sparked.csiro.au/).  The AUCDI outputs form a set of data requirements to be considered and referred to as part of the development and definition of AU Core. 

The primary intent of the AUCDI is to design and govern a collection of coherent, reusable building blocks known as ‘data groups’. These data groups specify “what” the clinical requirements of the clinical information that should be included for data entry, data use, and sharing of information supporting healthcare delivery. However, it does not specify “how” the data is exchanged; this is the
role fulfilled by the FHIR standard. AUCDI is not required to be implemented as a whole single product. Parts can be
implemented as required for specific use cases.

AUCDI Release 1 (R1) is focused on an agreement of “the core of the core” common data elements; minimum data required to support standardised clinical information capture at the point of care as well as enable the safe and meaningful exchange of information to other care providers. 

AU Core is intended to provide an implementable standard for FHIR based interfaces for provider and patient information systems in Australia​ providing:
- an exchange standard for AUCDI (the underpinning clinical data model)
- Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information​
- be built on top of for standards development for specific use cases

With AUCDI defining clinical data requirements and FHIR AU Core providing detailed FHIR-based profiles for meeting clinical data requirements and administrative data requirements, an interpretation of AUCDI is necessary which is undertaken through the community.

Updates to AU Core depend upon community input and we encourage our audience to submit questions and feedback to AU Core specifications by clicking on the Propose a change link in the footer of every page. In addition, we encourage requesting any necessary clarifications to AUCDI through the AUCDI process that helps inform future updates to FHIR AU Core.

### AUCDI mappings into AU Core

The table below shows the relationship between the AUCDI Data Groups and Elements and AU Core profiles.<br/>
Column attribute descriptions are as follows:
- <b>AUCDI Data Group</b>: Represents a grouping of one or more AUCDI Data Elements.
- <b>AUCDI Data Element</b>: Represents a single, discreet clinical concept defined by AUCDI.
- <b>AU Core Profile(s)</b>: Represents the mapping of AUCDI Data Groups and AUCDI Data Elements to AU Core FHIR artefacts.
- <b>FHIR Path</b>: The specific path in the FHIR standards for each AUCDI Data Element within, showing where and how to implement these elements in FHIR-based systems. 

<table border="1" cellspacing="0" cellpadding="0" width="100%">
<thead>
  <tr style="background-color: #f2f2f2;">
    <th>AUCDI Data Group</th>
    <th colspan="2">AUCDI Data Element</th>
    <th>AU Core Profile(s)</th>
    <th>FHIR Path</th>
    <th>Comment</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="4">Adverse reaction risk summary</td>
    <td colspan="2">Substance name</td>
    <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td>AllergyIntolerance.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Manifestation</td>
    <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td>AllergyInterolance.reaction</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td>AllergyIntolerance.note</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>TBD</td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="5">Problem/Diagnosis summary</td>
    <td colspan="2">Problem / Diagnosis name</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site/laterality</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Status</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.clinicalStatus</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.note</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>TBD</td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="5">Procedure completed event</td>
    <td colspan="2">Procedure name</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td>Procedure.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td>Procedure.reasonCode | Procedure.reasonReference[x]</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site/laterality</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td>Procedure.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date performed</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td>Procedure.performed[x] | Procedure.performedDateTime</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td>Procedure.note</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4">Vaccination administered event</td>
    <td colspan="2">Vaccine name</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td>Immunization.vaccineCode</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Sequence number</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td>Immunization.protocolApplied.doseNumber[x]</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date of administration</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td>Immunization.occurenceDateTime</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td>Immunization.note</td>
    <td></td>
  </tr>
    <tr>
    <td rowspan="2">Tobacco smoking summary</td>
    <td colspan="2">Overall status</td>
    <td><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Last updated</td>
    <td>TBD</td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="9">Medication use statement</td>
    <td colspan="2">Medication name</td>
    <td>AU Core MedicationStatement | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td>MedicationStatement.medication[x] | Medication.code</td>
    <td>Development and testing of AU Core MedicationStatement profile is planned for AU Core R2.</td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.reasonCode | MedicationStatement.reasonReference</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Strength</td>
    <td>AU Core MedicationStatement | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td>MedicationStatement.medication[x] | Medication.code | Medication.ingredient</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Form</td>
    <td>AU Core MedicationStatement | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td>MedicationStatement.medication[x] | Medication.form</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Dose amount</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.dosage.doseAndRate</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Route of administration</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.dosage.route</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Dose timing</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.dosage.timing</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.note</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date of assertion</td>
    <td>TBD</td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="4">Sex and gender summary</td>
    <td colspan="2">Sex assigned at birth</td>
    <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender')</td>
    <td>The <a href="https://build.fhir.org/ig/hl7au/au-fhir-base//StructureDefinition-individual-recordedSexOrGender.html">Person Recorded Sex or Gender extension</a> is profiled by <a href="StructureDefinition-au-core-rsg-sexassignedab.html">AU Core Sex Assigned At Birth (RSG)</a> to represent the concept of Sex assigned at birth.</td>
  </tr>
  <tr>
    <td colspan="2">Gender identity</td>
    <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-genderIdentity')</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Pronoun/s</td>
    <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-pronouns')</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last updated</td>
    <td>TBD</td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="2">Encounter – clinical context</td>
    <td colspan="2">Reason for encounter</td>
    <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
    <td>Encounter.reasonCode | Encounter.reasonReference</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
    <td>Encounter.class</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="15">Measurements and vital signs</td>
    <td rowspan="3">Blood pressure</td>
    <td>Systolic pressure</td>
    <td><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Diastolic pressure</td>
    <td><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="2">Pulse</td>
    <td>Rate</td>
    <td><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of observation</td>
    <td><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td  rowspan="2">Body temperature</td>
    <td>Temperature</td>
    <td><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td  rowspan="2">Respiration</td>
    <td>Rate</td>
    <td><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of observation</td>
    <td><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td  rowspan="2">Body height</td>
    <td>Height / Length</td>
    <td><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td  rowspan="2">Body weight</td>
    <td>Weight</td>
    <td><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td  rowspan="2">Waist circumference</td>
    <td>Waist circumference</td>
    <td><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
<tr>
    <td rowspan="11">Biomarkers</td>
    <td rowspan="5">Lipids</td>
    <td>HDL cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>LDL cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Total cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Triglycerides</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="2">Haemoglobin A1c (HbA1c)</td>
    <td>HbA1c</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="2">Estimated glomerular filtration rate (eGFR)</td>
    <td>eGFR</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
  <tr>
    <td rowspan="2">Urine albumin-creatinine ratio (uACR)</td>
    <td>uACR</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td>TBD</td>
    <td>This data element is added to AUCDI R1; work is underway to map to AU Core.</td>
  </tr>
</tbody>
</table>

