AU Core aligns with international and national standards. During its development, profiles from relevant FHIR implementation guides were reviewed to ensure alignment and support the adoption of this standard. These implementation guides include:
- [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)
- [International Patient Access 1.0.0](https://hl7.org/fhir/uv/ipa/STU1/)
- [International Patient Summary Implementation Guide 1.1.0](https://hl7.org/fhir/uv/ips/STU1.1/)
- [US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/2024Jan/)

This page compares AU Core with other key implementation guides.

For more information on how AU Core relates to other implementation guides, see [Relationship with other IGs](relationship.html).

### Profile comparison
A resource may be compliant to multiple implementation guides. In addition to AU Core profiles, a FHIR resource may be compliant to profiles published in project implementation guides, other national implementation guides, or international implementation guides.

Compliance refers to a resource meeting all the requirements, constraints, and standards specified in a particular FHIR profile or an implementation guide. These requirements can include mandatory elements, cardinality constraints, data types, terminology bindings, and extensions. 

The table below provides a profile only comparison from AU Core to other implementation guides. It indicates whether a resource compliant with a particular AU Core profile also satisfies (i.e., is compliant with) a profile from [International Patient Access](https://hl7.org/fhir/uv/ipa/STU1/), [International Patient Summary](https://hl7.org/fhir/uv/ips/STU1.1/), or [US Core](https://hl7.org/fhir/us/core/STU7/). 

Compliance in the reverse direction is not guaranteed, i.e. a resource that is compliant with International Patient Access, International Patient Summary, or US Core **MAY NOT** be compliant with AU Core.Future updates may include reverse comparisons and CapabilityStatement evaluations.

Legend:
- **Compliant**: An AU Core compliant resource meets all requirements of the compared profile. Flagged with a <img src="green_checkmark.svg.png" width="20"/>.
- **Additional requirements**: An AU Core compliant resource is compatible, but additional changes may be needed to meet all requirements of the compared profile. Flagged with an <img src="orange_checkmark.svg.png" width="20"/>.
- **Incompatible**: An AU Core compliant resource is incompatible with the compared profile. A resource cannot be compliant to both. Flagged with a <img src="cross_red_circle.svg.png" width="20"/>.
- **No equivalent profile**: When AU Core profile has no equivalent in compared implementation guides, it is flagged with a <img src="minus_symbol.svg.png" width="20"/>.

Where additional requirements are identified, more information is provided in the sections below.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">AU Core</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">International Patient Access 1.0.0</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">International Patient Summary 1.1.0</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">US Core 7.0.0</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-practitionerrole.html">AU Core PractitionerRole</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="cross_red_circle.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
    </tbody>
</table>

#### International Patient Access

- [International Patient Access 1.0.0](https://hl7.org/fhir/uv/ipa/STU1/)
This table provides detailed explanations for instances where AU Core profiles do not comply with the corresponding profiles from International Patient Access.

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

##### Additional profiles
This version of AU Core has no equivalent profile for the following IPA profiles:
- IPA-DocumentReference
- IPA-MedicationStatement

#### International Patient Summary

[International Patient Summary Implementation Guide 1.1.0](https://hl7.org/fhir/uv/ips/STU1.1/)
This table provides detailed explanations for instances where AU Core profiles do not comply with the corresponding profiles from International Patient Summary.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">International Patient Summary 1.1.0</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-AllergyIntolerance-uv-ips.html">Allergy Intolerance (IPS)</a></td>
            <td style="width: 25%;">AllergyIntolerance.patient.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Condition-uv-ips.html">Condition (IPS)</a></td>
            <td style="width: 25%;">Condition.clinicalStatus</td>
            <td style="width: 25%;">IPS requires minimum = 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-results-uv-ips.html">Observation Results (IPS)</a></td>
            <td style="width: 25%;">Observation.status</td>
            <td style="width: 25%;">IPS requires fixed value 'final'.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Immunization-uv-ips.html">Immunization (IPS)</a></td>
            <td style="width: 25%;">Immunization.patient.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Medication-uv-ips.html">Medication (IPS)</a></td>
            <td style="width: 25%;">Medication.ingredient.strength.numerator.system</td>
            <td style="width: 25%;">Medication.ingredient.strength.numerator.system minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.strength.numerator.code</td>
            <td style="width: 25%;">Medication.ingredient.strength.numerator.code minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.strength.denominator.system</td>
            <td style="width: 25%;">Medication.ingredient.strength.denominator.system minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.strength.denominator.code</td>
            <td style="width: 25%;">Medication.ingredient.strength.denominator.code minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-MedicationRequest-uv-ips.html">Medication Request (IPS)</a></td>
            <td style="width: 25%;">MedicationRequest.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="6" style="width: 25%;"><a href="StructureDefinition-au-core-pathologyresult.html">AU Core Pathology Result Observation</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-results-laboratory-uv-ips.html">Observation Results: laboratory (IPS)</a></td>
            <td style="width: 25%;">Observation.status</td>
            <td style="width: 25%;">IPS requires fixed value 'final'.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.performer</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-results-pathology-uv-ips.html">Observation Results: pathology (IPS)</a></td>
            <td style="width: 25%;">Observation.status</td>
            <td style="width: 25%;">IPS requires fixed value 'final'.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.performer</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Procedure-uv-ips.html">Procedure (IPS)</a></td>
            <td style="width: 25%;">Procedure.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.performed[x]</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-tobaccouse-uv-ips.html">Observation - SH: tobacco use</a></td>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.code.coding</td>
            <td style="width: 25%;">Observation.code.coding differs: IPS requires LOINC 72166-2 which is not included in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observationvalue[x].valueCodeableConcept</td>
            <td style="width: 25%;">Observationvalue[x].valueCodeableConcept binding differs: Required binding to <a href="https://hl7.org/fhir/uv/ips/STU1.1/ValueSet-current-smoking-status-uv-ips.html">Current Smoking Status - IPS</a> in IPS vs extensible binding to <a href="https://healthterminologies.gov.au/fhir/ValueSet/smoking-status-1">Smoking Status</a> in AU Core.</td>
        </tr>
    </tbody>
</table>

##### Additional profiles
This version of AU Core has no equivalent profile for the following IPS profiles: 
- Bundle - IPS
- Composition (IPS)
- Device (IPS)
- Device - performer, observer
- Device - performer, observer
- DiagnosticReport (IPS)
- Imaging Study (IPS)
- Media observation (Results: laboratory, media)
- Medication Statement (IPS)
- Observation - Pregnancy: EDD
- Observation - Pregnancy: outcome
- Observation - Pregnancy: status
- Observation - SH: alcohol use
- Observation Results: radiology (IPS)
- Specimen (IPS)

#### US Core
[US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/2024Jan/)
This table provides detailed explanations for instances where AU Core profiles do not comply with the corresponding profiles from US Core.

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
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core Diagnostic Result Observation</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result</a></td>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">Observation.code binding strength differs: US Core extensibly binds to LOINC  vs AU Core strength example</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.value[x]</td>
            <td style="width: 25%;">Observation.value[x] quantity requirements differ: US Core requires the use of UCUM for coded quantity units vs no specific requirements in AU Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result</a></td>
            <td style="width: 25%;">Encounter.type</td>
            <td style="width: 25%;">US Core requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-immunization.html">US Core Immunization</a></td>
            <td style="width: 25%;">Immunization.vaccineCode</td>
            <td style="width: 25%;">Immunization.vaccineCode binding differs: US Core extensibly binds to CVX Vaccines Administered (which is not an AU medicines terminology) vs AU Core preferred Australian Medication and PBS Item Codes.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-location.html">US Core Location</a></td>
            <td style="width: 25%;">Location.name</td>
            <td style="width: 25%;">US Core requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-location.html">US Core Location</a></td>
            <td style="width: 25%;">Medication.code</td>
            <td style="width: 25%;">Medication.code binding differs: US Core extensibly binds to RxNorm (which is not an AU medicines terminology) vs AU Core preferred Australian Medication and PBS Item Codes.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-organization.html">US Core Organization</a></td>
            <td style="width: 25%;">Organization.active</td>
            <td style="width: 25%;">US Core requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
            <td style="width: 25%;">Gender identity</td>
            <td style="width: 25%;">Gender identity extension differs: US Core defines an US Core Gender Identity extension vs AU Core which requires the use of the International Gender Identity extension.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-practitioner.html">US Core Practitioner</a></td>
            <td style="width: 25%;">Practitioner.identifier</td>
             <td style="width: 25%;">US Core requires minimum = 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html">AU Core PractitionerRole</a></td>
            <td style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-practitionerrole.html">US Core PractitionerRole</a></td>
            <td style="width: 25%;">Constraint pd-1</td>
            <td style="width: 25%;">Non-compliance due to constraint pd-1: US Core requires constraint pd-1, which mandates that resources SHALL have contact information or a reference to an Endpoint, whereas AU Core does not enforce this requirement.</td>
        </tr>
    </tbody>
</table>

##### Additional profiles 
This version of AU Core has no equivalent profile for the following US Core profiles:
- US Core CarePlan
- US Core CareTeam 
- US Core Coverage 
- US Core Implantable Device 
- US Core DiagnosticReport Profile for Laboratory Results Reporting
- US Core DiagnosticReport Profile for Report and Note Exchange
- US Core DocumentReference 
- US Core Goal Profile
- US Core MedicationDispense 
- US Core Average Blood Pressure 
- US Core Care Experience Preference 
- US Core Observation Clinical Result 
- US Core Laboratory Result Observation 
- US Core Observation Occupation 
- US Core Observation Pregnancy Intent 
- US Core Observation Pregnancy Status 
- US Core Observation Screening Assessment 
- US Core Observation Sexual Orientation 
- US Core Simple Observation 
- US Core Smoking Status Observation 
- US Core Treatment Intervention Preference 
- US Core Provenance 
- US Core QuestionnaireResponse 
- US Core ServiceRequest 
- US Core Specimen