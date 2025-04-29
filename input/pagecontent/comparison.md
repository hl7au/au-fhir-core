AU Core aligns to, and leverages, international standards and other national standards, in particular:
- [International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/)
- [International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/)
- [US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/STU7/)

Relationships between AU Core, AUCDI, and the above key implementation guides is described in [Relationship with other IGs](relationship.html). 

Corresponding profiles, conformance requirements, and capability statements included in the key FHIR implementation guides were reviewed and considered during AU Core's development to ensure alignment, and to facilitate adoption of, this standard.

The below comparison evaluates AU Core conformance requirements with the key implementation guides identifying where compliance with AU Core satisfies the expectations established by the referenced implementation guide. 

### Profile comparison
As part of profile comparison, the requirements, constraints, and standards specified in a particular FHIR profile are evaluated. These requirements can include mandatory elements, *Must Support* elements, cardinality constraints, data types, terminology bindings, usage rules, extensions, rules on missing or suppressed data. 

The table below provides a profile only comparison from AU Core to profiles in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a resource that is compliant with an International Patient Access profile **MAY NOT** be compliant with AU Core.

**Legend:**

<img src="green_checkmark.png" width="20"/> **Compliant**: An AU Core compliant resource meets all requirements of the compared profile.

<img src="orange_checkmark.png" width="20"/> **Additional requirements**: An AU Core compliant resource is compatible, but additional changes may be needed to meet all requirements of the compared profile. Where additional requirements are identified, more information is provided in the sections below.

<img src="cross_red_circle.png" width="20"/> **Incompatible**: An AU Core compliant resource is incompatible with the compared profile. A resource cannot be compliant to both. Where incompatible requirements are identified, more information is provided in the sections below.

<img src="minus_symbol.png" width="20"/> **No equivalent profile**: No equivalent profile for comparison.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">AU Core</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">International Patient Access 1.1.0</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">International Patient Summary 2.0.0-ballot</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">US Core 7.0.0</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-practitionerrole.html">AU Core PractitionerRole</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
         <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-relatedperson.html">AU Core RelatedPerson</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
    </tbody>
</table>

#### International Patient Access
[International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/) describes how an application acting on behalf of a patient can access patient information from a clinical records system using a FHIR-based API.

##### Additional requirements
The following IPA profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">International Patient Access 1.1.0</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1//StructureDefinition-ipa-medicationrequest.html">IPA-MedicationRequest</a></td>
            <td style="width: 25%;">MedicationRequest.reported[x]</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPA.</td>
        </tr>
         <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1//StructureDefinition-ipa-medicationstatement.html">IPA-MedicationStatement</a></td>
            <td style="width: 25%;">MedicationStatement.statusReason</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPA.</td>
        </tr>
         <tr>
            <td style="width: 25%;">MedicationStatement.context</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationStatement.informationSource</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPA.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1//StructureDefinition-ipa-patient.html">IPA-Patient</a></td>
            <td style="width: 25%;">Patient.identifier</td>     
            <td style="width: 25%;">IPA requires all identifiers to have system, type or assigner (ipa-pat-1).</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.identifier.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.name.text</td>
            <td style="width: 25%;">Element SHOULD be present (ipa-pat-3).</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.active</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.link</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPA.</td>
        </tr>
    </tbody>
</table>

##### Missing Data
AU Core compliant resources are compliant with IPA requirements for Missing Data.

##### Suppressed Data
IPA does not include requirements for Suppressed Data.

##### Additional profiles
This version of AU Core has no equivalent profile for the following IPA profiles:
- IPA-DocumentReference

#### International Patient Summary
[International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/) describes how to represent the International Patient Summary (IPS) using HL7 FHIR. An International Patient Summary  document is an electronic health record extract containing essential healthcare information about a subject of care.

##### Additional requirements
The following IPS profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">International Patient Summary 2.0.0-ballot</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="7" style="width: 25%;"><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
            <td rowspan="7" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-AllergyIntolerance-uv-ips.html">Allergy Intolerance (IPS)</a></td>
            <td style="width: 25%;">AllergyIntolerance.patient.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.type</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.clinicalStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.verificationStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.reaction.manifestation</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.onset[x]</td>
            <td style="width: 25%;">Type choice dateTime is flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="7" style="width: 25%;"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td rowspan="7" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Condition-uv-ips.html">Condition (IPS)</a></td>
            <td style="width: 25%;">Condition.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.onset[x]</td>
            <td style="width: 25%;">Type choice dateTime is flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.clinicalStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.verificationStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.category</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.severity</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.code</td>
            <td  style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Immunization-uv-ips.html">Immunization (IPS)</a></td>
            <td style="width: 25%;">Immunization.patient.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.vaccineCode</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 25%;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Medication-uv-ips.html">Medication (IPS)</a></td>
            <td style="width: 25%;">Medication.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.form</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.item[x]</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.strength</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Ratio-uv-ips.html">Ratio (IPS)</a> are flagged as <i>Must Support</i>. IPS requires UCUM for coded quantity units. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-MedicationRequest-uv-ips.html">Medication Request (IPS)</a></td>
            <td style="width: 25%;">MedicationRequest.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationRequest.dosageInstruction.timing</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-MedicationStatement-uv-ips.html">Medication Statement (IPS)</a></td>
            <td style="width: 25%;">MedicationStatement.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.dosage.timing</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="7" style="width: 25%;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td rowspan="7" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Observation-results-laboratory-pathology-uv-ips.html">Observation Results: laboratory/pathology (IPS)</a></td>
            <td style="width: 25%;">Observation.status</td>
            <td style="width: 25%;">IPS requires value from <a href="https://hl7.org/fhir/uv/ips/2024Sep/ValueSet-results-status-uv-ips.html">Results Status Codes - IPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.performer</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.category</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.value[x]</td>
            <td style="width: 25%;">Types string, Quantity and CodeableConceptIPS are flagged as <i>Must Support</i> in IPS.</td>
        </tr>
         <tr>
            <td style="width: 25%;">Observation.valueCodeableConcept</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Patient-uv-ips.html">Patient (IPS)</a></td>
            <td style="width: 25%;">Patient.generalPractitioner</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Practitioner-uv-ips.html">Practitioner (IPS)</a></td>
            <td style="width: 25%;">Practitioner.telecom</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Procedure-uv-ips.html">Procedure (IPS)</a></td>
            <td style="width: 25%;">Procedure.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.performed[x]</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Observation-tobaccouse-uv-ips.html">Observation - SH: tobacco use</a></td>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">IPS requires LOINC code 72166-2. Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
    </tbody>
