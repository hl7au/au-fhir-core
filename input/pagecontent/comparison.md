AU Core aligns to, and leverages, international standards and other national standards, in particular:
- [International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/)
- [International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/)
- [US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/STU7/)

Relationships between AU Core, AUCDI, and the above key implementation guides is described in [Relationship with other IGs](relationship.html). 

International Patient Access (IPA) and International Patient Summary (IPS) are specifically referenced, as many of the profiles defined in AU Core are expected in future to be adopted in Australian localisations of these international standards.

Corresponding profiles, conformance requirements, and capability statements included in the key FHIR implementation guides were reviewed and considered during AU Core's development to ensure alignment, and to facilitate adoption of, this standard.

The below comparison evaluates AU Core conformance requirements with the key implementation guides identifying where compliance with AU Core satisfies the expectations established by the referenced implementation guide. 

### Profile comparison
As part of profile comparison, the requirements, constraints, and standards specified in a particular FHIR profile are evaluated. These requirements can include mandatory elements, *Must Support* elements, cardinality constraints, data types, terminology bindings, usage rules, extensions, rules on missing or suppressed data. 

The table below provides a profile only comparison from AU Core to profiles in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a resource that is compliant with an International Patient Access profile **MAY NOT** be compliant with AU Core.

The comparison considers **SHALL** and **SHOULD** requirements. **MAY** requirements are not compared.

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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-healthcareservice.html">AU Core HealthcareService</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-practitionerrole.html">AU Core PractitionerRole</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
         <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-relatedperson.html">AU Core RelatedPerson</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
    </tbody>
</table>

#### International Patient Access profile additional requirements
[International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/) describes how an application acting on behalf of a patient can access patient information from a clinical records system using a FHIR-based API.

The following IPA profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">IPA 1.1.0</th>
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

##### Missing Data <a id="ipa-missing-data-data"></a>
AU Core compliant resources are compliant with IPA requirements for Missing Data.

##### Suppressed Data 
IPA does not include requirements for Suppressed Data.

##### Additional profiles
This version of AU Core has no equivalent profile for the following IPA profiles:
- IPA-DocumentReference

#### International Patient Summary profile additional requirements
[International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/) describes how to represent the International Patient Summary (IPS) using HL7 FHIR. An International Patient Summary  document is an electronic health record extract containing essential healthcare information about a subject of care.

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
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Immunization-uv-ips.html">Immunization (IPS)</a></td>
            <td style="width: 25%;">Immunization.vaccineCode</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>           
        <tr>
          <td style="width: 25%;">Immunization.patient.reference</td>
          <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
          <td style="width: 25%;">Immunization.site</td>
          <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
          <td style="width: 25%;">Immunization.route</td>
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
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-MedicationRequest-uv-ips.html">Medication Request (IPS)</a></td>
            <td style="width: 25%;">MedicationRequest.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationRequest.dosageInstruction.timing</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.route</td>
            <td  style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-MedicationStatement-uv-ips.html">Medication Statement (IPS)</a></td>
            <td style="width: 25%;">MedicationStatement.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.dosage.timing</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
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
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Patient-uv-ips.html">Patient (IPS)</a></td>
            <td style="width: 25%;">Patient.name</td>
            <td style="width: 25%;">IPS does not allow Data Absent Reason extension (ips-pat-1).</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.contact.relationship</td>
            <td style="width: 25%;">Sub-elements of <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
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


#### US Core profile additional requirements
[US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/STU7/) serves as the foundation for FHIR implementation guides in the US Realm. It establishes the minimum constraints on FHIR resources to define US Core Profiles, specifying the required elements, extensions, vocabularies, and value sets, as well as their usage. It also outlines the minimum FHIR RESTful interactions needed to access patient data for each US Core Profile.

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
This section compares AU Core conformance expectations with those defined in other key international implementation guides, focusing on systems acting in similar roles (requesters and responders). 

As part of the comparison, both system-level and resource-level capabilities are evaluated:
- System-level capabilities including:
  - Supported FHIR versions and formats
  - Supported implementation guides 	
  - Overall conformance expectations (**SHALL**, **SHOULD**)
  - Support for FHIR RESTful interactions (e.g. `batch`, `batch`)
  - Declared security services and requirements (e.g. SMART App Launch)
- Capabilities by resourse/profile including:
  - Supported resource types
  - Relevant profiles and compliance expectations	
  - Supported interactions for  each resource (e.g. `read`, `search-type`)
  - Required and recommended search parameters
  - Support for combinations of search paramaters
  - Support for `_include` and `_revinclude`
  - Reference resolution and support for reference policies (e.g. `resolves`)	
  - Defined operations on the resource

#### CapabilityStatement mapping

AU Core defines capability statements that describe the conformance requirements and expectations of a corresponding AU Core system actor:
- AU Core Requester - a system that creates and initiates a data access request to retrieve core digital health and administrative information
- AU Core Responder - a system that receives and responds to data access requests from AU Core Requesters

The table below provides a mapping of AU Core capability statements to capability statements in IPA, IPS, or US Core. A capability statement is considered mapped where the corresponding actor serves a similar role and purpose.


**Legend:**

<img src="minus_symbol.png" width="20"/> **No similar capability statement**: No similar actor in terms of role and purpose is defined.

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
		<td style="width: 25%; text-align: left; vertical-align: middle;"><img src="minus_symbol.png" width="20"/><sup>1</sup> (<a href="https://hl7.org/fhir/uv/ips/2024Sep/CapabilityStatement-ips-server.html">IPS Server</a>)</td>
		<td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-server.html">US Core Server</a></td>
    </tr>
  </tbody>
</table>

*<sup>1</sup>The IPS Server CapabilityStatement is not directly comparable as the role and purpose is not similar. It is included for comparison for information as both IPS Server and AU Core Responder are 'server' capability statements and the comparison may be of interest to implementers.*


#### CapabilityStatement comparison

The table below provides a comparison of capability statements from AU Core to those in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a system conforming to International Patient Access Client CapabilityStatement **MAY NOT** meet the conformance requirements of the AU Core Requester CapabilityStatement. 

