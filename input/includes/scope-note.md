<div class="note-to-contributors" markdown="1">

A summary of AU Core changes since the [last snapshot](https://hl7.org.au/fhir/core/0.2.2-preview/) is provided below. 

<li>Removed profiles:
<table border="0"> 
    <tr>
        <td width="30%"> 
            <ul>
                <li>AU Core AdverseEvent</li>
                <li>AU Core Alcohol Status</li>
                <li>AU Core Assertion of No Relevant Finding</li>
                <li>AU Core BMI</li>
                <li>AU Core BodyStructure</li>
                <li>AU Core CarePlan</li>
                <li>AU Core CareTeam</li>
                <li>AU Core Coverage</li>
                <li>AU Core Diagnostic Imaging Result Observation</li>
                <li>AU Core DiagnosticReport</li>
                <li>AU Core Document Composition</li>
                <li>AU Core DocumentReference</li>
            </ul>
        </td>
        <td width="30%"> 
            <ul>
                <li>AU Core EpisodeOfCare</li>
                <li>AU Core Estimated Date of Delivery</li>
                <li>AU Core Gestational Age</li>
                <li>AU Core Gravidity</li>
                <li>AU Core Head Circumference</li>
                <li>AU Core Health Program Participation Summary</li>
                <li>AU Core HealthcareService</li>
                <li>AU Core Last Menstrual Period</li>
                <li>AU Core Lipid Result</li>
                <li>AU Core List</li>
                <li>AU Core MedicationAdministration</li>
                <li>AU Core MedicationDispense</li>
                <li>AU Core Observation</li>
            </ul>
        </td>    
        <td width="30%"> 
            <ul>
                <li>AU Core Oxygen Saturation</li> 
                <li>AU Core Parity</li> 
                <li>AU Core Pregnancy Status</li> 
                <li>AU Core RelatedPerson</li> 
                <li>AU Core ServiceRequest</li> 
                <li>AU Core Smoking Cease Date</li> 
                <li>AU Core Smoking Start Date</li> 
                <li>AU Core Specimen</li> 
                <li>AU Core Substance</li> 
                <li>AU Core System Device</li> 
                <li>AU Core Task</li> 
                <li>AU Core Vitals Panel</li>                               
            </ul>
        </td>
    </tr>
</table>
</li>

<li>Changes applied to the profiles: 
    <ul>
        <li>Changes to AU Core AllergyIntolerance to:
            <ul>
                <li>remove Must Support from AllergyIntolerance.type, AllergyIntolerance.category, and AllergyIntolerance.reaction.substance</li>
                <li>reference core FHIR resources in place of previously removed AU Core profiles</li>
            </ul>
        </li>
        <li>Changes to AU Core Patient to add Must Support to Individual Gender Identity and Individual Pronouns elements.</li>
        <li>AU Core Condition now references core FHIR resources in place of previously removed AU Core profiles.</li>
        <li>AU Core Encounter now references core FHIR resources in place of previously removed AU Core profiles.</li>
        <li>AU Core MedicationRequest now references core FHIR resources in place of previously removed AU Core profiles.</li>
        <li>AU Core Procedure now references core FHIR resources in place of previously removed AU Core profiles.</li>
        <li>AU Core Observation profiles now references core FHIR resources in place of previously removed AU Core profiles.</li>
    </ul>    
</li>
<li>The following value sets have been removed:
    <table border="0"> 
        <tr>
        <td width="30%"> 
            <ul>
                <li>Alcohol Intake Status</li>
                <li>Estimated Date of Delivery</li>
            </ul>
        </td>
        <td width="30%"> 
            <ul>
               <li>Estimated Date of Delivery LOINC</li>
            </ul>
        </td>
        <td width="30%"> 
            <ul>
               <li>Lipid Result Reporting</li>
            </ul>
        </td>
        </tr>
    </table>
</li>

<li>The following search parameters have been removed:
    <table border="0"> 
        <tr>
            <td width="30%"> 
                <ul>
                    <li>coverage-patient</li>
                </ul>
            </td>
            <td width="30%"> 
                <ul>
                   <li>relatedperson-patient </li>
                </ul>
            </td>
            <td width="30%"> 
                <ul>
                    <li>specimen-patient</li>
                </ul>
            </td>
        </tr>
    </table>
</li>
<li>Other changes:
    <ul>
        <li>Revised AU Core Client and AU Core Server CapabilityStatements to align with updated scope</li>
        <li>Updated conformance and guidance pages to reflect the removal of profiles and their references</li>
        <li>Removed examples  the list of resources supporting the Provenance resource</li>
    </ul>
</li>
</div>
