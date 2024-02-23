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
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="3">Adverse reaction risk summary</td>
    <td colspan="2">Substance name</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Manifestation</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Problem/Diagnosis summary</td>
    <td colspan="2">Problem / Diagnosis name</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Status</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="5">Procedure completed event</td>
    <td colspan="2">Procedure name</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Body site</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date performed</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4">Vaccination<br>administered event</td>
    <td colspan="2">Vaccine name</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Sequence</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Date of administration</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Tobacco smoking summary</td>
    <td colspan="2">Overall status</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="8">Vital Signs</td>
    <td rowspan="2">Blood pressure</td>
    <td>Systolic pressure</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Diastolic pressure</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Pulse</td>
    <td>Pulse Rate</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Body temperature</td>
    <td>Temperature</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Respiration</td>
    <td>Rate</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Body Height</td>
    <td>Height / Length</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Body weight</td>
    <td>Weight</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Waist circumference</td>
    <td>Waist circumference</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="10">Medication use statement</td>
    <td colspan="2">Medication name</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Form</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Strength</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Route of administration</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Dose amount</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Dose timing</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Last administration</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Endpoint</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="3">Sex and gender</td>
    <td colspan="2">Sex assigned at birth</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Gender identity</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Pronoun/s</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="2">Encounter – clinical<br>context</td>
    <td colspan="2">Reason for encounter</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td colspan="2">Modality</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="7">Biomarkers</td>
    <td rowspan="4">Lipids</td>
    <td>Total cholesterol</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>HDL cholesterol</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>LDL cholesterol</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Triglycerides</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Haemoglobin A1c (HbA1c)</td>
    <td>HbA1c</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Estimated glomerular filtration rate (eGFR)</td>
    <td>eGFR</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Urine albumin-creatinine ratio (uACR)</td>
    <td> uACR</td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>