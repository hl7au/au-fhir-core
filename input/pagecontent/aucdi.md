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
    <td rowspan="4">Problem/Diagnosis summary</td>
    <td colspan="2">Problem / Diagnosis name</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td>Condition.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site</td>
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
    <td rowspan="5">Procedure completed event</td>
    <td colspan="2">Procedure name</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td>Procedure.code</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site</td>
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
    <td colspan="2">Sequence</td>
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
    <td rowspan="10">Medication use statement</td>
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
    <td colspan="2">Endpoint</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.effectivePeriod.end</td>
    <td></td>
  </tr>
   <tr>
    <td colspan="2">Last administration</td>
    <td>AU Core MedicationStatement</td>
    <td></td>
    <td>Feedback is requested on the potential mapping for this AUCDI element.</td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.note</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Sex and gender</td>
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
    <td>Tobacco smoking summary</td>
    <td colspan="2">Overall status</td>
    <td><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Encounter – clinical context</td>
    <td colspan="2">Reason for encounter</td>
    <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
    <td>Encounter.reasonCode | Encounter.reasonReference</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Type of encounter</td>
    <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
    <td>Encounter.class</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="5">Vital signs</td>
    <td rowspan="2">Blood pressure</td>
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
    <td>Pulse</td>
    <td>Pulse rate</td>
    <td><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
    <td>Observation</td>
    <td>Feedback is requested on the proposal to clarify how to exchange pulse rate. Please comment on HL7 Jira <a href="https://jira.hl7.org/browse/FHIR-44861">FHIR-44861</a>.</td>
  </tr>
  <tr>
    <td>Body temperature</td>
    <td>Temperature</td>
    <td><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Respiration</td>
    <td>Rate</td>
    <td><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Measurements</td>
    <td>Body height</td>
    <td>Height / Length</td>
    <td><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Body weight</td>
    <td>Weight</td>
    <td><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Waist circumference</td>
    <td>Waist circumference</td>
    <td><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
    <td>Observation</td>
    <td></td>
  </tr>
<tr>
    <td rowspan="7">Biomarkers</td>
    <td rowspan="4">Lipids</td>
    <td>HDL cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a> | <a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a> | AU Core Biomarker</td>
    <td>Observation</td>
    <td>Feedback is requested on the appropriateness of developing a specific AU Core Biomarker profile or to use either AU Core Diagnostic Result or AU Core Pathology Result Observation. Questions or feedback can be posted to See the discussion in chat.fhir.org: <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1">https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1</a></td>
  </tr>
  <tr>
    <td>LDL cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a> | <a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a> | AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Total cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a> | <a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a> | AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Triglycerides</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a> | <a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a> | AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Haemoglobin A1c (HbA1c)</td>
    <td>HbA1c</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a> | <a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a> | AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Estimated glomerular filtration rate (eGFR)</td>
    <td>eGFR</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a> | <a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a> | AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
  <tr>
    <td>Urine albumin-creatinine ratio (uACR)</td>
    <td>uACR</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a> | <a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a> | AU Core Biomarker</td>
    <td>Observation</td>
    <td></td>
  </tr>
</tbody>
</table>