The comparison considers **SHALL** and **SHOULD** requirements. **MAY** requirements are not compared.

**Legend:**

<img src="green_checkmark.png" width="20"/> **Compliant**: A system conforming to an AU Core CapabilityStatement meets all of the requirements of the compared capability statement.

<img src="orange_checkmark.png" width="20"/> **Additional requirements**: A system conforming to an AU Core CapabilityStatement aligns with the compared capability statement but may require additional functionality to meet its stricter or broader requirements. Where additional requirements are identified, more information is provided in the sections below.

<img src="cross_red_circle.png" width="20"/> **Incompatible**: A system conforming to an AU Core CapabilityStatement is incompatible with the compared capability statement. A system cannot be compliant to both. Where incompatible requirements are identified, more information is provided in the sections below.

<img src="minus_symbol.png" width="20"/> **No equivalent capability statement or resource type**: No equivalent CapabilityStatement mapped for comparison or no equivalent support for that resource type.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <colgroup>
        <col style="width: 15%;">
        <col style="width: 25%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
        <col style="width: 10%;">
    </colgroup>
    <thead>
        <tr>
            <th colspan="2" style="text-align: center; vertical-align: middle;">AU Core</th>
            <th colspan="3" style="text-align: center; vertical-align: middle;">AU Core Requester CapabilityStatement</th>
            <th colspan="3" style="text-align: center; vertical-align: middle;">AU Core Responder CapabilityStatement</th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td colspan="2" style="text-align: center; vertical-align: middle;"><strong>CapabilityStatement Requirement</strong></td>
            <td style="text-align: center; vertical-align: middle;"><strong>IPA 1.1.0</strong></td>
            <td style="text-align: center; vertical-align: middle;"><strong>=IPS 2.0.0-ballot</strong></td>
            <td style="text-align: center; vertical-align: middle;"><strong>US Core 7.0.0</strong></td>
			<td style="text-align: center; vertical-align: middle;"><strong>IPA 1.1.0</strong></td>
            <td style="text-align: center; vertical-align: middle;"><strong>IPS 2.0.0-ballot</strong></td>
            <td style="text-align: center; vertical-align: middle;"><strong>US Core 7.0.0</strong></td>
        </tr>
        <tr>
            <td rowspan="8" style="text-align: left; vertical-align: middle;">FHIR RESTful Capabilities (system wide)</td>
            <td style="text-align: left; vertical-align: middle;">FHIR version</td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Supported formats</td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Supported patch formats</td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Supported implementation guides</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
		<tr>
            <td style="text-align: left; vertical-align: middle;">FHIR capabilities</td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">FHIR resource support</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">System wide interactions</td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
		<tr>
            <td style="text-align: left; vertical-align: middle;">Security</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="19" style="text-align: left; vertical-align: middle;">Capabilities by Resource/Profile</td>
            <td style="text-align: left; vertical-align: middle;">AllergyIntolerance</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Condition</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">DiagnosticReport</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">DocumentReference</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Encounter</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
		<tr>
            <td style="text-align: left; vertical-align: middle;">HealthcareService</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Immunization</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Location</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Medication</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">MedicationRequest</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">MedicationStatement</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Observation</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Organization</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Patient</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Practitioner</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">PractitionerRole</td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Procedure</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">RelatedPerson</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
        <tr>
            <td style="text-align: left; vertical-align: middle;">Specimen</td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
        </tr>
    </tbody>
</table>


#### International Patient Access CapabilityStatement additional requirements

A system conforming to an AU Core CapabilityStatement aligns with IPA CapabilityStatements but will require additional functionality to meet its stricter or broader requirements. The table below identifies additional requirements included in IPA CapabilityStatements. Implementers are advised to note that some code changes may be required to ensure full compliance.


**Legend:**

<img src="arrow_up.png" width="16"/> **Stronger**: The CapabilityStatement strengthens a conformance requirement that is present in the AU Core CapabilityStatement (e.g. **SHOULD** to **SHALL**).

