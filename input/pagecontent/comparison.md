AU Core aligns to, and leverages, international standards and other national standards, in particular:
- [International Patient Access 1.0.0](https://hl7.org/fhir/uv/ipa/STU1/)
- [International Patient Summary Implementation Guide 2.0.0-ballot](https://hl7.org/fhir/uv/ips/2024Sep/)
- [US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/STU7/)

Relationships between AU Core, AUCDI, and the above key implementation guides is described in [Relationship with other IGs](relationship.html). 

Corresponding profiles, conformance requirements, and capability statements included in the key FHIR implementation guides were reviewed and considered during AU Core's development to ensure alignment, and to facilitate adoption of, this standard.

The below comparison evaluates AU Core conformance requirements with the key implementation guides identifying where compliance with AU Core satisfies the expectations established by the referenced implementation guide. 

At this time only profile comparison is available. Future versions of AU Core will compare capability statements.

### Profile comparison
As part of profile comparison, the requirements, constraints, and standards specified in a particular FHIR profile are evaluated. These requirements can include mandatory elements, *Must Support* elements, cardinality constraints, data types, terminology bindings, usage rules, extensions, rules on missing or suppressed data. 

The table below provides a profile only comparison from AU Core to profiles in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a resource that is compliant with an International Patient Access profile **MAY NOT** be compliant with AU Core.

**Legend:**

<img src="green_checkmark.svg.png" width="20"/> **Compliant**: An AU Core compliant resource meets all requirements of the compared profile.

<img src="orange_checkmark.svg.png" width="20"/> **Additional requirements**: An AU Core compliant resource is compatible, but additional changes may be needed to meet all requirements of the compared profile. Where additional requirements are identified, more information is provided in the sections below.

<img src="cross_red_circle.svg.png" width="20"/> **Incompatible**: An AU Core compliant resource is incompatible with the compared profile. A resource cannot be compliant to both. Where incompatible requirements are identified, more information is provided in the sections below.

<img src="minus_symbol.svg.png" width="20"/> **No equivalent profile**: No equivalent profile for comparison.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">AU Core</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">International Patient Access 1.0.0</th>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/><img src="cross_red_circle.svg.png" width="20"/></td>
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
[International Patient Access 1.0.0](https://hl7.org/fhir/uv/ipa/STU1/) describes how an application acting on behalf of a patient can access patient information from a clinical records system using a FHIR-based API.

##### Incompatible requirements
The following IPA profile(s) contain incompatible requirements with the equivalent AU Core profile. Implementers are advised to note that substantial code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">International Patient Access 1.0.0</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Incompatible requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-medicationrequest.html">IPA-MedicationRequest</a></td>
            <td style="width: 25%;">MedicationRequest.requester</td>
            <td style="width: 25%;">IPA prohibits reference to Organization and RelatedPerson resources.</td>
        </tr>
    </tbody>
</table>

##### Additional requirements
The following IPA profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">International Patient Access 1.0.0</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-immunization.html">IPA-Immunization</a></td>
            <td style="width: 25%;">Immunization.statusReason</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-medicationrequest.html">IPA-MedicationRequest</a></td>
            <td style="width: 25%;">MedicationRequest.reported[x]</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.text</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
         <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-medicationstatement.html">IPA-MedicationStatement</a></td>
            <td style="width: 25%;">MedicationStatement.statusReason</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
         <tr>
            <td style="width: 25%;">MedicationStatement.context</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationStatement.informationSource</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationStatement.dosage.text</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-patient.html">IPA-Patient</a></td>
            <td style="width: 25%;">Patient.identifier.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.active</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.link</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPA.</td>
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
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.type</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.clinicalStatus</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.verificationStatus</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.code</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.reaction.manifestation</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.onset[x]</td>
            <td style="width: 25%;"><i>Must Support</i> on onsetDateTime in IPS.</td>
        </tr>
        <tr>
            <td rowspan="7" style="width: 25%;"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td rowspan="7" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Condition-uv-ips.html">Condition (IPS)</a></td>
            <td style="width: 25%;">Condition.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.onset[x]</td>
            <td style="width: 25%;"><i>Must Support</i> on onsetDateTime in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.clinicalStatus</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.verificationStatus</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.category</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.severity</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.code</td>
            <td  style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Immunization-uv-ips.html">Immunization (IPS)</a></td>
            <td style="width: 25%;">Immunization.patient.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.vaccineCode</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 25%;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Medication-uv-ips.html">Medication (IPS)</a></td>
            <td style="width: 25%;">Medication.code</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.form</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.item[x]</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.strength</td>
            <td style="width: 25%;">IPS requires UCUM for coded quantity units. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-MedicationRequest-uv-ips.html">Medication Request (IPS)</a></td>
            <td style="width: 25%;">MedicationRequest.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationRequest.dosageInstruction.text</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationRequest.dosageInstruction.timing</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-MedicationStatement-uv-ips.html">Medication Statement (IPS)</a></td>
            <td style="width: 25%;">MedicationStatement.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.effective[x].extension.where (url='http://hl7.org/fhir/StructureDefinition/data-absent-reason')</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.dosage.text</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.dosage.timing</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-results-laboratory-uv-ips.html">Observation Results: laboratory (IPS)</a></td>
            <td style="width: 25%;">Observation.status</td>
            <td style="width: 25%;">IPS requires value from <a href="https://hl7.org/fhir/uv/ips/2024Sep/ValueSet-results-status-uv-ips.html">Results Status Codes - IPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.performer</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Patient-uv-ips.html">Patient (IPS)</a></td>
            <td style="width: 25%;">Patient.generalPractitioner</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Practitioner-uv-ips.html">Practitioner (IPS)</a></td>
            <td style="width: 25%;">Practitioner.telecom</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address</td>
            <td style="width: 25%;"><i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Procedure-uv-ips.html">Procedure (IPS)</a></td>
            <td style="width: 25%;">Procedure.code</td>
            <td style="width: 25%;">IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.performed[x]</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-Observation-tobaccouse-uv-ips.html">Observation - SH: tobacco use</a></td>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. <i>Must Support</i> element in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">IPS requires LOINC code 72166-2. IPS requires <a href="https://hl7.org/fhir/uv/ips/2024Sep/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a>.</td>
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
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.meta.lastUpdated</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.assertedDate</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.recordedDate</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a></td>
            <td style="width: 25%;">Condition.assertedDate</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.encounter</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
         <tr>
            <td style="width: 25%;">Condition.recordedDate</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
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
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="9" style="width: 25%;"><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td rowspan="9" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
            <td style="width: 25%;">Encounter.type</td>
            <td style="width: 25%;">US Core requires minimum of 1. <i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.meta</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.meta.lastUpdated</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.identifier</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.identifier.system</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.identifier.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.participant.period</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.hospitalization</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Encounter.hospitalization.dischargeDisposition</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-immunization.html">US Core Immunization Profile</a></td>
            <td style="width: 25%;">Immunization.vaccineCode</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.6/expansion">CVX Vaccines Administered Vaccine Set</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.statusReason</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.encounter</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Immunization.location</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="8" style="width: 25%;"><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td rowspan="8" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-location.html">US Core Location Profile</a></td>
            <td style="width: 25%;">Location.name</td>
            <td style="width: 25%;">US Core requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.identifier</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.status</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.telecom</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.line</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.city</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.state</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Location.address.postalCode</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-medication.html">US Core Medication Profile</a></td>
            <td style="width: 25%;">Medication.code</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion">Medication Clinical Drug</a>.</td>
        </tr>
        <tr>
            <td rowspan="10" style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td rowspan="10" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-medicationrequest.html">US Core MedicationRequest Profile</a></td>
            <td style="width: 25%;">MedicationRequest.medicationCodeableConcept</td>
            <td style="width: 25%;">US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1010.4/expansion">Medication Clinical Drug</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.category</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.reported[x]</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.text</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.timing</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.doseAndRate</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.doseAndRate.dose[x]</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dispenseRequest</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dispenseRequest.numberOfRepeatsAllowed</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dispenseRequest.quantity</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="9" style="width: 25%;"><a href="StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td rowspan="9" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-organization.html">US Core Organization Profile</a></td>
            <td style="width: 25%;">Organization.active</td>
            <td style="width: 25%;">US Core requires minimum of 1. <i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.telecom.system</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.telecom.system</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.telecom.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.line</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.city</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.state</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.postalCode</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Organization.address.country</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
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
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.meta.lastUpdated</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.encounter</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="13" style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td rowspan="13" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-patient.html">US Core Patient Profile</a></td>
            <td style="width: 25%;">Patient.identifier</td>
            <td style="width: 25%;">US Core requires all identifiers to have system and value.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.identifier.system</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.identifier.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
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
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.use</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.line</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.city</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.state</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.telecom.postalCode</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="12" style="width: 25%;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td rowspan="12" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-practitioner.html">US Core Practitioner Profile</a></td>
            <td style="width: 25%;">Practitioner.identifier</td>
             <td style="width: 25%;">US Core requires minimum of 1, and all identifiers to have system and value.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.identifier.system</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.identifier.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.telecom</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.telecom.system</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.telecom.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.line</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.city</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.state</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.postalCode</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address.country</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td rowspan="6" style="width: 25%;"><a href="StructureDefinition-au-core-practitionerrole.html">AU Core PractitionerRole</a></td>
            <td rowspan="6" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-practitionerrole.html">US Core PractitionerRole Profile</a></td>
            <td style="width: 25%;">PractitionerRole.telecom, PractitionerRole.endpoint</td>
            <td style="width: 25%;">US Core requires telecom or endpoint to be present (pd-1).</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.location</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.telecom</td>
            <td style="width: 25%;">US Core requires all telecom to have system and value.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.telecom.system</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.telecom.value</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">PractitionerRole.endpoint</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-relatedperson.html">AU Core RelatedPerson</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-relatedperson.html">US Core RelatedPerson Profile</a></td>
            <td style="width: 25%;">RelatedPerson.active</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core and requires minimum of 1.</td>
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
            <td style="width: 25%;"><i>Must Support</i> element in US Core. US Core extensible binding to <a href="https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1267.3/expansion">Smoking status comprehensive</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.value[x]:valueQuantity</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-simple-observation.html">US Core Simple Observation Profile</a></td>
            <td style="width: 25%;">Observation.performer</td>
            <td style="width: 25%;"><i>Must Support</i> element in US Core.</td>
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