</table>

##### Missing Data
AU Core compliant resources are compliant with IPS requirements for Missing Data.

##### Suppressed Data
IPS does not include requirements for Suppressed Data.

##### Additional profiles
This version of AU Core has no equivalent profile for the following IPS profiles:
- Bundle - IPS
- Composition (IPS)
- Device (IPS)
- Device - performer, observer
- Device Use Statement (IPS)
- Flag - Alert (IPS)
- DiagnosticReport (IPS)
- Imaging Study (IPS)
- Media observation (Results: laboratory, media)
- Observation - Pregnancy: EDD
- Observation - Pregnancy: outcome
- Observation - Pregnancy: status
- Observation - SH: alcohol use
- Observation Results: radiology (IPS)
- Specimen (IPS)


#### US Core
[US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/STU7/) serves as the foundation for FHIR implementation guides in the US Realm. It establishes the minimum constraints on FHIR resources to define US Core Profiles, specifying the required elements, extensions, vocabularies, and value sets, as well as their usage. It also outlines the minimum FHIR RESTful interactions needed to access patient data for each US Core Profile.

##### Additional requirements
The following US Core profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">US Core 7.0.0</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="8" style="width: 25%;"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
            <td style="width: 25%;">Condition.category</td>
            <td style="width: 25%;">US Core requires category of 'problem-list-item' or 'health-concern'.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.meta</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.meta.lastUpdated</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.assertedDate</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.recordedDate</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a></td>
            <td style="width: 25%;">Condition.assertedDate</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.encounter</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
         <tr>
            <td style="width: 25%;">Condition.recordedDate</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core Diagnostic Result Observation</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result Profile</a></td>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://hl7.org/fhir/R4/valueset-observation-codes.html">LOINC Codes</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.value[x]</td>
            <td style="width: 25%;">US Core requires UCUM for coded quantity units.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.encounter</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="9" style="width: 25%;"><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td rowspan="9" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
            <td style="width: 25%;">Encounter.type</td>
            <td style="width: 25%;">US Core requires minimum of 1. Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.meta</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.meta.lastUpdated</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.identifier</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.identifier.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.identifier.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.participant.period</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.hospitalization</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.hospitalization.dischargeDisposition</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-immunization.html">US Core Immunization Profile</a></td>
            <td style="width: 25%;">Immunization.vaccineCode</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.6/expansion">CVX Vaccines Administered Vaccine Set</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.statusReason</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.encounter</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.location</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="8" style="width: 25%;"><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td rowspan="8" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-location.html">US Core Location Profile</a></td>
            <td style="width: 25%;">Location.name</td>
            <td style="width: 25%;">US Core requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.identifier</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.status</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.telecom</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.line</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.city</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.state</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.postalCode</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-medication.html">US Core Medication Profile</a></td>
            <td style="width: 25%;">Medication.code</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion">Medication Clinical Drug</a>.</td>
        </tr>
        <tr>
            <td rowspan="9" style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td rowspan="9" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-medicationrequest.html">US Core MedicationRequest Profile</a></td>
            <td style="width: 25%;">MedicationRequest.medicationCodeableConcept</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion">Medication Clinical Drug</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.category</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.reported[x]</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.timing</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.doseAndRate</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.doseAndRate.dose[x]</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dispenseRequest</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dispenseRequest.numberOfRepeatsAllowed</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dispenseRequest.quantity</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="9" style="width: 25%;"><a href="StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td rowspan="9" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-organization.html">US Core Organization Profile</a></td>
            <td style="width: 25%;">Organization.active</td>
            <td style="width: 25%;">US Core requires minimum of 1. Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.telecom.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.telecom.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.telecom.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.line</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.city</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.state</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.postalCode</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.country</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 25%;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-observation-lab.html">US Core Laboratory Result Observation Profile</a></td>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://hl7.org/fhir/us/core/STU7/ValueSet-us-core-laboratory-test-codes.html">US Core Laboratory Test Codes</a>. </td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.referenceRange</td>
            <td style="width: 25%;">US Core requires UCUM for coded quantity units.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.meta</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.meta.lastUpdated</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.encounter</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="13" style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td rowspan="13" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-patient.html">US Core Patient Profile</a></td>
            <td style="width: 25%;">Patient.identifier</td>
            <td style="width: 25%;">US Core requires all identifiers to have system and value.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.identifier.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.identifier.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.name</td>
            <td style="width: 25%;">US Core requires all name to have family or given or Data Absent Reason extension.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Gender identity</td>
            <td style="width: 25%;">US Core requires US Core Gender Identity extension.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom</td>
            <td style="width: 25%;">US Core requires all telecom to have system and value.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.use</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.line</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.city</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.state</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.postalCode</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="12" style="width: 25%;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td rowspan="12" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-practitioner.html">US Core Practitioner Profile</a></td>
            <td style="width: 25%;">Practitioner.identifier</td>
             <td style="width: 25%;">US Core requires minimum of 1, and all identifiers to have system and value.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.identifier.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.identifier.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.telecom</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.telecom.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.telecom.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.line</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.city</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.state</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.postalCode</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.country</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td rowspan="6" style="width: 25%;"><a href="StructureDefinition-au-core-practitionerrole.html">AU Core PractitionerRole</a></td>
            <td rowspan="6" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-practitionerrole.html">US Core PractitionerRole Profile</a></td>
            <td style="width: 25%;">PractitionerRole.telecom, PractitionerRole.endpoint</td>
            <td style="width: 25%;">US Core requires telecom or endpoint to be present (pd-1).</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.location</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.telecom</td>
            <td style="width: 25%;">US Core requires all telecom to have system and value.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.telecom.system</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.telecom.value</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.endpoint</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-relatedperson.html">AU Core RelatedPerson</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-relatedperson.html">US Core RelatedPerson Profile</a></td>
            <td style="width: 25%;">RelatedPerson.active</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core and requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-smokingstatus.html">US Core Smoking Status Observation Profile</a></td>
            <td style="width: 25%;">Observation.status</td>
            <td style="width: 25%;">US Core requires status of 'final' or 'entered-in-error'.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1267.6/expansion">Smoking Status Type</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.value[x]:valueCodeableConcept</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core. US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1267.3/expansion">Smoking status comprehensive</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.value[x]:valueQuantity</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-simple-observation.html">US Core Simple Observation Profile</a></td>
            <td style="width: 25%;">Observation.performer</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr> 
    </tbody>