<img src="plus_sign.png" width="16"/> **New**: The CapabilityStatment includes a conformance requirement that is NOT present in the mapped AU Core CapabilityStatement.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 40%;">
		<col style="width: 40%;">
	</colgroup>     
	<thead>
        <tr>
            <th>CapabilityStatement requirement</th>
            <th>IPA 1.1.0 Client CapabilityStatement additional requirements</th>
			<th>IPA 1.1.0 Server CapabilityStatement additional requirements</th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td>FHIR resource support</td>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> support the IPA conformance expectations for the Patient profile and for each IPA resource type they support, see additional requirements below.</td>
			<td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> support the IPA conformance expectations for the Patient profile and for each IPA resource type they support, see additional requirements below.</td>
        </tr>
		<tr>
            <td>Supported implementation guides</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <a href="http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch">http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <a href="http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch">http://hl7.org/fhir/smart-app-launch/ImplementationGuide/hl7.fhir.uv.smart-app-launch</a>.</td>
    </tr>
        <tr>
            <td rowspan="3">Security</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> follow <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> requirements.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> follow <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> requirements.</td>
        </tr>
        <tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> follow the security best practices outlined in <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> and elsewhere.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> follow the security best practices outlined in <a href="https://hl7.org/fhir/R4/security.html">FHIR Security</a> and elsewhere.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> Clients <strong>SHALL</strong> handle scope-based authorisation failures gracefully. </td>
			<td><img src="plus_sign.png" width="20"/> Clients <strong>SHALL</strong> handle scope-based authorisation failures gracefully. </td>
        </tr>
		<tr>
            <td rowspan="2">AllergyIntolerance</td>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong>:handle AllergyIntolerance.clinicalStatus, AllergyIntolerance.verificationStatus, and AllergyIntolerance.code.</td>
			<td></td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td rowspan="5">Condition</td>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong>:handle Condition.clinicalStatus, Condition.verificationStatus, and Condition.code.</td>
			<td></td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL NOT</strong> treat all Condition resources as entries in the current problem list.</td>
			<td></td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> correctly process and display clinicalStatus and verificationStatus.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> populate Condition.code.coding.display and/or Condition.code.text.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> continue to function safely when some expected search parameters are not supported.</td>
			<td><img src="plus_sign.png" width="20"/> Servers <strong>SHOULD</strong> avoid leaving clinicalStatus and verificationStatus missing.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td rowspan="9">DocumentReference</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-DocumentReference profile.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-DocumentReference profile.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> Clients <strong>SHALL</strong> support the <code>patient</code> search parameter.</td> 
			<td><img src="plus_sign.png" width="20"/> Servers <strong>SHALL</strong> support the <code>_id</code> and <code>patient</code> search parameters.</td> 
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Clients <strong>SHALL</strong> handle: DocumentReference.status, DocumentReference.type, DocumentReference.subject, DocumentReference.content, DocumentReference.content.attachment, DocumentReference.content.attachment.contentType, DocumentReference.content.attachment.data, DocumentReference.content.attachment.url, DocumentReference.format, DocumentReference.context, DocumentReference.context.encounter, and DocumentReference.context.period.</td>
		<td><img src="plus_sign.png" width="20"/> Servers <strong>SHALL</strong> populate-if-known: DocumentReference.status, DocumentReference.type, DocumentReference.category, DocumentReference.subject, DocumentReference.date, DocumentReference.author, DocumentReference.content, DocumentReference.content.attachment, DocumentReference.content.attachment.contentType, DocumentReference.content.attachment.data, DocumentReference.content.attachment.url, DocumentReference.format, DocumentReference.context, DocumentReference.context.encounter, and DocumentReference.context.period.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> Clients <strong>SHOULD</strong> handle DocumentReference.category and DocumentReference.author.</td>
            <td></td>	
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> Clients <strong>SHOULD</strong> support <code>_id</code> search parameter.</td>
           <td><img src="plus_sign.png" width="20"/> Servers <strong>SHALL</strong> support <code>patient+category</code>, <code>patient+category+date</code>, and <code>patient+type</code> search parameters.</td>
        </tr>
        <tr>
           <td><img src="plus_sign.png" width="20"/> Clients <strong>SHOULD</strong> support <code>patient+category</code>, <code>patient+category+date</code>, <code>patient+type</code>, <code>patient+contenttype</code>, <code>patient+status</code>, <code>patient+type+date</code>, and <code>patient+type+period</code> the search parameter combinations.</td>
           <td><img src="plus_sign.png" width="20"/> Servers <strong>SHOULD</strong> support for <code>patient+contenttype</code>, <code>patient+status</code>, <code>patient+type+date</code>, and <code>patient+type+period</code> search parameters combination.</td>
        </tr>
        <tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>$docref</code> operation.</td>
			<td><img src="plus_sign.png" width="20"/> Servers <strong>SHALL</strong> support <code>$docref</code> operation.</td>	
        </tr> 
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td rowspan="3">Immunization</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Immunization profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Immunization profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> handle Immunization.status, Immunization.vaccineCode, Immunization.patient and Immunization.occurence[x].</td>
			<td></td>
		</tr>		
		<tr>
            <td><img src="plus_sign.png" width="20"/>Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>. </td>
			<td><img src="plus_sign.png" width="20"/>Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>. </td>
        </tr>
		<tr>
            <td rowspan="2">Medication</td>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> handle Medication.code.</td>
			<td></td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>. </td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>. </td>
        </tr>
		<tr>
            <td rowspan="6">MedicationRequest</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationRequest profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationRequest profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
        </tr> 
		<tr>
            <td><img src="plus_sign.png" width="20"/> Clients <strong>SHALL</strong> query both MedicationRequest and MedicationStatement when fetching patient Medication information.</td>
            <td>Servers <strong>SHOULD</strong> use codings at the level of a clinical drug. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> handle: MedicationRequest.status, MedicationRequest.doNotPerform, MedicationRequest.medication[x], MedicationRequest.subject, MedicationRequest.requester, MedicationRequest.dosageInstruction, and MedicationRequest.dosageInstruction.text.</td>
            <td><img src="plus_sign.png" width="20"/> Servers <strong>SHOULD</strong> populate MedicationRequest.doNotPerform.</td>
		</tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHOULD</strong> handle MedicationRequest.reported[x].</td>
			<td><img src="plus_sign.png" width="20"/> Servers <strong>SHALL</strong> populate-if-known: MedicationRequest.reported[x].</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>category</code> and <code>code</code> search parameters.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>category</code> and <code>code</code> search parameters.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
			<td rowspan="5">MedicationStatement</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationStatement profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
		   <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationStatement profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
        </tr> 
		<tr>
            <td><img src="plus_sign.png" width="20"/> Clients <strong>SHALL</strong> query both MedicationRequest and MedicationStatement when fetching patient Medication information.</td>
			<td></td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> handle: MedicationStatement.status, MedicationStatement.medication[x], and MedicationStatement.subject.</td>
            <td><img src="plus_sign.png" width="20"/> Servers <strong>SHALL</strong> populate-if-known: MedicationStatement.context and MedicationStatement.informationSource.</td>
		</tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHOULD</strong> handle: MedicationStatement.effective[x], MedicationStatement.dosage, and MedicationStatement.dosage.text.</td>
			<td></td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
        <tr>
            <td rowspan="4">Observation</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>patient</code> search parameter.</td>
		<td></td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> handle: Observation.status, Observation.code, Observation.subject, Observation.effective[x], Observation.value[x], and Observation.dataAbsentReason.</td>
			<td></td>
		</tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHOULD</strong> handle Observation.category.</td>
		    <td></td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/>Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/>Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
        <tr>
            <td rowspan="9">Patient</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Patient profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Patient profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA Additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> Client <strong>SHALL</strong> be able to follow Patient.link(s) to other Patient resources and understand direction of the link.</td>
			<td><img src="plus_sign.png" width="20"/> Server <strong>SHALL</strong> use Patient.link cross-link multiple Patient resources for the same person in search Bundles.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> Client <strong>SHALL</strong> understand the Patient.link.type code.</td>
            <td></td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> Client <strong>SHALL</strong> be aware of the linked Patient's <code>active</code> flag and that inactive patients may have relevant information.</td>
            <td><img src="plus_sign.png" width="20"/> Server <strong>SHALL</strong> have no more than one Patient.active = true for the same patient on the server.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support Patient.link processing.</td>
			<td></td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> handle: Patient.identifier, Patient.gender, Patient.birthDate, and Patient.link.</td>
            <td><img src="arrow_up.png" width="20"/> Servers <strong>SHALL</strong> explain Patient.identifier.</td>
		</tr>
		<tr>
            <td></td>
            <td>Servers <strong>SHALL</strong>:populate-if-known Patient.identifier.value, Patient.active, and Patient.link. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support the <code>given</code>, <code>birthdate</code>, and <code>gender</code> search parameters.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>given</code>, <code>birthdate</code>, and <code>gender</code> search parameters.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td>Practitioner</td>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
			<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td rowspan="2">PractitionerRole</td>
            <td><img src="arrow_up.png" width="20"/> Clients <strong>SHALL</strong> handle PractitionerRole.practitioner.</td>
			<td></td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
			<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr> 
	</tbody>
