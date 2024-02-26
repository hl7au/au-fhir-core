The Australian Core Data for Interoperability (AUCDI) aims to standardise the capture, structure, usage, and exchange of health data to counteract the current fragmentation of Australia’s health data systems. The AUCDI forms a basis for clinical data requirements for AU Core.

<p class="request-for-feedback">The Australian Core Data for Interoperability (AUCDI) Release 1 Draft for Comment has been released. Information on how to provide feedback is available from this page: <a href="https://confluence.csiro.au/display/FHIR/AUCDI+Release+1">AUCDI Release 1</a>.</p>

### AUCDI mappings into AU CORE

The table below will map map AUCDI data classes and data elements to AU Core resources and elements.

Note that:

- AUCDI data classes and element names may not be the same as FHIR AU Core resource names and elements names.
- AUCDI data classes and elements may map to multiple FHIR AU Core resources.
- Not all AU Core resources and elements will map to AUCDI. This is because AU Core R1 incorporates extra resources and elements to address areas of high community interest and to include necessary elements for the effective implementation of FHIR.

<p class="request-for-feedback">We are seeking feedback on proposed mappings on Confluence page <a href="https://confluence.hl7.org/display/HAFWG/AUCDI+in+AU+Core+R1">AUCDI in AU Core R1</a>. Feedback should be provided through a comment on the Confluence page <a href="https://confluence.hl7.org/display/HAFWG/AUCDI+in+AU+Core+R1">AUCDI in AU Core R1</a>. Questions and discussions can be raised in chat.fhir.org <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1">https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1</a>. We are targeting end of February for a baseline agreement to then refine.<p>

<table border="1" cellspacing="0" cellpadding="0" width="100%">
<thead>
  <tr>
    <th>AUCDI Data Class</th>
    <th colspan="2">AUCDI Data Element</th>
    <th>AU Core Profile(s)</th>
    <th>FHIR Element(s)</th>
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
    <td>Condition.code | Condition.bodySite | Condition.extension</td>
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
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td>AU Core Procedure</td>
    <td>Procedure.reasonCode | Procedure.reasonReference[x]</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site</td>
    <td>AU Core Procedure | AU Core Condition</td>
    <td>Procedure.code | Procedure.bodySite | Procedure.extension<br>Condition.code | Condition.bodySite | Condition.extension</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date performed</td>
    <td>AU Core Procedure</td>
    <td>Procedure.performed[x] | Procedure.performedDateTime<br>Condition.onsetDateTime</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core Procedure</td>
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
    <td>Tobacco smoking summary</td>
    <td colspan="2">Overall status</td>
    <td>AU Core Smoking Status</td>
    <td>Observation</td>
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
    <td>Height /<br>Length</td>
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
    <td rowspan="11">Medication use statement</td>
    <td colspan="2">Medication name</td>
    <td>AU Core MedicationStatement | AU Core Medication | AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x] | MedicationRequest.medication[x] | Medication.code</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Form</td>
    <td>AU Core MedicationStatement | AU Core Medication | AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x] | MedicationRequest.medication[x] | Medication.code | Medication.form</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Strength</td>
    <td>AU Core MedicationStatement | AU Core Medication | AU Core MedicationRequest</td>
    <td>MedicationStatement.medication[x] | MedicationRequest.medication[x] | Medication.code | Medication.ingredient | Medication.extension[medication-strength]</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Route of administration</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.route | MedicationRequest.dosageInstruction.route</td>
    <td></td>
  </tr>
    <tr>
    <td colspan="2">Dose amount</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.doseAndRate | MedicationRequest.dosageInstruction.doseAndRate</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Dose timing</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.dosage.timing | MedicationRequest.dosageInstruction.timing</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td>AU Core MedicationStatement | AU Core MedicationRequest</td>
    <td>MedicationStatement.reasonCode | MedicationStatement.reasonReference | MedicationRequest.reasonCode | MedicationRequest.reasonReference</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last administration<br></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Endpoint<br></td>
    <td> </td>
    <td></td>
    <td></td>
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
    <td>AU Core Patient </td>
    <td>Patient.extension(<a href="https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html">individual-recordedSexOrGender</a>)</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Gender identity</td>
    <td>AU Core Patient </td>
    <td>Patient.extension(<a href="https://hl7.org/fhir/extensions/StructureDefinition-individual-genderIdentity.html">individual-genderIdentity</a>)</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Pronoun/s</td>
    <td>AU Core Patient </td>
    <td>Patient.extension(<a href="https://hl7.org/fhir/extensions/StructureDefinition-individual-pronouns.html">individual-pronouns</a>)</td>
    <td></td>
  </tr>
    <tr>
    <td rowspan="2">Encounter – clinical<br>context</td>
    <td colspan="2">Reason for encounter</td>
    <td>AU Core Encounter</td>
    <td>Encounter.reasonCode | Encounter.reasonReference</td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td>AU Core Encounter</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="7">Biomarkers</td>
    <td rowspan="4">Lipids</td>
    <td>Total cholesterol</td>
    <td>AU Core Biomarker profile | AU Core Diagnostic Result profile | AU Core Pathology Result Observation | AU Core Lipids profile</td>
    <td>Observation</td>
    <td>Multiple options for how this can be supported in AU Core.</td>
  </tr>
    <tr>
    <td>HDL cholesterol</td>
    <td>AU Core Biomarker profile | AU Core Diagnostic Result profile | AU Core Pathology Result Observation | AU Core Lipids profile</td>
    <td>Observation</td>
    <td>Multiple options for how this can be supported in AU Core.</td>
  </tr>

  <tr>
    <td>LDL cholesterol</td>
    <td>AU Core Biomarker profile | AU Core Diagnostic Result profile | AU Core Pathology Result Observation | AU Core Lipids profile</td>
    <td>Observation</td>
    <td>Multiple options for how this can be supported in AU Core.</td>
  </tr>

  <tr>
    <td>Triglycerides</td>
    <td>AU Core Biomarker profile | AU Core Diagnostic Result profile | AU Core Pathology Result Observation | AU Core Lipids profile</td>
    <td>Observation</td>
    <td>Multiple options for how this can be supported in AU Core.</td>
  </tr>
  <tr>
    <td>Haemoglobin A1c (HbA1c)</td>
    <td>HbA1c</td>
    <td>AU Core Biomarker profile | AU Core Diagnostic Result profile | AU Core Pathology Result Observation | </td>
    <td>Observation</td>
    <td>Multiple options for how this can be supported in AU Core.</td>
  </tr>
  <tr>
    <td>Estimated glomerular filtration rate (eGFR)</td>
    <td>eGFR</td>
    <td>AU Core Biomarker profile | AU Core Diagnostic Result profile | AU Core Pathology Result Observation | </td>
    <td>Observation</td>
    <td>Multiple options for how this can be supported in AU Core.</td>
  </tr>
  <tr>
    <td>Urine albumin-creatinine ratio (uACR)</td>
    <td>(uACR</td>
    <td>AU Core Biomarker profile | AU Core Diagnostic Result profile | AU Core Pathology Result Observation | AU Core Lipids profile</td>
    <td>Observation</td>
    <td>Multiple options for how this can be supported in AU Core.</td>
  </tr>
</tbody>
</table>