</table>

##### Missing Data
AU Core compliant resources are compliant with US Core requirements for Missing Data.

##### Suppressed Data
AU Core compliant resources are compliant with US Core requirements for Suppressed Data.

##### Additional profiles 
This version of AU Core has no equivalent profile for the following US Core profiles:
- US Core CarePlan Profile
- US Core CareTeam Profile
- US Core Coverage Profile
- US Core Implantable Device Profile
- US Core DiagnosticReport Profile for Laboratory Results Reporting Profile
- US Core DiagnosticReport Profile for Report and Note Exchange Profile
- US Core DocumentReference Profile
- US Core Goal Profile
- US Core MedicationDispense Profile
- US Core Average Blood Pressure Profile
- US Core Care Experience Preference Profile
- US Core Observation Occupation Profile
- US Core Observation Pregnancy Intent Profile
- US Core Observation Pregnancy Status Profile
- US Core Observation Screening Assessment Profile
- US Core Observation Sexual Orientation Profile
- US Core Simple Observation Profile
- US Core Treatment Intervention Preference Profile
- US Core Provenance Profile
- US Core QuestionnaireResponse Profile  
- US Core ServiceRequest Profile 
- US Core Specimen Profile

### Capability statement comparison
As part of capability statement comparison, the supported resource types, interactions (e.g. <code>read</code>, <code>search-type</code>), search parameters, combined search parameter support, operations, and other conformance expectations for requesters (clients) or responders (servers) are evaluated. 

#### CapabilityStatement mapping
The capability statements used for comparison are defined in the AU Core, International Patient Access, International Patient Summary, and US Core specifications. Each CapabilityStatement defines the conformance requirements and expectations of systems acting as either requsters (clients) ot responders (servers). 

The AU Core Requester defines the conformance requirements and expectations of a client system responsible for initiating queries for information from an AU Core Responder. The AU Core Responder defines the conformance requirements and expectations of a server system responsible for providing responses to queries submitted by an AU Core Requester. Other implementation guides, including International Patient Access, International Patient Summary, and US Core, define similar client and server actors and capabilities. 
 
For the purpose of comparison, CapabilityStatements are mapped from the AU Core Requester or AU Core Responder to the corresponding CapabilityStatement in other specifications that describe actors with similar roles and responsibilies. CapabilityStatements are considered comparable where they define actors with similar responsibilities in the exchange of healthcare information. Where no equivalent capability statement exists, this is indicated using the ‘No equivalent capability statement’ icon in the table below.

