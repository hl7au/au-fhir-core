The Australian Core Data for Interoperability (AUCDI) aims to standardise the capture, structure, usage, and exchange of health data to counteract the current fragmentation of Australia’s health data systems. The AUCDI forms a basis for clinical data requirements for AU Core.

<p class="request-for-feedback">The Australian Core Data for Interoperability (AUCDI) Release 1 Draft for Comment has been released. Information on how to provide feedback is available from this page: <a href="https://confluence.csiro.au/display/FHIR/AUCDI+Release+1">AUCDI Release 1</a>.</p>

### AUCDI mappings into AU Core

The table below maps AUCDI data classes and data elements and the corresponding AU Core FHIR resources and elements. The mappings have been transferred here <a href="https://confluence.hl7.org/display/HAFWG/AUCDI+in+AU+Core+R1">AUCDI in AU Core R1</a> page in Confluence. 

The TDG has agreed on most of the mappings, but consensus is still pending for the following AUCDI classes: 
- Medication use statement
- Procedure completed event
- Biomarkers

These specific mappings are marked in green within the table for clear visibility.

<p class="request-for-feedback">Request for feedback on the usage of resources for the yet-to-be-agreed mappings to facilitate an agreement on AU Core R1 scope for March Ballot. Feedback should be provided through a comment on the Confluence page <a href="https://confluence.hl7.org/display/HAFWG/AUCDI+in+AU+Core+R1">AUCDI in AU Core R1</a>. Questions and discussions can be raised in chat.fhir.org <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1">https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1</a>. We are targeting end of February for a baseline agreement to then refine.<p>

<table border="1" cellspacing="0" cellpadding="0" width="100%">
<thead>
  <tr style="background-color: #f2f2f2;">
    <th>AUCDI Data Class</th>
    <th colspan="2">AUCDI Data Element</th>
    <th>AU Core Profile(s)</th>
    <th>FHIR Element(s)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="3">Adverse reaction risk summary</td>
    <td colspan="2">Substance name</td>
    <td>AU Core AllergyIntolerance</td>
    <td>AllergyIntolerance.code</td>
  </tr>
  <tr>
    <td colspan="2">Manifestation</td>
    <td>AU Core AllergyIntolerance</td>
    <td>AllergyInterolance.reaction</td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core AllergyIntolerance</td>
    <td>AllergyIntolerance.note</td>
  </tr>
  <tr>
    <td rowspan="4">Problem/Diagnosis summary</td>
    <td colspan="2">Problem / Diagnosis name</td>
    <td>AU Core Condition</td>
    <td>Condition.code</td>
  </tr>
  <tr>
    <td colspan="2">Body site</td>
    <td>AU Core Condition</td>
    <td>Condition.code | Condition.bodySite | Condition.extension</td>
  </tr>
  <tr>
    <td colspan="2">Status</td>
    <td>AU Core Condition</td>
    <td>Condition.clinicalStatus</td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core Condition</td>
    <td>Condition.note</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td rowspan="5">Procedure completed event</td>
    <td colspan="2">Procedure name</td>
    <td>AU Core Procedure<br>AU Core Condition</td>
    <td>Procedure.code<br>Condition.code</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Body site</td>
    <td>AU Core Procedure<br>AU Core Condition</td>
    <td>Procedure.code | Procedure.bodySite<br>Condition.code | Condition.bodySite | Condition.extension</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Clinical indication</td>
    <td>AU Core Procedure<br>AU Core Condition</td>
    <td>Procedure.reasonCode | Procedure.reasonReference[x]</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Date performed</td>
    <td>AU Core Procedure<br>AU Core Condition</td>
    <td>Procedure.performed[x] | Procedure.performedDateTime<br>Condition.onsetDateTime</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Comment</td>
    <td>AU Core Procedure<br>AU Core Condition</td>
    <td>Procedure.note<br>Condition.note</td>
  </tr>
  <tr>
    <td rowspan="4">Vaccination administered event</td>
    <td colspan="2">Vaccine name</td>
    <td>AU Core Immunization</td>
    <td>Immunization.vaccineCode</td>
  </tr>
  <tr>
    <td colspan="2">Sequence</td>
    <td>AU Core Immunization</td>
    <td>Immunization.protocolApplied.doseNumber[x]</td>
  </tr>
  <tr>
    <td colspan="2">Date of administration</td>
    <td>AU Core Immunization</td>
    <td>Immunization.occurenceDateTime</td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core Immunization</td>
    <td>Immunization.note</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td rowspan="10">Medication use statement</td>
    <td colspan="2">Medication name</td>
    <td>AU Core MedicationStatement<br>AU Core Medication<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x]<br>MedicationRequest.medication[x]<br>Medication.code</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Clinical indication</td>
    <td>AU Core MedicationStatement<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.reasonCode<br>MedicationStatement.reasonReference<br>MedicationRequest.reasonCode | MedicationRequest.reasonReference</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Strength</td>
    <td>AU Core MedicationStatement<br>AU Core Medication<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x]<br> MedicationRequest.medication[x]<br>Medication.code | Medication.ingredient | Medication.extension[medication-strength]</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Form</td>
    <td>AU Core MedicationStatement<br>AU Core Medication<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x]<br>MedicationRequest.medication[x]<br>Medication.code | Medication.form</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Dose amount</td>
    <td>AU Core MedicationStatement<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.doseAndRate<br>MedicationRequest.dosageInstruction.doseAndRate</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Route of administration</td>
    <td>AU Core MedicationStatement<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.route<br>MedicationRequest.dosageInstruction.route</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Dose timing</td>
    <td>AU Core MedicationStatement<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.timing<br>MedicationRequest.dosageInstruction.timing</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Endpoint</td>
    <td> </td>
    <td></td>
  </tr>
   <tr style="background-color: #a0d6b4;">
    <td colspan="2">Last administration</td>
    <td></td>
    <td></td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td colspan="2">Comment</td>
    <td>AU Core MedicationStatement<br>AU Core MedicationRequest</td>
    <td>MedicationStatement.note<br>MedicationRequest.note</td>
  </tr>
  <tr>
    <td rowspan="3">Sex and gender</td>
    <td colspan="2">Sex assigned at birth</td>
    <td>AU Core Patient</td>
    <td>Patient.extension(individual-recordedSexOrGender)</td>
  </tr>
  <tr>
    <td colspan="2">Gender identity</td>
    <td>AU Core Patient</td>
    <td>Patient.extension(individual-genderIdentity)</td>
  </tr>
  <tr>
    <td colspan="2">Pronoun/s</td>
    <td>AU Core Patient </td>
    <td>Patient.extension(individual-pronouns)</td>
  </tr>
  <tr>
    <td>Tobacco smoking summary</td>
    <td colspan="2">Overall status</td>
    <td>AU Core Smoking Status</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td rowspan="3">Encounter – clinical context</td>
    <td colspan="2">Reason for encounter</td>
    <td>AU Core Encounter</td>
    <td>Encounter.reasonCode | Encounter.reasonReference</td>
  </tr>
  <tr>
    <td colspan="2">Type of encounter</td>
    <td>AU Core Encounter</td>
    <td>Encounter.class</td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td>AU Core Encounter</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="5">Vital signs</td>
    <td rowspan="2">Blood pressure</td>
    <td>Systolic pressure</td>
    <td>AU Core Blood Pressure</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td>Diastolic pressure</td>
    <td>AU Core Blood Pressure</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td>Pulse</td>
    <td>Pulse rate</td>
    <td>AU Core Heart Rate</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td>Body temperature</td>
    <td>Temperature</td>
    <td>AU Core Body Temperature</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td>Respiration</td>
    <td>Rate</td>
    <td>AU Core Respiration Rate</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td rowspan="3">Measurements</td>
    <td>Body height</td>
    <td>Height / Length</td>
    <td>AU Core Body Height</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td>Body weight</td>
    <td>Weight</td>
    <td>AU Core Body Weight</td>
    <td>Observation</td>
  </tr>
  <tr>
    <td>Waist circumference</td>
    <td>Waist circumference</td>
    <td>AU Core Waist  Circumference</td>
    <td>Observation</td>
  </tr>
