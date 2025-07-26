[Australian Clinical Data for Interoperability (AUCDI)](https://sparked.csiro.au/index.php/sparked-products-resources/aucdi/) and AU Core complement each other assisting in common understanding of clinical data concepts when implemented in systems and exchanged between systems.  

AUCDI defines data groups comprising one or more data elements and references clinical terminology concepts, forming the foundation of a common language to allow systems to exchange semantically accurate data more efficiently. AUCDI defines clinical requirements for the data required to support the provision of care, exchange, aggregation for analysis, and to support clinical decision support. AUCDI may define requirements that are future focussed and as yet do not align with system implementation of the clinical concept.

AU Core is a technical specification that addresses constraints and obligations on data representation for exchange. AU Core enables system data to be mapped to an agreed FHIR format and defines capability requirements to share data via FHIR RESTful API interactions. 


  <div> 
    <img src="aucdi2core.png" alt="AUCDI and AU Core Development Approach" style="width:45%"/>
  </div>
*Figure 1: AUCDI and AU Core Development Approach*
<br/><br/>

An interpretation of AUCDI clinical information requirements through community consensus is undertaken to define support for the exchange of clinical and administrative data within technical constraints. Note that:
* In any particular release, AU Core may not cover all AUCDI data concepts, especially when AUCDI data concepts are not supported in existing systems.
* AU Core includes exchange for concepts that are commonly implemented in systems and not included in AUCDI e.g. `Patient.name`, `Practitioner.identifier`, `Procedure.encounter`. 
* AU Core includes exchange for clinical concepts not yet included in AUCDI e.g. MedicationRequest.
* AU Core includes data elements not included in AUCDI that are required to make FHIR implementable e.g. `Observation.status`, `MedicationRequest.intent`, Provenance.
* Neither AUCDI nor AU Core are required to be implemented as a whole single product. Parts can be implemented as required for specific use cases.

### AUCDI and AU Core versions

AUCDI and AU Core are updated periodically, and each expand upon the initial core set. AUCDI R2 builds upon R1, expanding on the initial “core”, introducing additional data groups to support different use cases: 

AUCDI Version | AU Core Version
---|---
R1|1.0.0
R2 (Core)|2.0.0
{:.grid}


### AUCDI (Core) mappings into AU Core

The table below shows the relationship between data defined in the "Core" AUCDI Data Groups and Elements and expected usage in AU Core profiles.<br/>
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
    <th>AUCDI Data Element</th>
    <th>AU Core Profile(s)</th>
    <th>FHIR Path</th>
    <th>Comment</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="4">Adverse reaction risk summary</td>
    <td>Substance name</td>
    <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td><code>AllergyIntolerance.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Manifestation</td>
    <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td><code>AllergyIntolerance.reaction</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Comment</td>
    <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
    <td><code>AllergyIntolerance.note</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
  <tr>
    <td rowspan="3">Blood pressure</td>
    <td>Systolic pressure</td>
    <td><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Diastolic pressure</td>
    <td><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td  rowspan="2">Body height</td>
    <td>Height / Length</td>
    <td><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td  rowspan="2">Body temperature</td>
    <td>Temperature</td>
    <td><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td  rowspan="2">Body weight</td>
    <td>Weight</td>
    <td><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="2">Encounter</td>
    <td>Reason for encounter</td>
    <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
    <td><code>Encounter.reasonCode</code> | <code>Encounter.reasonReference</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Modality</td>
    <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
    <td><code>Encounter.class</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="2">Estimated glomerular filtration rate (eGFR)</td>
    <td>eGFR</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="2">Haemoglobin A1c (HbA1c)</td>
    <td>HbA1c</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="5">Lipids</td>
    <td>HDL cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>LDL cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Total cholesterol</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Triglycerides</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="9">Medication use statement</td>
    <td>Medication name</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a> | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td><code>MedicationStatement.medication[x]</code> | <code>Medication.code</code></td>
    <td rowspan="9">See <a href="medicine-information.html">Medicine Information</a> guidance.</td>
  </tr>
  <tr>
    <td>Clinical indication</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
    <td><code>MedicationStatement.reasonCode</code> | <code>MedicationStatement.reasonReference</code></td>
  </tr>
  <tr>
    <td>Strength</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a> | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td><code>MedicationStatement.medication[x]</code> | <code>Medication.code</code> | <code>Medication.ingredient</code></td>
  </tr>
  <tr>
    <td>Form</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a> | <a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
    <td><code>MedicationStatement.medication[x]</code> | <code>Medication.form</code></td>
  </tr>
  <tr>
    <td>Dose amount</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
    <td><code>MedicationStatement.dosage.doseAndRate</code></td>
  </tr>
  <tr>
    <td>Route of administration</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
    <td><code>MedicationStatement.dosage.route</code></td>
  </tr>
  <tr>
    <td>Dose timing</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
    <td><code>MedicationStatement.dosage.timing</code></td>
  </tr>
  <tr>
    <td>Comment</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
    <td><code>MedicationStatement.note</code></td>
  </tr>
  <tr>
    <td>Date of assertion</td>
    <td><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
    <td><code>MedicationStatement.dateAsserted</code></td>
  </tr>
  <tr>
    <td rowspan="5">Problem/Diagnosis summary</td>
    <td>Problem / Diagnosis name</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Body site/laterality</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Status</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.clinicalStatus</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Comment</td>
    <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
    <td><code>Condition.note</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
  <tr>
    <td rowspan="5">Procedure</td>
    <td>Procedure name</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td><code>Procedure.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Clinical indication</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td><code>Procedure.reasonCode</code> | <code>Procedure.reasonReference[x]</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Body site/laterality</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td><code>Procedure.code</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date performed</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td><code>Procedure.performed[x]</code> | <code>Procedure.performedDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Comment</td>
    <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
    <td><code>Procedure.note</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="2">Pulse</td>
    <td>Rate</td>
    <td><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of observation</td>
    <td><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td  rowspan="2">Respiration</td>
    <td>Rate</td>
    <td><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of observation</td>
    <td><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4">Sex and gender summary</td>
    <td>Sex assigned at birth</td>
    <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td><code>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender')</code></td>
    <td>The <a href="http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender">Person Recorded Sex or Gender extension</a> is profiled by <a href="StructureDefinition-au-core-rsg-sexassignedab.html">AU Core Sex Assigned At Birth (RSG)</a> to represent the concept of Sex assigned at birth.</td>
  </tr>
  <tr>
    <td>Gender identity</td>
    <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td><code>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-genderIdentity')</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Pronoun/s</td>
    <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
    <td><code>Patient.extension.where(url='http://hl7.org/fhir/StructureDefinition/individual-pronouns')</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
  <tr>
    <td rowspan="2">Tobacco smoking summary</td>
    <td>Overall status</td>
    <td><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
    <tr>
    <td>Last updated</td>
    <td>-</td>
    <td>-</td>
    <td>This AUCDI element is a <a href="future.html#future-candidate-requirements-under-consideration">Future Candidate Requirement Under Consideration</a>. Future versions of AU Core will develop and test approaches to addressing Last Updated.</td>
  </tr>
  <tr>
    <td rowspan="2">Urine albumin-creatinine ratio (uACR)</td>
    <td>uACR</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td rowspan="4">Vaccination</td>
    <td>Vaccine name</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td><code>Immunization.vaccineCode</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Sequence number</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td><code>Immunization.protocolApplied.doseNumber[x]</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date of administration</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td><code>Immunization.occurenceDateTime</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Comment</td>
    <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
    <td><code>Immunization.note</code></td>
    <td></td>
  </tr>
  <tr>
    <td  rowspan="2">Waist circumference</td>
    <td>Waist circumference</td>
    <td><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
    <td><code>Observation</code></td>
    <td></td>
  </tr>
  <tr>
    <td>Date/Time of measurement</td>
    <td><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
    <td><code>Observation.effectiveDateTime</code></td>
    <td></td>
  </tr>
</tbody>
</table>