<table border="1" style="width: 100%; margin-left: 0; margin-right: auto; border-collapse: collapse;">
    <thead>
    <tr>
        <th style="width: 25%; text-align: left; vertical-align: middle;">AU Core</th>
        <th style="width: 25%; text-align: left; vertical-align: middle;">International Patient Access 1.1.0</th>
        <th style="width: 25%; text-align: left; vertical-align: middle;">International Patient Summary 2.0.0-ballot</th>
		<th style="width: 25%; text-align: left; vertical-align: middle;">US Core 7.0.0</th>
    </tr>
  </thead>
  <tbody>
    <tr>
        <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="CapabilityStatement-au-core-requester.html">AU Core Requester</a></td>
        <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1/CapabilityStatement-ipa-client.html">IPA Client</a></td>
		<td style="width: 25%; text-align: left; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
		<td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-client.html">US Core Client</a></td>
    </tr>
	<tr>
        <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="CapabilityStatement-au-core-responder.html">AU Core Responder</a></td>
        <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://hl7.org/fhir/uv/ipa/STU1.1/CapabilityStatement-ipa-server.html">IPA Server</a></td>
		<td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/CapabilityStatement-ips-server.html">IPS Server</a></td>
		<td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-server.html">US Core Server</a></td>
    </tr>
  </tbody>
</table>       

#### CapabilityStatement comparison details

The table below provides a comparison of capability statements from AU Core to those in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a system that meets the expectations of an International Patient Access capability statement **MAY NOT** meet the expectations defined in AU Core. The comparison is based on '<strong>SHALL</strong> (mandatory) and '<strong>SHOULD</strong>' (recommended) conformance expectations. Expectations marked as '<strong>MAY</strog>' (optional) are excluded from consideration in this comparison. 

**Legend:**

<img src="green_checkmark.png" width="20"/> **Compliant**: A system conforming to the AU Core requester/ responder expectations meets all mandatory (<strong>SHALL</strong>) requirements of the compared implementation guide capability statement. While the implementation guide may include '<strong>SHOULD</strong>' (recommended) and 'MAY' (optional) expectations, these do not impact the compliant status. Where '<strong>SHOULD</strong>' additional expectations are identified, more details are provided in the sections below.  

<img src="orange_checkmark.png" width="20"/> **Additional requirements**: A system conforming to the AU Core capability statement aligns with but may require additional modifications to meet the stricter requirements of the compared capability statement. Where additional requirements are identified, more details are provided in the sections below.

<img src="cross_red_circle.png" width="20"/> **Incompatible**: A system conforming to the AU Core capability statement has conformance expectations that conflict with the mandatory requirements of the compared implementation guide, making full conformance to both impossible. Where incompatible requirements are identified, more details are provided in the sections below.

<img src="minus_symbol.png" width="20"/> **No equivalent capability statement**: No equivalent capability statement for comparison.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th colspan="2"></th>
            <th colspan="3" style="text-align: center; vertical-align: middle;">Requester CapabilityStatement</th>
            <th colspan="3" style="text-align: center; vertical-align: middle;">Responder CapabilityStatement</th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td style="width: 15%; text-align: center; vertical-align: middle;"><strong>CapabilityStatement requirement</strong></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><strong>Requirement</strong></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><strong>IPA 1.1.0</strong></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><strong>IPS 2.0.0-ballot</strong></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><strong>US Core 7.0.0</strong></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><strong>IPA 1.1.0</strong></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><strong>IPS 2.0.0-ballot</strong></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><strong>US Core 7.0.0</strong></td>
        </tr>
        <tr>
            <td rowspan="8" style="width: 15%; text-align: left; vertical-align: middle;">FHIR RESTful Capabilities (system wide)</td>
            <td style="width: 25%; text-align: left; vertical-align: middle;">FHIR version</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Supported formats</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Supported patch formats</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Supported implementation guides</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">FHIR capabilities</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">FHIR resource support</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">System wide interactions</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Security</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="19" style="width: 15%; text-align: left; vertical-align: middle;">Capabilities by Resource/Profile</td>
            <td style="width: 25%; text-align: left; vertical-align: middle;">AllergyIntolerance</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Condition</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">DiagnosticReport</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">DocumentReference</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Encounter</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">HealthcareService</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Immunization</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Location</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Medication</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">MedicationRequest</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">MedicationStatement</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Observation</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Organization</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Patient</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Practitioner</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">PractitionerRole</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Procedure</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">RelatedPerson</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;">Specimen</td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="width: 10%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 10%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
    </tbody>
</table>    

#### International Patient Access
[International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/) defines the expected capabilities of systems enabling patient authorised access to clinical records via a FHIR-based API. 