<tr style="background-color: #a0d6b4;">
    <td rowspan="7">Biomarkers</td>
    <td rowspan="4">Lipids</td>
    <td>HDL cholesterol</td>
    <td>AU Core Biomarker profile<br>AU Core Diagnostic Result profile<br>AU Core Pathology Result Observation<br>AU Core Lipids profile</td>
    <td>Observation</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td>LDL cholesterol</td>
    <td>AU Core Biomarker profile<br>AU Core Diagnostic Result profile<br>AU Core Pathology Result Observation<br>AU Core Lipids profile</td>
    <td>Observation</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td>Total cholesterol</td>
    <td>AU Core Biomarker profile<br>AU Core Diagnostic Result profile<br>AU Core Pathology Result Observation<br>AU Core Lipids profile</td>
    <td>Observation</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td>Triglycerides</td>
    <td>AU Core Biomarker profile<br>AU Core Diagnostic Result profile<br>AU Core Pathology Result Observation<br>AU Core Lipids profile</td>
    <td>Observation</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td>Haemoglobin A1c (HbA1c)</td>
    <td>HbA1c</td>
    <td>AU Core Biomarker profile<br>AU Core Diagnostic Result profile<br>AU Core Pathology Result Observation</td>
    <td>Observation</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td>Estimated glomerular filtration rate (eGFR)</td>
    <td>eGFR</td>
    <td>AU Core Biomarker profile<br>AU Core Diagnostic Result profile<br>AU Core Pathology Result Observation</td>
    <td>Observation</td>
  </tr>
  <tr style="background-color: #a0d6b4;">
    <td>Urine albumin-creatinine ratio (uACR)</td>
    <td>uACR</td>
    <td>AU Core Biomarker profile<br>AU Core Diagnostic Result profile<br>AU Core Pathology Result Observation<br>AU Core Lipids profile</td>
    <td>Observation</td>
  </tr>
</tbody>
</table>

