The primary intent of the <a href="https://confluence.csiro.au/display/FHIR/AUCDI+Release+1">Australian Core Data for Interoperability (AUCDI)</a> is to design and govern a collection of coherent, reusable building blocks known as ‘data groups’. These data groups specify “what” the clinical requirements of the clinical information that should be included for data entry, data use, and sharing of information supporting healthcare delivery. However, it does not specify “how” the data is exchanged; this is the
role fulfilled by the FHIR standard. AUCDI is not required to be implemented as a whole single product. Parts can be
implemented as required for specific use cases.

AUCDI Release 1 (R1) is focused on an agreement of “the core of the core” common data elements; minimum data required to support standardised clinical information capture at the point of care as well as enable the safe and meaningful exchange of information to other care providers. 

AU Core is intended to provide an implementable standard for FHIR based interfaces for provider and patient information systems in Australia​ providing:
- an exchange standard for AUCDI (the underpinning clinical data model)
- Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information​
- be built on top of for standards development for specific use cases

With AUCDI defining clinical data requirements and FHIR AU Core providing detailed FHIR-based profiles for meeting clinical data requirements and administrative data requirements, an interpretation of AUCDI is necessary which is undertaken through the community.

Updates to AU Core depend upon community input and we encourage our audience to submit questions and feedback to AU Core specifications by clicking on the Propose a change link in the footer of every page. In addition, we encourage requesting any necessary clarifications to AUCDI through the <a href="https://confluence.csiro.au/display/FHIR/AUCDI+Release+1">AUCDI process</a> that helps inform future updates to FHIR AU Core.

<p class="request-for-feedback">The Australian Core Data for Interoperability (AUCDI) Release 1 Draft for Comment has been released. Information on how to provide feedback is available from this page: <a href="https://confluence.csiro.au/display/FHIR/AUCDI+Release+1">AUCDI Release 1</a>.</p>

### AUCDI mappings into AU Core

The table below shows the relationship between the AUCDI Data Groups and Elements and AU Core profiles.

<p class="request-for-feedback">Request for feedback on resource selection and profile mapping for the following AUCDI classes:<br/> 
- Medication use statement<br/>
- Procedure completed event<br/>
- Biomarkers<br/>.<p>