##### IPA Client CapabilityStatement additional requirements 
The [International Patient Access Client CapabilityStatement](https://hl7.org/fhir/uv/ipa/STU1.1/CapabilityStatement-ipa-client.html) introduces additional conformance expectations not required by AU Core. These expectations are listed in the table below. Implementers are advised to note that some code changes may be required to ensure full compliance.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 30%;">Resource/Section</th>
            <th style="width: 70%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td style="width:30%;">Supported implementation guides</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <a href="http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch">http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch</a>. <img src="arrow_up.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width:30%;">FHIR resource support</td>
            <td style="width: 70%;"><strong>SHALL</strong> support the IPA conformance expectations for the Patient resource profile and for each IPA resource type they support.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 30%">Security</td>
            <td style="width: 70%"><strong>SHALL</strong> follow <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> requirements. <img src="arrow_up.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%"><strong>SHOULD</strong> follow the security best practices outlined in <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> and elsewhere. <img src="arrow_up.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%">Clients <strong>SHALL</strong> handle scope-based authorisation failures gracefully.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="3" style="width:30%;">AllergyIntolerance</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA AllergyIntolerance profile.<img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated).<img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle AllergyIntolerance.clinicalStatus, AllergyIntolerance.verificationStatus, and AllergyIntolerance.code.<img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="6" style="width:30%;">Condition</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Condition profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL NOT</strong> treat all Condition resources as entries in the current problem list.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> correctly process and display clinicalStatus and verificationStatus.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> continue to function safely when some expected search parameters are not supported.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated).<img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle Condition.clinicalStatus, Condition.verificationStatus, and Condition.code.<img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="8" style="width:30%;">DocumentReference</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA DocumentReference profile. (TODO: point to IPA profile comparison Additional profiles)</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions.<img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support the <code>patient</code> search parameter.<img src="plus_sign.png" width="20"/></td> 
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_id</code> search parameter.<img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
           <td style="width: 30%;"><strong>SHOULD</strong> support <code>patient+category</code>, <code>patient+category+date</code>, <code>patient+type</code>, <code>patient+contenttype</code>, <code>patient+status</code>, <code>patient+type+date</code>, and <code>patient+type+period</code> the search parameter combinations.<img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
           <td style="width: 70%;"><strong>SHOULD</strong> support the <code>$docref</code> operation.<img src="plus_sign.png" width="20"/></td>
        </tr> 
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated).<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle DocumentReference.status, DocumentReference.type, DocumentReference.category, DocumentReference.subject, DocumentReference.author, DocumentReference.content, DocumentReference.content.attachment, DocumentReference.content.contentType, DocumentReference.content.data, DocumentReference.content.url, DocumentReference.format, DocumentReference.context, DocumentReference.context.encounter, and DocumentReference.context.period.<img src="plus_sign.png" width="20"/> </td>
		</tr>
		<tr>
            <td rowspan="3" style="width:30%;">Immunization</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Immunization profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated).<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle Immunization.status, Immunization.statusReason, Immunization.vaccineCode, Immunization.patient and Immunization.occurence[x].<img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="3" style="width:30%;">Medication</td>
            <td style="width: 70%;"><strong>SHALL</strong> support the IPA Medication profile and conformance expectations.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated).<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle Medication.code.<img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td rowspan="5" style="width: 30%;">MedicationRequest</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA MedicationRequest profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr> 
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong> query both MedicationRequest and MedicationStatement when fetching patient Medication information.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support for category and code search parameters.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated).<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle MedicationRequest.status, MedicationRequest.doNotPerform, MedicationRequest.reported[x], MedicationRequest.medication[x], MedicationRequest.subject, MedicationRequest.encounter, MedicationRequest.requester, MedicationRequest.dosageInstruction, MedicationRequest.dosageInstruction.text.<img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="4" style="width:30%;">MedicationStatement</td>
           <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA MedicationStatement profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr> 
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong> query both MedicationRequest and MedicationStatement when fetching patient Medication information.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support for <code>category</code> and <code>code</code> search parameters.<img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle MedicationStatement.status, MedicationStatement.statusReason, MedicationStatement.medication[x], MedicationStatement.subject, MedicationStatement.effective[x], MedicationStatement.dosage, and MedicationStatement.dosage.text. <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td rowspan="5" style="width: 30%;">Observation</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Observation profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support the Vital Signs Profile. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>patient</code> search parameter. <img src="arrow_up.png" width="20"/></td>
        </tr>   
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated).<img src="plus_sign.png" width="20"/></td>
        </tr> 
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle Observation.status, Observation.category, Observation.code, Observation.subject, Observation.effective[x], Observation.value[x], and Observation.dataAbsentReason. <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td rowspan="8" style="width: 30%;">Patient</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Patient profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td style="width: 70%;">Client <strong>SHALL</strong> be able to follow Patient.link(s) to other Patient resources and understand direction of the link. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td style="width: 70%;">Client <strong>SHALL</strong> understand the Patient.link.type code. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td style="width: 70%;">Client <strong>SHALL</strong> be aware of the linked Patient's <code>active</code> flag and that inactive patients may have relevant information. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support Patient.link processing. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>given</code>, <code>birthdate</code>, and <code>gender</code> search parameters. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle Patient.identifier, Patient.gender, Patient.birthDate, and Patient.link. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="3" style="width:30%;">Practitioner</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Practitioner profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr> 
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle Practitioner.name. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="3" style="width:30%;">PractitionerRole</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA PractitionerRole profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr> 
		<tr>
            <td style="width: 70%;">Clients <strong>SHALL</strong>:handle PractitionerRole.practitioner. <img src="arrow_up.png" width="20"/></td>
		</tr>
  </tbody>
</table>

##### Additional resource types
None.