</table>

##### Additional resource types
None.

#### International Patient Summary CapabilityStatement additional requirements

[International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/) defines the expected capabilities of systems that represent the International Patient Summary (IPS) using HL7 FHIR. An IPS document is an electronic health record extract containing essential healthcare information about a subject of care. 

##### IPS Server CapabilityStatement additional requirements 
The [International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/) introduces additional conformance expectations not required by AU Core. Implementers are advised to note that some code changes may be required to ensure full compliance.

**Legend:**

<img src="arrow_up.png" width="16"/> **Stronger**: The CapabilityStatement strengthens a conformance requirement that is present in the AU Core CapabilityStatement (e.g. **SHOULD** to **SHALL**).

<img src="plus_sign.png" width="16"/> **New**: The CapabilityStatment includes a conformance requirement that is NOT present in the mapped AU Core CapabilityStatement.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 80%;">
	</colgroup>     
	<thead>
        <tr>
            <th>Resource type</th>
            <th>Additional requirements</th>
        </tr>
    </thead> 
    <tbody>
		<tr>
			<td>AllergyIntolerance</td>
			<td>Servers <strong>SHOULD</strong> support the IPS AllergyIntolerance profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
		</tr>
		<tr>
			<td>Condition</td>
			<td>Servers <strong>SHOULD</strong> support the IPS Condition profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
		</tr>
		<tr>
			<td>DiagnosticReport</td>
			<td>Servers <strong>SHOULD</strong> support the IPS DiagnosticReport profile.</td>
		</tr>
        <tr>
            <td>Immunization</td>
            <td>Servers <strong>SHOULD</strong> support the IPS Immunization profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td>Medication</td>
            <td>Servers <strong>SHOULD</strong> support the IPS Medication profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td>MedicationRequest</td>
            <td>Servers <strong>SHOULD</strong> support the IPS MedicationRequest profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td>MedicationStatement</td>
            <td>Servers <strong>SHOULD</strong> support the IPS MedicationStatement profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td>Observation</td>
			<td><strong>SHOULD</strong> support the following IPS Observation profiles: Observation - Pregnancy: EDD, Observation - Pregnancy: status, Observation - SH: alcohol use, Observation - SH: tobacco use, Observation Results: laboratory/pathology (IPS), Observation Results: radiology (IPS). <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
			<td>Organization</td>
			<td>Servers <strong>SHOULD</strong> support the Organization (IPS) profile.</td>
		</tr>
		<tr>
            <td rowspan="2">Patient</td>
            <td>Servers <strong>SHALL</strong> support the IPS Patient profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHOULD</strong> support <code>$summary</code> operation. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>Practitioner</td>
			<td>Servers <strong>SHOULD</strong> support the Practitioner (IPS) profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
		</tr>
		<tr>
			<td>PractitionerRole</td>
			<td>Servers <strong>SHOULD</strong> support the PractitionerRole (IPS) profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
		</tr>
		<tr>
			<td>Procedure</td>
			<td>Servers <strong>SHOULD</strong> support the Procedure (IPS) profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
		</tr>
		<tr>
			<td>Specimen</td>
			<td>Servers <strong>SHOULD</strong> support the Specimen (IPS) profile. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>DocumentReference</td>
			<td><strong>SHOULD</strong> support <code>$docref</code> operation. <img src="plus_sign.png" width="20"/></td>
		</tr>
    </tbody>
</table>    

