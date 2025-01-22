[Australian Core Data for Interoperability (AUCDI)](https://sparked.csiro.au/index.php/sparked-products-resources/australian-core-data-for-interoperability/aucdi-release-1/) and AU Core complement each other assisting in common understanding of clinical data concepts when implemented in systems and exchanged between systems.  

AUCDI is the product of a national clinician focussed requirements gathering project operating as part of the [Sparked FHIR Accelerator](https://sparked.csiro.au/). It defines data groups made up of data elements and references clinical terminology concepts which address the definition of suitable, coherent and reusable information building blocks for clinical data. AUCDI clinical information requirements for information capture, storage and sharing may define information models that are future focussed and as yet do not align with system implementation of the clinical concept.

AU Core is a technical specification that addresses constraints and obligations on data representation for exchange. AU Core enables system data to be mapped to an agreed FHIR format and defines capability requirements to share data via FHIR RESTful API interactions. 


  <div> 
    <img src="aucdi2core.png" alt="AUCDI and AU Core Development Approach" style="width:45%"/>
  </div>
*Figure 1: AUCDI and AU Core Development Approach*
<br/><br/>

An interpretation of AUCDI clinical information requirements through community consensus is undertaken to define support for the exchange of clinical and administrative data within technical constraints. Note that:
* In any particular release, AU Core may not cover all AUCDI data concepts, especially when AUCDI data concepts are not supported in existing systems.
* AU Core includes exchange for concepts that are commonly implemented in systems and not included in AUCDI e.g. Patient.name, Practitioner.identifier, Procedure.encounter. 
* AU Core may include exchange for clinical concepts not yet included in AUCDI e.g. MedicationRequest
* AU Core includes data elements not included in AUCDI that are required to make FHIR implementable e.g. Observation.status, MedicationRequest.intent, Provenance.
* Neither AUCDI nor AU Core are required to be implemented as a whole single product. Parts can be implemented as required for specific use cases.

### AUCDI mappings into AU Core

The table below shows the relationship between data defined in the AUCDI Data Groups and Elements and expected usage in AU Core profiles.<br/>
Column attribute descriptions are as follows:
- **AUCDI Data Group**: The name of the AUCDI data group.
- **AUCDI Data Element**: The name of the AUCDI data element within an AUCDI data group.
- **AU Core Profile(s)**: The title of the AU Core profile relevant for exchange.
- **FHIR Path**: The [FHIRPath expression](https://build.fhir.org/ig/HL7/FHIRPath/) to the FHIR element relevant for exchange, i.e. the FHIR element that can be populated with data from a source system that represents the clinical concept expressed in the AUCDI data element. 
- **Comment**: Additional information about the mapping including an explanation of where an element or group is not yet mapped.

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
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
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
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
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
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
  <tr>
    <td rowspan="9">Medication use statement</td>
    <td colspan="2">Medication name</td>
    <td>AU Core MedicationStatement | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td>MedicationStatement.medication[x] | Medication.code</td>
    <td rowspan="8"><p>Development and testing of AU Core MedicationStatement profile is planned for AU Core R2.</p><p>See <a href="medicine-information.html">Medicine Information</a> guidance.</p></td>
  </tr>
  <tr>
    <td colspan="2">Clinical indication</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.reasonCode | MedicationStatement.reasonReference</td>
  </tr>
  <tr>
    <td colspan="2">Strength</td>
    <td>AU Core MedicationStatement | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td>MedicationStatement.medication[x] | Medication.code | Medication.ingredient</td>
  </tr>
  <tr>
    <td colspan="2">Form</td>
    <td>AU Core MedicationStatement | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td>MedicationStatement.medication[x] | Medication.form</td>
  </tr>
  <tr>
    <td colspan="2">Dose amount</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.dosage.doseAndRate</td>
  </tr>
  <tr>
    <td colspan="2">Route of administration</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.dosage.route</td>
  </tr>
  <tr>
    <td colspan="2">Dose timing</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.dosage.timing</td>
  </tr>
  <tr>
    <td colspan="2">Comment</td>
    <td>AU Core MedicationStatement</td>
    <td>MedicationStatement.note</td>
  </tr>
  <tr>
    <td colspan="2">Date of assertion</td>
    <td>-</td>
    <td>-</td>
    <td>Mapping of this element will be undertaken as part of the work on the AU Core MedicationStatement profile, planned for AU Core R2.</td>
  </tr>
  <tr>
    <td rowspan="4">Sex and gender summary</td>
    <td colspan="2">Sex assigned at birth</td>
    <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender')</td>
    <td>The <a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex or Gender extension</a> is profiled by <a href="StructureDefinition-au-core-rsg-sexassignedab.html">AU Core Sex Assigned At Birth (RSG)</a> to represent the concept of Sex assigned at birth.</td>
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
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
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
    <td>Observation.effectiveDateTime</td>
    <td></td>
  </tr>
</tbody>
</table>