##### IPA Server CapabilityStatement additional requirements 
The [International Patient Access Server CapabilityStatement](https://hl7.org/fhir/uv/ipa/STU1.1/CapabilityStatement-ipa-server.html) introduces additional conformance expectations not required by AU Core. These expectations are listed in the table below. Implementers are advised to note that some code changes may be required to ensure full compliance.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 30%;">Resource/Section</th>
            <th style="width: 70%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td style="width:30%;">Supported implementation guides</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <a href="http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch">http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch</a>. <img src="plus_sign.png" width="20"/> </td>
        </tr>
		<tr>
            <td style="width:30%;">FHIR resource support</td>
            <td style="width: 70%;"><strong>SHALL</strong> support the IPA Patient resource profile and at least one additional resource profile from the list of IPA profiles.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%">Security</td>
            <td style="width: 70%"><strong>SHALL</strong> follow <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> requirements. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%"><strong>SHOULD</strong> follow the security best practices outlined in <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> and elsewhere. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="2" style="width:30%;">AllergyIntolerance</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA AllergyIntolerance profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="4" style="width:30%;">Condition</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Condition profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> populate Condition.code.coding.display and/or Condition.code.text. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Servers <strong>SHOULD</strong> avoid leaving clinicalStatus and verificationStatus missing. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="8" style="width: 30%;">DocumentReference</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA DocumentReference profile. (TODO: point to IPA profile comparison Additional profiles)</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>patient</code> and <code>_id</code> search parameters. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
           <td style="width: 70%;"><strong>SHALL</strong> support <code>patient+category</code>, <code>patient+category+date</code>, and <code>patient+type</code> search parameters. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
           <td style="width: 70%;"><strong>SHALL</strong> support <code>$docref</code> operation. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Servers <strong>SHALL</strong>:populate-if-known DocumentReference.status, DocumentReference.type, DocumentReference.category, DocumentReference.subject, DocumentReference.author, DocumentReference.content, DocumentReference.content.attachment, DocumentReference.content.contentType, DocumentReference.content.data, DocumentReference.content.url, DocumentReference.format, DocumentReference.context, DocumentReference.context.encounter, and DocumentReference.context.period. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
           <td style="width: 70%;"><strong>SHOULD</strong> support for <code>patient+contenttype</code>, <code>patient+status</code>, <code>patient+type+date</code>, and <code>patient+type+period</code> search parameters combination. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="2" style="width:30%;">Immunization</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Immunization profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="2" style="width:30%;">Medication</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Medication profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 30%;">MedicationRequest</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA MedicationRequest profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td style="width: 70%;">Servers <strong>SHOULD</strong> use codings at the level of a clinical drug. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>category</code> and <code>code</code> search parameters. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Servers <strong>SHALL</strong>:populate-if-known MedicationRequest.reported[x]. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="3" style="width:30%;">MedicationStatement</td>
           <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA MedicationStatement profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr> 
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Servers <strong>SHALL</strong>:populate-if-known MedicationStatement.context and MedicationStatement.informationSource. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td rowspan="3" style="width: 30%;">Observation</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Observation profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support the Vital Signs Profile. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr> 
        <tr>
            <td rowspan="7" style="width: 30%;">Patient</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Patient profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td style="width: 70%;">Server <strong>SHALL</strong> have no more than one Patient.active = true for the same patient on the server. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">Server <strong>SHALL</strong> use Patient.link cross-link multiple Patient resources for the same person in search Bundles. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>given</code>, <code>birthdate</code>, and <code>gender</code> search parameters. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr> 
		<tr>
            <td style="width: 70%;">Servers <strong>SHALL</strong>:explain Patient.identifier. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td style="width: 70%;">Servers <strong>SHALL</strong>:populate-if-known Patient.identifier.value, Patient.active, and Patient.link. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td rowspan="2" style="width:30%;">Practitioner</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA Practitioner profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr> 
		<tr>
            <td rowspan="2" style="width:30%;">PractitionerRole</td>
            <td style="width: 70%;"><strong>SHALL</strong> meet the requirements of the IPA PractitionerRole profile.</td>
        </tr>
		<tr>
            <td style="width: 70%;">IPA declares support for <code>_revinclude=Provenance:target</code> (no conformance level stated). <img src="plus_sign.png" width="20"/></td>
        </tr> 
  </tbody>
</table>

##### Additional resource types
None.

#### International Patient Summary
[International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/) defines the expected capabilities of systems that represent the International Patient Summary (IPS) using HL7 FHIR. An IPS document is an electronic health record extract containing essential healthcare information about a subject of care. 

##### IPA Server CapabilityStatement additional requirements 
The [International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/) introduces additional conformance expectations not required by AU Core. These expectations are listed in the table below. Implementers are advised to note that some code changes may be required to ensure full compliance.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 30%;">Resource type</th>
            <th style="width: 70%;">Additional requirements</th>
        </tr>
    </thead> 
    <tbody>
        <tr>
            <td style="width: 30%;">DocumentReference</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>$docref</code> operation.</td>
        </tr>
    </tbody>
</table>    

##### Additional resources
The following table lists resource types that are supported by [IPS Server CapabilityStatement](https://hl7.org/fhir/uv/ips/2024Sep/CapabilityStatement-ips-server.html) but are not currently supported by the AU Core Responder CapabilityStatement. These differences may have implications for systems aiming to be interoperable across both specifications.
    
<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 30%;">Additional resource type</th>
            <th style="width: 70%;">Resource conformance</th>
        </tr>
    </thead> 
    <tbody>
        <tr>
            <td style="width: 30%;">Bundle</td>
            <td style="width: 70%;"><strong>supported</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Composition</td>
            <td style="width: 70%;"><strong>supported</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Device</td>
            <td style="width: 70%;"><strong>supported</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">DeviceUseStatement</td>
            <td style="width: 70%;"><strong>supported</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">ImagingStudy</td>
            <td style="width: 70%;"><strong>supported</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Flag</td>
            <td style="width: 70%;"><strong>supported</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">OperationDefinition</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
	</tbody>
</table>

#### US Core
[US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/STU7/) defines the expected capabilities of systems to support interoperability and clinical data exchange in the US healthcare context. 

##### US Core Client CapabilityStatement additional requirements
The [US Core Client CapabilityStatement](https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-client.html) introduces additional conformance expectations not required by AU Core. These expectations are listed in the table below. Implementers are advised to note that some code changes may be required to ensure full compliance.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 30%;">Resource type</th>
            <th style="width: 70%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td style="width:30%;">FHIR resource support</td>
            <td style="width: 70%;">US Core Client <strong>SHALL</strong> support fetching and querying of one or more US Core profile(s), using the supported RESTful interactions and search parameters declared in the US Core Server CapabilityStatement.</td>
        </tr>
		<tr>
            <td rowspan="7" style="width:30%;">Security</td>
            <td style="width: 70%;"><strong>SHALL</strong> establish a risk analysis and management regime conforming with HIPAA.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> use a single time source for audit and logging.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> maintain audit logs of the various transactions.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> conform to FHIR Communications Security requirements.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support SMART App Launch for authentication and authorisation.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> implement consent according to local, institutional, and legal policy.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> provide Provenance statements using the US Core Provenance Profile resource and associated requirements.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 30%;">AllergyIntolerance</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+clinical-status</code> search parameter combination.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 30%;">Condition</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+abatement-date</code>, <code>patient+asserted-date</code>, <code>patient+category+encounter</code>, <code>patient+_lastUpdated</code>, and <code>patient+recorded-date</code> search parameters combination.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="7" style="width: 30%;">DiagnosticReport</td>
            <td style="width: 70%;"><strong>SHALL</strong> support GET by id: <code>GET [base]/DiagnosticReport/[id]</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>patient</code>, <code>code</code>, <code>category</code>, <code>date</code>, <code>_lastUpdated</code>, <code>patient+code</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameter and search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions, and <strong>SHALL</strong> support <code>create</code> if using the Report and Note Exchange profile.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>status</code>, <code>patient+code+date</code>, <code>patient+status</code>, <code>patient+category+_lastUpdated</code> search parameters and search parameter combinations.</td>
		</tr>
        <tr>
            <td rowspan="11" style="width: 30%;">DocumentReference</td>
            <td style="width: 70%;"><strong>SHALL</strong> support for GET by id: <code>GET [base]/DocumentReference/[id]</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>create</code>, <code>read</code> and <code>search-type</code> interactions.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code>, <code>patient</code>, <code>patient+type</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameters and search parameter combinations.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support both DocumentReference.attachment.url and DocumentReference.attachment.data representations of content.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> handle multiple DocumentReference.content repetitions as alternative formats of the same document, not different versions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> be capable of processing a responsible organization from either DocumentReference.custodian, or a Provenance resource pointing to the DocumentReference via agent.who or agent.onBehalfOf.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
        </tr>
         <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>$docref</code> operation.</td>
        </tr>
         <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support for <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+type+period</code> and <code>patient+status</code> search parameter combinations.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 30%;">Encounter</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>identifier</code>, <code>class</code>, <code>date</code>, <code>location</code>, <code>status</code>, <code>type</code>, <code>discharge-disposition</code>, <code>_lastUpdated</code>, <code>patient+type</code>, <code>patient+discharge-disposition</code>, and <code>patient+_lastUpdated</code> search parameters and search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Immunization</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 30%;">Location</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 30%;">Medication</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td rowspan="6" style="width: 30%;">MedicationRequest</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>patient+intent</code>, <code>patient+intent+status</code>, and <code>patient+intent+encounter</code> search parameter combinations.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support both MedicationRequest.reportedBoolean and MedicationRequest.reportedReference.</td>
        </tr> 
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support all potential target resource types for MedicationRequest.reasonReference.</td>
        </tr>  
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> have referenced resources in MedicationRequest.reasonReference conform to US Core profiles.</td>
        </tr> 
        <tr>
            <td rowspan="3" style="width: 30%;">Observation</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr> 
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+category+_lastUpdated</code> search parameter combination.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Organization</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>name</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 30%;">Patient</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code>, <code>name</code>, <code>birthdate+name</code> and <code>gender+name</code> search parameter and search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Practitioner</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>name</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 30%;">PractitionerRole</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>specialty</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_include=PractitionerRole:endpoint</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Procedure</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 30%;">RelatedPerson</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>name</code> search parameter.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 30%;">Specimen</td>
            <td style="width: 70%;"><strong>SHALL</strong> support GET by id: <code>GET [base]/Specimen/[id]</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support both Specimen.identifier and Specimen.accessionIdentifier.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support the <code>_id</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
    </tbody>
</table>  
  
##### Additional resource types
The following table lists resource types that are supported by [US Core Client CapabilityStatement](https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-client.html) but are not currently supported by the AU Core Requester CapabilityStatement. These differences may have implications for systems aiming to be interoperable across both specifications.
    
<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 30%;">Additional resource type</th>
            <th style="width: 70%;">Resource conformance</th>
        </tr>
    </thead> 
    <tbody>
		<tr>
            <td style="width: 30%;">CarePlan</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">CareTeam</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Coverage</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Device</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Endpoint</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Goal</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">Media</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">MedicationDispense</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">Provenance</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">Questionnaire</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">QuestionnaireResponse</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">ValueSet</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
	</tbody>
</table>

##### US Core Server CapabilityStatement additional requirements
US Core introduces additional capability requirements in both capability statements that are not required in AU Core. Implementers are advised that some code changes may be required to ensure full compliance.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width:30%">Resource type</th>
            <th style="width: 70%">Additional requirements</th>
        </tr>
    </thead>
    <tbody>  
		  <tr>
            <td style="width:30%;">FHIR resource support</td>
            <td style="width: 70%;">US Core Server <strong>SHALL</strong> support the US Core Patient resource profile and at least one additional resource profile from the list of US Core Profiles and all Must Support US Core Profiles and resources it references.</td>
        </tr>
		<tr>
            <td rowspan="7" style="width:30%;">Security</td>
            <td style="width: 70%;"><strong>SHALL</strong> establish a risk analysis and management regime conforming with HIPAA.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> use a single time source for audit and logging.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> maintain audit logs of the various transactions.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> conform to FHIR Communications Security requirements.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support SMART App Launch for authentication and authorisation.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> implement consent according to local, institutional, and legal policy.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> provide Provenance statements using the US Core Provenance Profile resource and associated requirements.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">AllergyIntolerance</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Condition</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+abatement-date</code>, <code>patient+asserted-date</code>, <code>patient+category+encounter</code>, <code>patient+_lastUpdated</code>, and <code>patient+recorded-date</code> search parameters combination.</td>
        </tr>
       <tr>
            <td rowspan="7" style="width: 30%;">DiagnosticReport</td>
            <td style="width: 70%;"><strong>SHALL</strong> support GET by id: <code>GET [base]/DiagnosticReport/[id]</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>patient</code>, <code>patient+code</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameters and search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+code+date</code>, <code>patient+status</code>, <code>patient+category+_lastUpdated</code> search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
        </tr>
        <tr>
            <td rowspan="11" style="width: 30%;">DocumentReference</td>
            <td style="width: 70%;"><strong>SHALL</strong> support GET by id: <code>GET [base]/DocumentReference/[id]</code>.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>$docref</code> operation. </td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code>, <code>patient</code>, <code>patient+type</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameter and search parameter combinations.</td>
        </tr>        
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>create</code>, <code>search-type</code> and <code>read</code> interactions.</td>
        </tr>	
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support either both DocumentReference.attachment.url or DocumentReference.attachment.data representations of content.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support multiple DocumentReference.content elements represent the same document in different formats.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support inclusion of the responsible organisation present in DocumentReference.custodian or via Provenance.agent.</td>
        </tr>	
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+type+period</code> and <code>patient+status</code> search parameter and search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
        </tr>
        <tr>
            <td rowspan="6" style="width: 30%;">Encounter</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support either Encounter.location.location or Encounter.serviceProvider.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>identifier</code>, <code>patient+type</code>, <code>patient+discharge-disposition</code>, and <code>patient+_lastUpdated</code> search parameter and search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> ensure that if Encounter.reasonReference references an Observation, it <strong>SHOULD</strong> conform to a US Core Observation profile.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Immunization</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 30%;">Location</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 30%;">Medication</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 30%;">MedicationRequest</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>patient+intent</code> and <code>patient+intent+status</code> search parameter combinations.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support both MedicationRequest.reportedBoolean and MedicationRequest.reportedReference.</td>
        </tr>  
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>	
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+intent+encounter</code> search parameter combination.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 30%;">Observation</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr> 
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient+category+_lastUpdated</code> search parameter combination.</td>
        </tr>
        <tr>
            <td style="width: 30%;">Organization</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 30%;">Patient</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>name</code>, <code>birthdate+name</code> and <code>gender+name</code> search parameters and search parameter combinations.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>death-date+family</code> search parameter combination.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Practitioner</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>name</code> search parameter.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 30%;">PractitionerRole</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>specialty</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_include=PractitionerRole:endpoint</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 30%;">Procedure</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 30%;">RelatedPerson</td>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code> search parameter.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>name</code> search parameter.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 30%;">Specimen</td>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>read</code> interaction.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td style="width: 70%;"><strong>SHALL</strong> support <code>_id</code> search parameter.</td>
        </tr>
		<tr>
            <td style="width: 70%;"><strong>SHALL</strong> support either Specimen.identifier or Specimen.accessionIdentifier.</td>
        </tr>        
		<tr>
            <td style="width: 70%;"><strong>SHOULD</strong> support <code>patient</code> search parameter.</td>
        </tr>  
    </tbody>
</table>     
   
##### Additional resource types
The following table lists resource types that are supported by [US Core Server CapabilityStatement](https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-server.html) but are not currently supported by the AU Core Client CapabilityStatement. These differences may have implications for systems aiming to be interoperable across both specifications.
    
<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 30%;">Additional resource type</th>
            <th style="width: 70%;">Resource conformance</th>
        </tr>
    </thead> 
    <tbody>
        <tr>
            <td style="width: 30%;">CarePlan</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">CareTeam</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Coverage</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Device</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Endpoint</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">Goal</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td style="width: 30%;">HealthcareService</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">Media</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">MedicationDispense</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">Provenance</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">Questionnaire</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">QuestionnaireResponse</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td style="width: 30%;">ValueSet</td>
            <td style="width: 70%;"><strong>SHOULD</strong></td>
        </tr>
	</tbody>
</table>
