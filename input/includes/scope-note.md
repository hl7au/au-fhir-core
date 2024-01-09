<div class="stu-note" markdown="1">

#### AU Core R1 Scope 
We have updated the AU Core current build to reflect the current <a href="https://confluence.hl7.org/display/HAFWG/AU+Core+R1+Scope">AU Core R1 Scope</a>: 
<ul>
<li>Profiles not in scope of R1 or not under consideration for R1 have been removed:

<table border="1">
<thead>
  <tr>
    <th>AU Core R1 Profile</th>
    <th>Profile under consideration for AU Core R1</th>
    <th>AU Core R2+ Profile (removed from IG)</th>
  </tr> 
</thead>
<tbody>
  <tr>
    <td>AU Core AllergyIntolerance<br/>AU Core Blood Pressure<br/>AU Core Body Height<br/>AU Core Body Temperature<br/>AU Core Body Weight<br/>AU Core Condition<br/>AU Core Encounter<br/>AU Core Heart Rate<br/>AU Core Immunization<br/>AU Core Location<br/>AU Core Medication<br/>AU Core Organization<br/>AU Core Patient<br/>AU Core Practitioner<br/>AU Core PractitionerRole<br/>AU Core Respiration Rate<br/>AU Core Smoking Status</td>
    <td>AU Core Biological Sex Assigned at Birth<br/>AU Core BMI<br/>AU Core Consent<br/>AU Core Diagnostic Imaging Result Observation<br/>AU Core Diagnostic Result Observation<br/>AU Core DiagnosticReport<br/>AU Core DocumentReference<br/>AU Core Head Circumference<br/>AU Core HealthcareService<br/>AU Core Lipid Result<br/>AU Core Medication Request<br/>AU Core MedicationStatement<br/>AU Core Observation<br/>AU Core Oxygen Saturation<br/>AU Core Pathology Result Observation<br/>AU Core Procedure<br/>AU Core Provenance<br/>AU Core ServiceRequest<br/>AU Core Vitals Panel<br/>AU Core Waist Circumference</td>
    <td>AU Core AdverseEvent<br/>AU Core Alcohol Status<br/>AU Core Assertion of No Relevant Finding<br/>AU Core BodyStructure<br/>AU Core CarePlan<br/>AU Core CareTeam<br/>AU Core Coverage<br/>AU Core Document Composition<br/>AU Core EpisodeOfCare<br/>AU Core Estimated Date of Delivery<br/>AU Core Gestational Age<br/>AU Core Gravidity<br/>AU Core Health Program Participation Summary<br/>AU Core Last Menstrual Period<br/>AU Core List<br/>AU Core MedicationAdministration<br/>AU Core MedicationDispense<br/>AU Core Parity<br/>AU Core Pregnancy Status<br/>AU Core RelatedPerson<br/>AU Core Smoking Cease Date<br/>AU Core Smoking Start Date<br/>AU Core Specimen<br/>AU Core Substance<br/>AU Core System Device<br/>AU Core Task</td>
  </tr>
</tbody>
</table>
</li>
<li>Other changes:<ul>
<li>Changed AllergyIntolerance.recorder and AllergyIntolerance.asserter to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed Condition.asserter to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed Condition.recorder to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed DocumentReference.author to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed DocumentReference.author to remove type restriction to AU Core System Device.</li>
<li>Changed Encounter.participant.individual to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed MedicationRequest.requester to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed MedicationStatement.basedOn to remove type restriction to AU Core CarePlan.</li>
<li>Changed MedicationStatement.informationSource to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed Observation.performer to remove type restriction to AU Core CareTeam.</li>
<li>Changed Observation.performer to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed Observation.specimen to remove type restriction to AU Core Specimen.</li>
<li>Changed Procedure.asserter to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed Procedure.recorder to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed Provenance.agent.onBehalfOf  to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed Provenance.agent.who to remove type restriction to AU Core RelatedPerson.</li>
<li>Changed ServiceRequest.performer to remove type restrictions to AU Core RelatedPerson and AU Core CareTeam.</li>
<li>Updated CapabilityStatement remove purged profiles.</li>
<li>Removed ValueSets:<ul>
<li>Pregnancy Status</li>
<li>Alcohol Intake Status</li>
<li>Estimated Date of Delivery</li>
<li>Estimated Date of Delivery LOINC</li></ul>
</li>
<li>Removed Search Parameters:<ul>
<li>relatedperson-patient</li></ul>
</li>
</ul>
</li>
</ul>


#### Feedback on AU Core R1 scope
We are seeking feedback on proposed scope on Confluence page <a href="https://confluence.hl7.org/display/HAFWG/AU+Core+R1+Scope">AU Core R1 Scope</a>.

Feedback on scope should be provided through a comment on the Confluence page <a href="https://confluence.hl7.org/display/HAFWG/AU+Core+R1+Scope">AU Core R1 Scope</a>. Questions and discussions can be raised in <a href="https://chat.fhir.org/#narrow/stream/179173-australia">https://chat.fhir.org/#narrow/stream/179173-australia</a>.

#### Feedback on AUCDI mappings
We are seeking feedback on proposed mappings on Confluence page <a href="https://confluence.hl7.org/display/HAFWG/AUCDI+in+AU+Core+R1">AUCDI in AU Core R1</a>. 

Feedback on mappings should be provided through a comment on the Confluence page <a href="https://confluence.hl7.org/display/HAFWG/AUCDI+in+AU+Core+R1">AUCDI in AU Core R1</a>. Questions and discussions can be raised in chat.fhir.org <a href="https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1">https://chat.fhir.org/#narrow/stream/179173-australia/topic/Implementing.20AUCDI.20R1.20into.20AU.20Core.20R1</a>. We are targeting end of February for a baseline agreement to then refine.
  
</div>