##### Additional resource types
The following table lists resource types that are supported by [IPS Server CapabilityStatement](https://hl7.org/fhir/uv/ips/2024Sep/CapabilityStatement-ips-server.html) but are not currently supported by the AU Core Responder CapabilityStatement. These differences may have implications for systems aiming to be interoperable across both specifications.
    
<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 80%;">
	</colgroup>     
	<thead>
        <tr>
            <th>Additional resource type</th>
            <th>Resource conformance</th>
        </tr>
    </thead> 
    <tbody>
        <tr>
            <td>Bundle</td>
            <td><strong>supported</strong></td>
        </tr>
        <tr>
            <td>Composition</td>
            <td><strong>supported</strong></td>
        </tr>
        <tr>
            <td>Device</td>
            <td><strong>supported</strong></td>
        </tr>
        <tr>
            <td>DeviceUseStatement</td>
            <td><strong>supported</strong></td>
        </tr>
        <tr>
            <td>ImagingStudy</td>
            <td><strong>supported</strong></td>
        </tr>
        <tr>
            <td>Flag</td>
            <td><strong>supported</strong></td>
        </tr>
        <tr>
            <td>OperationDefinition</td>
            <td><strong>SHOULD</strong></td>
        </tr>
	</tbody>
</table>

#### US Core CapabilityStatement additional requirements

A system conforming to an AU Core CapabilityStatement aligns with US Core CapabilityStatements but will require additional functionality to meet its stricter or broader requirements. The table below identifies additional requirements included in US Core CapabilityStatements. Implementers are advised to note that some code changes may be required to ensure full compliance.

**Legend:**

<img src="arrow_up.png" width="16"/> **Stronger**: The CapabilityStatement strengthens a conformance requirement that is present in the AU Core CapabilityStatement (e.g. **SHOULD** to **SHALL**).

<img src="plus_sign.png" width="16"/> **New**: The CapabilityStatment includes a conformance requirement that is NOT present in the maped AU Core CapabilityStatement.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 80%;">
	</colgroup>     
	<thead>
        <tr>
            <th>Resource type</th>
            <th>Additional requirements</th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td>FHIR resource support</td>
            <td>Clients <strong>SHALL</strong> support fetching and querying of one or more US Core profile(s), using the supported RESTful interactions and search parameters declared in the US Core Server CapabilityStatement.</td>
        </tr>
		<tr>
            <td rowspan="7">Security</td>
            <td><strong>SHALL</strong> establish a risk analysis and management regime conforming with HIPAA. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> use a single time source for audit and logging. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> maintain audit logs of the various transactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> conform to FHIR Communications Security requirements. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support SMART App Launch for authentication and authorisation. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> implement consent according to local, institutional, and legal policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> provide Provenance statements using the US Core Provenance Profile resource and associated requirements. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="3">AllergyIntolerance</td>
            <td>Clients <strong>SHALL</strong> support the US Core AllergyIntolerance Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="7">Condition</td>
            <td><strong>SHALL</strong> support both US Core Condition Encounter Diagnosis Profile US Core Condition Problems and Health Concerns Profile, which have additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support assertedDate Extension, Condition.onsetDateTime, or Condition.recordedDate elements. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>patient+abatement-date</code>, <code>patient+asserted-date</code>, <code>patient+category+encounter</code>, <code>patient+_lastUpdated</code>, and <code>patient+recorded-date</code> search parameters combination. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td>When Condition.category is a "problems-list-item", the Condition.clinicalStatus <strong>SHOULD NOT</strong> be unknown. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> reference encounter in Condition.encounter when category is "encounter-diagnosis". <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="9">DiagnosticReport</td>
            <td>Clients <strong>SHALL</strong> support at least one of US Core DiagnosticReport Profile for Laboratory Results Reporting  or US Core DiagnosticReport Profile for Report and Note Exchange profiles. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support GET by id: <code>GET [base]/DiagnosticReport/[id]</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
       <tr>
            <td><strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>create</code> for the US Core DiagnosticReport Profile for Report and Note exchange profile. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			  <td><strong>SHALL</strong> support <code>patient</code>, <code>patient+code</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameter and search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support the <code>resolves</code> reference policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>patient+code+date</code>, <code>patient+status</code>, and <code>patient+category+_lastUpdated</code> search parameter combinations. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td rowspan="15">DocumentReference</td>
             <td>Clients <strong>SHALL</strong> support US Core DocumentReference Profile.</td>
        </tr>
		<tr>
		  <td><strong>SHALL</strong> support the five <a href="https://hl7.org/fhir/us/core/ValueSet-us-core-clinical-note-type.html">Common Clinical Notes</a> in the DocumentReference.type <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
		  <td>Clients <strong>SHALL</strong> support both <code>DocumentReference.content.attachment.url</code> and <code>DocumentReference.content.attachment.data</code> for document retrieval. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
		  <td>If there are multiple <code>DocumentReference.content</code> repetitions, these <strong>SHALL</strong> represent the same document in different formats or attachment metadata, and <strong>SHALL NOT</strong> represent different document versions; versioning is handled using multiple DocumentReferences with <code>DocumentReference.relatesTo</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
		  <td>Responsible Organisation <strong>SHALL</strong> be either be present in <code>DocumentReference.custodian</code> or accessible via a Provenance resource using <code>Provenance.agent.who</code> or <code>Provenance.agent.onBehalfOf</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td><strong>SHALL</strong> support GET by id: <code>GET [base]/DocumentReference/[id]</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHALL</strong> support <code>create</code>, <code>read</code> and <code>search-type</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support <code>_id</code>, <code>patient</code>, <code>patient+type</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameters and search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support the <code>resolves</code> reference policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
         <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>$docref</code> operation. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> be capable of receiving at least a reference to a CCD document. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> be capable of receiving documents as included resources in response to the $docref operation. <img src="plus_sign.png" width="20"/></td>
        </tr>
         <tr>
            <td><strong>SHOULD</strong> support for <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>patient+type+period</code> and <code>patient+status</code> search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="8">Encounter</td>
            <td><strong>SHALL</strong> support the US Core Encounter profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support <code>_id</code> search parameter. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td>Clients <strong>SHALL</strong> support both Encounter.location.location and Encounter.serviceProvider. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>identifier</code>, <code>patient+type</code>, <code>patient+_lastUpdated</code>, and <code>patient+discharge-disposition</code> search parameters and search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td>Encounter.reasonReference Observation reference <strong>SHOULD</strong> conform to a US Core Observation if applicable. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> be capable of representing the event facility or location directly when it differs from the location referenced in Encounter.location. <img src="plus_sign.png" width="20"/></td>
        </tr>
		 <tr>
            <td>HealthcareService</td>
            <td><strong>SHOULD</strong> support <code>vread</code> interaction. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="4">Immunization</td>
            <td>Clients <strong>SHALL</strong> support the US Core Immunization Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support NDC vaccine codes as translations to CVX vaccine codes, which are required based on the ONC U.S. Core Data for Interoperability (USCDI) requirements. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="4">Location</td>
            <td>Clients <strong>SHALL</strong> support the US Core Location Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support the <code>address</code> search parameter.<img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> format Location.address.line and Location.address.city according to the Project US@ Technical Specification for Patient Addresses Final Version 1.0. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="2">Medication</td>
            <td>Clients <strong>SHALL</strong> support the US Core Medication Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="9">MedicationRequest</td>
            <td><strong>SHALL</strong> support the US Core Observation profiles. Profiles with equivalent AU Core profiles are compliant, as noted in the <a href="comparison.html#profile-comparison">Profile comparison</a>. Profiles without an equivalent are considered <strong>additional requirements</strong>. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Clients <strong>SHALL</strong> support the US Core MedicationRequest Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
		</tr>
		<tr>
			<td><strong>SHALL</strong> support <code>patient+intent</code> and <code>patient+intent+status</code> search parameter combinations. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td><strong>SHALL</strong> support both MedicationRequest.reportedBoolean and MedicationRequest.reportedReference. <img src="plus_sign.png" width="20"/></td>
        </tr> 
        <tr>
            <td><strong>SHALL</strong> support all target resource types for MedicationRequest.reasonReference. <img src="plus_sign.png" width="20"/></td>
        </tr>  
		<tr>
            <td>Clients <strong>SHOULD</strong> interpret the use of MedicationRequest.requester with Patient or RelatedPerson indicates a self-prescribed medication. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td><strong>SHOULD</strong> support <code>patient+intent+encounter</code> search parameter combinations <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
            <td rowspan="8">Observation</td>
            <td><strong>SHALL</strong> support all US Core Observation profiles listed in the specification, including those compared in the <a href="comparison.html#profile-comparison">Profile comparison</a> and additional profiles not included in the comparison.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> ensure that an Observation without a value includes a reason for absence using Observation.dataAbsentReason unless there are component observations, or references to other Observations. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td>Systems <strong>SHALL</strong> support Observation.dataAbsentReason when an Observation has no value. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td>Systems <strong>SHALL</strong> support Observation.component.dataAbsentReason when component values are missing. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>        
		<tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr> 
        <tr>
            <td><strong>SHOULD</strong> support <code>patient+category+_lastUpdated</code> search parameter combination. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Systems <strong>SHOULD</strong> support Observation.effectivePeriod for time-based tests. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td rowspan="6">Organization</td>
            <td><strong>SHALL</strong> support the US Core Organization Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>address</code> search parameter. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td><strong>SHALL</strong> support the use of a National Provider Identifier (NPI) in Organization.identifier. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support the use of Clinical Laboratory Improvement Amendments (CLIA) identifiers in Organization.identifier. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> follow the Project US@ Technical Specification for Patient Addresses Final Version 1.0 as the standard style guide for populating Organization.address.line and Organization.address.city. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="8">Patient</td>
            <td><strong>SHALL</strong> support the US Core Patient Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support US Core specific patient demographics: contact detail, communication language, race, ethnicity, birth sex, previous name, and name suffix. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td><strong>SHALL</strong> support <code>_id</code>, <code>name</code>, <code>birthdate+name</code> and <code>gender+name</code> search parameter and search parameter combinations. <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Patient.deceased[x] is used, at least Patient.deceasedDateTime <strong>SHALL</strong> be supported. at least Patient.deceasedDateTime if Patient.deceased[x] is used. <img src="plus_sign.png" width="20"/></td>
		</tr>	
		<tr>
			<td>Systems <strong>SHALL</strong> follow the Project US@ Technical Specification for Patient.address formatting. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td><strong>SHOULD NOT</strong> use a Social Security Number in Patient.identifier.value. <img src="plus_sign.png" width="20"/></td>
		</tr>	
        <tr>
            <td rowspan="4">Practitioner</td>
            <td><strong>SHALL</strong> support the US Core Practitioner which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>name</code> search parameter. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
			<td>Clients <strong>SHALL</strong> support <code>Practitioner.address</code> whether location/contact information is provided via <code>Practitioner</code> or <code>PractitionerRole</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="5">PractitionerRole</td>
            <td><strong>SHALL</strong> support the US Core PractitionerRole which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>specialty</code> search parameter. <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_include=PractitionerRole:endpoint</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="6">Procedure</td>
            <td><strong>SHALL</strong> support the US Core Procedure.</td>
        </tr>
		<tr>
			<td>Clients <strong>SHALL</strong> support all target resource types in Procedure.reasonReference. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>Clients <strong>SHALL</strong> support both US Core Procedure and US Core ServiceRequest profiles. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>Systems <strong>SHOULD</strong> support <code>Procedure.focalDevice</code> referencing the US Core Implantable Device Profile when applicable. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="6">RelatedPerson</td>
           <td><strong>SHALL</strong> support the US Core RelatedPerson which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		 <tr>
            <td><strong>SHALL</strong> support <code>_id</code> search parameter. <img src="arrow_up.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>name</code> search parameter. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> format RelatedPerson.address.line and RelatedPerson.address.city according to the Project US@ Technical Specification for Patient Addresses Final Version 1.0. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="9">Specimen</td>
            <td><strong>SHALL</strong> support the US Core Specimen Profile.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support GET by id: <code>GET [base]/Specimen/[id]</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHALL</strong> support both Specimen.identifier and Specimen.accessionIdentifier. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Clients <strong>SHALL</strong> support both Specimen.identifier and Specimen.accessionIdentifier. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td><strong>SHALL</strong> support the <code>_id</code> search parameter. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>resolves</code> reference policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>read</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>patient</code> search parameter. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
    </tbody>
</table>  
  
##### Additional resource types
The following table lists resource types that are supported by [US Core Client CapabilityStatement](https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-client.html) but are not currently supported by the AU Core Requester CapabilityStatement. These differences may have implications for systems aiming to be interoperable across both specifications.
    
<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 80%;">
	</colgroup>    
	<thead>
        <tr>
            <th>Additional resource type</th>
            <th>Resource conformance</th>
        </tr>
    </thead> 
    <tbody>
		<tr>
            <td>CarePlan</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>CareTeam</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Coverage</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Device</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Endpoint</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Goal</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>Media</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>MedicationDispense</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>Provenance</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>Questionnaire</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>QuestionnaireResponse</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>ValueSet</td>
            <td><strong>SHOULD</strong></td>
        </tr>
	</tbody>
</table>

##### US Core Server CapabilityStatement additional requirements
The [US Core Server CapabilityStatement](https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-server.html) introduces additional conformance expectations not required by AU Core. Implementers are advised to note that some code changes may be required to ensure full compliance.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 80%;">
	</colgroup> 
	<thead>
        <tr>
            <th>Resource type</th>
            <th>Additional requirements</th>
        </tr>
    </thead>
    <tbody>  
		  <tr>
            <td>FHIR resource support</td>
            <td>US Core Server <strong>SHALL</strong> support the US Core Patient resource profile and at least one additional resource profile from the list of US Core Profiles and all Must Support US Core Profiles and resources it references.</td>
        </tr>
		<tr>
            <td rowspan="7">Security</td>
            <td><strong>SHALL</strong> establish a risk analysis and management regime conforming with HIPAA. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> use a single time source for audit and logging. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> maintain audit logs of the various transactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> conform to FHIR Communications Security requirements. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support SMART App Launch for authentication and authorisation. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> implement consent according to local, institutional, and legal policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> provide Provenance statements using the US Core Provenance Profile resource and associated requirements. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="3">AllergyIntolerance</td>
            <td>Clients <strong>SHALL</strong> support the US Core AllergyIntolerance Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="8">Condition</td>
             <td><strong>SHALL</strong> support both US Core Condition Encounter Diagnosis Profile US Core Condition Problems and Health Concerns Profile, which have additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td>Servers <strong>SHALL</strong> support Condition.recordedDate elements. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>Servers <strong>SHALL</strong> support at least one of the assertedDate Extension and Condition.onsetDateTime. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>patient+abatement-date</code>, <code>patient+asserted-date</code>, <code>patient+category+encounter</code>, <code>patient+_lastUpdated</code>, and <code>patient+recorded-date</code> search parameters combination. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td>When Condition.category is a "problems-list-item", the Condition.clinicalStatus <strong>SHOULD NOT</strong> be unknown. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> reference encounter in Condition.encounter when category is "encounter-diagnosis". <img src="plus_sign.png" width="20"/></td>
        </tr>
       <tr>
            <td rowspan="6">DiagnosticReport</td>
            <td><strong>SHALL</strong> support GET by id: <code>GET [base]/DiagnosticReport/[id]</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHALL</strong> support <code>patient</code>, <code>patient+code</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameters and search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>patient+code+date</code>, <code>patient+status</code>, <code>patient+category+_lastUpdated</code> search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support the <code>resolves</code> reference policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="11">DocumentReference</td>
            <td><strong>SHALL</strong> support GET by id: <code>GET [base]/DocumentReference/[id]</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support <code>$docref</code> operation. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHALL</strong> support <code>_id</code>, <code>patient</code>, <code>patient+type</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameter and search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>        
		<tr>
            <td><strong>SHALL</strong> support <code>create</code>, <code>search-type</code> and <code>read</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>	
        <tr>
            <td><strong>SHALL</strong> support either DocumentReference.attachment.url or DocumentReference.attachment.data representations of content. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHALL</strong> support multiple DocumentReference.content elements represent the same document in different formats. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHALL</strong> support inclusion of the responsible organisation present in DocumentReference.custodian or via Provenance.agent. <img src="plus_sign.png" width="20"/></td>
        </tr>	
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>patient+type+period</code> and <code>patient+status</code> search parameter and search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support the <code>resolves</code> reference policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="8">Encounter</td>
            <td><strong>SHALL</strong> support the US Core Encounter profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support <code>_id</code> search parameter. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td>Clients <strong>SHALL</strong> support both Encounter.location.location and Encounter.serviceProvider. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>identifier</code>, <code>patient+type</code>, <code>patient+_lastUpdated</code>, and <code>patient+discharge-disposition</code> search parameters and search parameter combinations. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td>Encounter.reasonReference Observation reference <strong>SHOULD</strong> conform to a US Core Observation if applicable. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> be capable of representing the event facility or location directly when it differs from the location referenced in Encounter.location. <img src="plus_sign.png" width="20"/></td>
        </tr>
<tr>
            <td rowspan="4">Immunization</td>
            <td>Clients <strong>SHALL</strong> support the US Core Immunization Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support NDC vaccine codes as translations to CVX vaccine codes, which are required based on the ONC U.S. Core Data for Interoperability (USCDI) requirements. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="4">Location</td>
            <td>Clients <strong>SHALL</strong> support the US Core Location Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHALL</strong> support the <code>address</code> search parameter.<img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> format Location.address.line and Location.address.city according to the Project US@ Technical Specification for Patient Addresses Final Version 1.0. <img src="plus_sign.png" width="20"/></td>
        </tr>
<tr>
            <td rowspan="2">Medication</td>
            <td>Clients <strong>SHALL</strong> support the US Core Medication Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="9">MedicationRequest</td>
            <td><strong>SHALL</strong> support the US Core MedicationRequest Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
          </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>patient+intent</code> and <code>patient+intent+status</code> search parameter combinations. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
             <td><strong>SHALL</strong> support at least one target resource type for MedicationRequest.reasonReference. <img src="plus_sign.png" width="20"/></td>
        </tr> 
        <tr>
            <td><strong>SHALL</strong> support all target resource types for MedicationRequest.reasonReference. <img src="plus_sign.png" width="20"/></td>
        </tr>  
		<tr>
            <td>Servers <strong>SHOULD</strong> use MedicationRequest.requester to indicate Patient or RelatedPerson when representing self-prescribed medications. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td><strong>SHOULD</strong> support <code>patient+intent+encounter</code> search parameter combinations <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> ensure that referenced resources in MedicationRequest.reasonReference conform to US Core profiles. <img src="plus_sign.png" width="20"/></td>
        </tr> 
        <tr>
            <td rowspan="9">Observation</td>
            <td><strong>SHALL</strong> support all US Core Observation profiles listed in the specification, including those compared in the <a href="comparison.html#profile-comparison">Profile comparison</a> and additional profiles not included in the comparison.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> ensure that an Observation without a value includes a reason for absence using Observation.dataAbsentReason unless there are component observations, or references to other Observations. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td>Systems <strong>SHALL</strong> support Observation.dataAbsentReason when an Observation has no value. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td>Systems <strong>SHALL</strong> support Observation.component.dataAbsentReason when component values are missing. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>        
		<tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr> 
        <tr>
            <td><strong>SHOULD</strong> support <code>patient+category+_lastUpdated</code> search parameter combination. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Systems <strong>SHOULD</strong> support Observation.effectivePeriod for time-based tests. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>For Observation.category 'laboratory', updates to meta.lastUpdated <strong>SHOULD</strong> reflect result or status changes. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
			<td rowspan="5">Organization</td>
            <td><strong>SHALL</strong> support the US Core Organization Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>address</code> search parameter. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
            <td><strong>SHALL</strong> support the use of a National Provider Identifier (NPI) in Organization.identifier. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support the use of Clinical Laboratory Improvement Amendments (CLIA) identifiers in Organization.identifier. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> follow the Project US@ Technical Specification for Patient Addresses Final Version 1.0 as the standard style guide for populating Organization.address.line and Organization.address.city. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
			<td rowspan="8">Patient</td>
            <td><strong>SHALL</strong> support the US Core Patient Profile which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support US Core specific patient demographics: contact detail, communication language, race, ethnicity, birth sex, previous name, and name suffix. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td><strong>SHALL</strong> support <code>_id</code>, <code>name</code>, <code>birthdate+name</code> and <code>gender+name</code> search parameter and search parameter combinations. <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Patient.deceased[x] is used, at least Patient.deceasedDateTime <strong>SHALL</strong> be supported. at least Patient.deceasedDateTime if Patient.deceased[x] is used. <img src="plus_sign.png" width="20"/></td>
		</tr>	
		<tr>
			<td>Systems <strong>SHALL</strong> follow the Project US@ Technical Specification for Patient.address formatting. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td><strong>SHOULD NOT</strong> use a Social Security Number in Patient.identifier.value. <img src="plus_sign.png" width="20"/></td>
		</tr>	
		<tr>
            <td rowspan="5">Practitioner</td>
            <td><strong>SHALL</strong> support the US Core Practitioner which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>name</code> search parameter. <img src="arrow_up.png" width="20"/></td>
		</tr>
		<tr>
			<td>Servers <strong>SHALL</strong> support <code>Practitioner.address</code> if PractitionerRole is not implemented. <img src="plus_sign.png" width="20"/></td>
 		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Systems <strong>SHOULD</strong> follow the Project US@ Technical Specification for Practitioner.address. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td rowspan="5">PractitionerRole</td>
            <td><strong>SHALL</strong> support the US Core PractitionerRole which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support <code>specialty</code> search parameter. <img src="arrow_up.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_include=PractitionerRole:endpoint</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td rowspan="6">Procedure</td>
            <td><strong>SHALL</strong> support the US Core Procedure.</td>
        </tr>
		<tr>
			<td>Servers <strong>SHALL</strong> support at least one target resource types in Procedure.reasonReference. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>Servers <strong>SHALL</strong> support both US Core Procedure and US Core ServiceRequest profiles. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td>Systems <strong>SHOULD</strong> support <code>Procedure.focalDevice</code> referencing the US Core Implantable Device Profile when applicable. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
			<td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="6">RelatedPerson</td>
           <td><strong>SHALL</strong> support the US Core RelatedPerson which has additional requirements as detailed in the <a href="comparison.html#profile-comparison">Profile comparison</a>.</td>
        </tr>
		 <tr>
            <td><strong>SHALL</strong> support <code>_id</code> search parameter. <img src="arrow_up.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>name</code> search parameter. <img src="arrow_up.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> format RelatedPerson.address.line and RelatedPerson.address.city according to the Project US@ Technical Specification for Patient Addresses Final Version 1.0. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td rowspan="9">Specimen</td>
            <td><strong>SHALL</strong> support the US Core Specimen Profile.</td>
        </tr>
		<tr>
			<td><strong>SHALL</strong> support GET by id: <code>GET [base]/Specimen/[id]</code>. <img src="plus_sign.png" width="20"/></td>
		</tr>
        <tr>
            <td><strong>SHALL</strong> support both Specimen.identifier and Specimen.accessionIdentifier. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
			<td>Servers <strong>SHALL</strong> support at least one of Specimen.identifier or Specimen.accessionIdentifier. <img src="plus_sign.png" width="20"/></td>
		</tr>
		<tr>
            <td><strong>SHALL</strong> support the <code>_id</code> search parameter. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>resolves</code> reference policy. <img src="plus_sign.png" width="20"/></td>
        </tr>
		<tr>
            <td><strong>SHOULD</strong> support <code>read</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>patient</code> search parameter. <img src="plus_sign.png" width="20"/></td>
        </tr>
        <tr>
            <td><strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions. <img src="plus_sign.png" width="20"/></td>
        </tr> 
    </tbody>
</table>   

##### Additional resource types
The following table lists resource types that are supported by [US Core Server CapabilityStatement](https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-server.html) but are not currently supported by the AU Core Client CapabilityStatement. These differences may have implications for systems aiming to be interoperable across both specifications.
    
<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 80%;">
	</colgroup>  
	<thead>
        <tr>
            <th>Additional resource type</th>
            <th>Resource conformance</th>
        </tr>
    </thead> 
    <tbody>
        <tr>
            <td>CarePlan</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>CareTeam</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Coverage</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Device</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Endpoint</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>Goal</td>
            <td><strong>SHOULD</strong></td>
        </tr>
        <tr>
            <td>HealthcareService</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>Media</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>MedicationDispense</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>Provenance</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>Questionnaire</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>QuestionnaireResponse</td>
            <td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>ValueSet</td>
            <td><strong>SHOULD</strong></td>
        </tr>
	</tbody>
</table>