<table border="1" cellspacing="0" cellpadding="0" width="100%">
<thead>
  <tr style="background-color: #f2f2f2;">
    <th>AUCDI Data Class</th>
    <th colspan="2">AUCDI Data Element</th>
    <th>AU Core Profile(s)</th>
    <th>FHIR Path</th>
    <th>Comment</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="3">Adverse reaction risk summary</td>
    <td colspan="2">Substance name</td>
    <td>AU Core AllergyIntolerance</td>
    <td>AllergyIntolerance.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Manifestation</td>
    <td>AU Core AllergyIntolerance</td>
    <td>AllergyInterolance.reaction</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core AllergyIntolerance</td>
    <td>AllergyIntolerance.note</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4">Problem/Diagnosis summary</td>
    <td colspan="2">Problem / Diagnosis name</td>
    <td>AU Core Condition</td>
    <td>Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site</td>
    <td>AU Core Condition</td>
    <td>Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Status</td>
    <td>AU Core Condition</td>
    <td>Condition.clinicalStatus</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core Condition</td>
    <td>Condition.note</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="5">Procedure completed event</td>
    <td colspan="2">Procedure name</td>
    <td>AU Core Procedure | AU Core Condition</td>
    <td>Procedure.code | Condition.code</td>
    <td>For Medical History items, it is difficult to distinguish between history of a procedure and a problem/diagnosis. Feedback is sought on the appropriateness of using either the Condition resource or Procedure resource (or both) to represent a procedure completed event. See the discussion in chat.fhir.org: <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/Medical.20History.20as.20Condition.20and.2For.20Procedure">https://chat.fhir.org/#narrow/stream/179173-australia/topic/Medical.20History.20as.20Condition.20and.2For.20Procedure</a>.</td>
  </tr>
  <tr>
    <td colspan="2">Body site</td>
    <td>AU Core Procedure | AU Core Condition</td>
    <td>Procedure.code | Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td>AU Core Procedure | AU Core Condition</td>
    <td>Procedure.reasonCode | Procedure.reasonReference[x]</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date performed</td>
    <td>AU Core Procedure<br>AU Core Condition</td>
    <td>Procedure.performed[x] | Procedure.performedDateTime<br>Condition.onsetDateTime</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core Procedure| AU Core Condition</td>
    <td>Procedure.note | Condition.note</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4">Vaccination administered event</td>
    <td colspan="2">Vaccine name</td>
    <td>AU Core Immunization</td>
    <td>Immunization.vaccineCode</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Sequence</td>
    <td>AU Core Immunization</td>
    <td>Immunization.protocolApplied.doseNumber[x]</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date of administration</td>
    <td>AU Core Immunization</td>
    <td>Immunization.occurenceDateTime</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core Immunization</td>
    <td>Immunization.note</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="10">Medication use statement</td>
    <td colspan="2">Medication name</td>
    <td>AU Core MedicationStatement | AU Core Medication | AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x] | MedicationRequest.medication[x] | Medication.code</td>
    <td>Feedback is sought on the appropriateness of using either the MedicationStatement resource or MedicationRequest resource (or both) to represent a medication use statement. See the discussion in chat.fhir.org: <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/MedicationRequest.20or.20MedicationStatement">https://chat.fhir.org/#narrow/stream/179173-australia/topic/MedicationRequest.20or.20MedicationStatement</a>.</td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.reasonCode | MedicationStatement.reasonReference | MedicationRequest.reasonCode | MedicationRequest.reasonReference</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Strength</td>
    <td>AU Core MedicationStatement | AU Core Medication | AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x] | MedicationRequest.medication[x] | Medication.code | Medication.ingredient</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Form</td>
    <td>AU Core MedicationStatement | AU Core Medication | AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x] | MedicationRequest.medication[x]<br>Medication.code | Medication.form</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Dose amount</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.doseAndRate | MedicationRequest.dosageInstruction.doseAndRate</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Route of administration</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.route | MedicationRequest.dosageInstruction.route</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Dose timing</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.timing | MedicationRequest.dosageInstruction.timing</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Endpoint</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.effectivePeriod.end | MedicationRequest.validityPeriod.end</td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Last administration</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td></td>
    <td>Feedback is sought on the potential mapping for this AUCDI element.</td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.note | MedicationRequest.note</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Sex and gender</td>
    <td colspan="2">Sex assigned at birth</td>
    <td>AU Core Patient</td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender')</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Gender identity</td>
    <td>AU Core Patient</td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-genderIdentity')</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Pronoun/s</td>
    <td>AU Core Patient </td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-pronouns')</td>
    <td></td>
  </tr>
  <tr>
    <td>Tobacco smoking summary</td>
    <td colspan="2">Overall status</td>
    <td>AU Core Smoking Status</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Encounter – clinical context</td>
    <td colspan="2">Reason for encounter</td>
    <td>AU Core Encounter</td>
    <td>Encounter.reasonCode | Encounter.reasonReference</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Type of encounter</td>
    <td>AU Core Encounter</td>
    <td>Encounter.class</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td>AU Core Encounter</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="5">Vital signs</td>
    <td rowspan="2">Blood pressure</td>
    <td>Systolic pressure</td>
    <td>AU Core Blood Pressure</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Diastolic pressure</td>
    <td>AU Core Blood Pressure</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Pulse</td>
    <td>Pulse rate</td>
    <td>AU Core Heart Rate</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Body temperature</td>
    <td>Temperature</td>
    <td>AU Core Body Temperature</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Respiration</td>
    <td>Rate</td>
    <td>AU Core Respiration Rate</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Measurements</td>
    <td>Body height</td>
    <td>Height / Length</td>
    <td>AU Core Body Height</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Body weight</td>
    <td>Weight</td>
    <td>AU Core Body Weight</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Waist circumference</td>
    <td>Waist circumference</td>
    <td>AU Core Waist  Circumference</td>
    <td>Observation</td>
    <td></td>
  </tr>
<tr>
    <td rowspan="7">Biomarkers</td>
    <td rowspan="4">Lipids</td>
    <td>HDL cholesterol</td>
    <td>AU Core Diagnostic Result | AU Core Pathology Result Observation<br>AU Core Biomarker</td>
    <td>Observation</td>
    <td>Feedback is sought on the appropriateness of developing a specific AU Core Biomarker profile or to use either AU Core Diagnostic Result or AU Core Pathology Result Observation. Questions or feedback can be posted to See the discussion in chat.fhir.org: <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1">https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1</a></td>
  </tr>
  <tr>
    <td>LDL cholesterol</td>
    <td>AU Core Diagnostic Result | AU Core Pathology Result Observation<br>AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Total cholesterol</td>
    <td>AU Core Diagnostic Result | AU Core Pathology Result Observation<br>AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Triglycerides</td>
    <td>AU Core Diagnostic Result | AU Core Pathology Result Observation<br>AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Haemoglobin A1c (HbA1c)</td>
    <td>HbA1c</td>
    <td>AU Core Diagnostic Result | AU Core Pathology Result Observation<br>AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Estimated glomerular filtration rate (eGFR)</td>
    <td>eGFR</td>
    <td>AU Core Diagnostic Result | AU Core Pathology Result Observation<br>AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Urine albumin-creatinine ratio (uACR)</td>
    <td>uACR</td>
    <td>AU Core Diagnostic Result | AU Core Pathology Result Observation<br>AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
</tbody>
</table>

