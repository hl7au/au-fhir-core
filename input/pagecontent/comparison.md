A resource may be compliant with multiple implementation guides. In addition to AU Core profiles, a FHIR resource may be compliant to profiles published in project implementation guides, other national implementation guides, or international implementation guides.
...what does it mean to be compliant


#### Comparison from AU Core to International Patient Access, International Patient Summary and US Core


The table below provides a profile-only comparison from AU Core to other implementation guides. It indicates whether a resource compliant with a particular AU Core profile also satisfies (i.e., is compliant with) a profile from [International Patient Access](https://hl7.org/fhir/uv/ipa/STU1/), [International Patient Summary](https://hl7.org/fhir/uv/ips/STU1.1/), or [US Core](https://hl7.org/fhir/us/core/STU7/). See [Relationship to AUCDI and other IGs](https://build.fhir.org/ig/hl7au/au-fhir-core/relationship.html) for more information on the relationship of AU Core to these implementation guides.

Conformance in the reverse direction is not guaranteed. This means a resource conforming to International Patient Access, International Patient Summary, or US Core **MAY NOT** conform to AU Core. In the future, we may provide reverse comparisons.

In the future, we may also provide CapabilityStatement comparison.

Legend:
- <img src="green_checkmark.svg.png" width="20"/>: The resource meets all the requirements of the compared profile (i.e. fully compliant).
- <img src="orange_checkmark.svg.png" width="20"/>: The resource meets some, but not all, of the requirements of the compared profile (i.e. partially compliant). ????
- <img src="cross_red_circle.svg.png" width="20"/>: The resource does not meet the requirements of the compared profile (i.e. non-compliant). For example, an AU Core resource does not include mandatory elements required by ... E.g. The value sets are not compatible, or fixed values are not compatible...

<table border="1">
    <thead>
        <tr>
            <th><a href="https://build.fhir.org/ig/hl7au/au-fhir-core">AU Core</a></th>
            <th><a href="https://hl7.org/fhir/uv/ipa/STU1/index.html">International Patient Access 1.0.0</a></th>
            <th><a href="https://hl7.org/fhir/uv/ips/STU1.1/index.html">International Patient Summary 1.1.0</a></th>
            <th><a href="https://hl7.org/fhir/us/core/STU7/">US Core 7.0.0</a></th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-bloodpressure.html">AU Core Blood Pressure</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-bodyheight.html">AU Core Body Height</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-bodytemp.html">AU Core Body Temperature</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-bodyweight.html">AU Core Body Weight</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-heartrate.html">AU Core Heart Rate</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td>&nbsp;</td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-practitionerrole.html">AU Core PractitionerRole</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td>&nbsp;</td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-resprate.html">AU Core Respiration Rate</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-waistcircum.html">AU Core Waist Circumference</a></td>
            <td><img src="green_checkmark.svg.png" width="20"/></td>
            <td>&nbsp;</td>
            <td><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
    </tbody>
</table>


#### International Patient Access 1.0.0
This table provides detailed explanations for instances where AU Core profiles do not comply with the corresponding profiles from International Patient Access.

<table border="1">
    <thead>
        <tr>
            <th>AU Core</th>
            <th>International Patient Access 1.0.0</th>
            <th>Comment</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td><a href="https://hl7.org/fhir/uv/ipa/STU1/StructureDefinition-ipa-medicationrequest.html">IPA-MedicationRequest</a></td>
            <td>MedicationRequest.requester type mismatch: IPA prohibits reference to  Organization or RelatedPerson resources.</td>
        </tr>
    </tbody>
<table>

#### International Patient Summary 1.1.0

This table provides detailed explanations for instances where AU Core profiles do not comply with the corresponding profiles from International Patient Summary.

<table border="1">
    <thead>
        <tr>
            <th>AU Core</th>
            <th>International Patient Summary 1.1.0</th>
            <th>Comment</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
            <td><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-AllergyIntolerance-uv-ips.html">Allergy Intolerance (IPS)</a></td>
            <td>AllergyIntolerance.patient.reference minimum cardinality differs: IPS requires minimum = 1 vs AU Core minimum = = 0.</td>
        </tr>
        <tr>
            <td rowspan="2"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td rowspan="2"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Condition-uv-ips.html">Condition (IPS)</a></td>
            <td>Condition.clinicalStatus minimum cardinality differs: IPS requires minimum = 1 vs AU Core minimum = 0</td>
        </tr>
        <tr>
            <td>Condition.subject.reference minimum cardinality differs: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td rowspan="2"><a href="StructureDefinition-au-core-diagnosticresult.html">AU Core Diagnostic Result Observation</a></td>
            <td rowspan="2"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-results-uv-ips.html">Observation Results (IPS)</a></td>
            <td>Observation.status fixed value differs: IPS requires fixed value 'final' vs AU Core  allows multiple values including 'final'.</td>
        </tr>
        <tr>
            <td>Observation.subject.reference minimum cardinality differs: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Immunization-uv-ips.html">Immunization (IPS)</a></td>
            <td>Immunization.patient.reference minimum cardinalities differs: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td rowspan="4"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td rowspan="4"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Medication-uv-ips.html">Medication (IPS)</a></td>
            <td>Medication.ingredient.strength.numerator.system minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>Medication.ingredient.strength.numerator.code minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>Medication.ingredient.strength.denominator.system minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>Medication.ingredient.strength.denominator.code minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-MedicationRequest-uv-ips.html">Medication Request (IPS)</a></td>
            <td>MedicationRequest.subject.reference minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td rowspan="6"><a href="StructureDefinition-au-core-pathologyresult.html">AU Core Pathology Result Observation</a></td>
            <td rowspan="3"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-results-laboratory-uv-ips.html">Observation Results: laboratory (IPS)</a></td>
            <td>Observation.status fixed value differs: IPS requires fixed value 'final' vs AU Core  allows multiple values including 'final'.</td>
        </tr>
        <tr>
            <td>Observation.subject.reference minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>Observation.performer minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td rowspan="3"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-results-pathology-uv-ips.html">Observation Results: pathology (IPS)</a></td>
            <td>Observation.status fixed value differs: IPS requires fixed value 'final' vs AU Core  allows multiple values including 'final'.</td>
        </tr>
        <tr>
            <td>Observation.subject.reference: Element minimum cardinalities differ: '1' (IPS) vs '0' (AU Core)</td>
        </tr>
        <tr>
            <td>Observation.performer minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td rowspan="3"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td rowspan="3"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Procedure-uv-ips.html">Procedure (IPS)</a></td>
            <td>Procedure.subject.reference minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>Procedure.performed[x] minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>?? Procedure.performer.actor type mismatch: Reference([CanonicalType[http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips], CanonicalType[http://hl7.org/fhir/StructureDefinition/RelatedPerson], CanonicalType[http://hl7.org/fhir/uv/ips/StructureDefinition/Device-observer-uv-ips], CanonicalType[http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips], CanonicalType[http://hl7.org/fhir/uv/ips/StructureDefinition/PractitionerRole-uv-ips], CanonicalType[http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips]]) vs Reference([CanonicalType[http://hl7.org/fhir/StructureDefinition/Practitioner], CanonicalType[http://hl7.org/fhir/StructureDefinition/PractitionerRole], CanonicalType[http://hl7.org/fhir/StructureDefinition/Organization], CanonicalType[http://hl7.org/fhir/StructureDefinition/Patient], CanonicalType[http://hl7.org/fhir/StructureDefinition/RelatedPerson], CanonicalType[http://hl7.org/fhir/StructureDefinition/Device]])</td>
        </tr>
        <tr>
            <td rowspan="3"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td rowspan="3"><a href="https://hl7.org/fhir/uv/ips/STU1.1/StructureDefinition-Observation-tobaccouse-uv-ips.html">Observation - SH: tobacco use</a></td>
            <td>Observation.subject.reference minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>Observation.code.coding value differs: IPS requires LOINC 72166-2.</td>
        </tr>
        <tr>
            <td>TBD: Observationvalue[x].valueCodeableConcept required binding: Required/extensible bindings differ at Observation.valueCodeableConcept using binding from AU Core Smoking Status</td>
        </tr>
   </tbody>
</table>


##### Additional profile resources that are not in AU Core: 
- Bundle - IPS 
- Composition (IPS)
- Device (IPS)
- Device - performer, observer
- Device - performer, observer
- DiagnosticReport (IPS)
- Imaging Study (IPS)
- Media observation (Results: laboratory, media)
- Medication Statement (IPS)
- Observation: Observation - Pregnancy: EDD, Observation - Pregnancy: outcome, Observation - Pregnancy: status, Observation - SH: alcohol use, Observation Results: radiology (IPS)
- Specimen (IPS)


#### US Core 7.0.0


This table provides detailed explanations for instances where AU Core profiles do not comply with the corresponding profiles from US Core.

<table border="1">
    <thead>
        <tr>
            <th>AU Core</th>
            <th>US Core 7.0.0</th>
            <th>Comment</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a></td>
            <td>TBD</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
            <td>TBD</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core Diagnostic Result Observation</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result</a></td>
            <td>TBD</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core Diagnostic Result Observation</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result</a></td>
            <td>TBD</td>
        </tr>
        <tr>
            <td rowspan="2"><a href="StructureDefinition-au-core-encounter.html">AU Core Encounter</a></td>
            <td rowspan="2"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result</a></td>
            <td>Encounter.type minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        </tr>
        <tr>
            <td>Encounter.identifier.system & Encounter.identifier.code required in AU Core but Encounter.identifier is not MS in AU Core therefore we stay silent here ---- REMOVE</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-immunization.html">US Core Immunization</a></td>
            <td>TBD - US Core extensibly binds to CVX which is not an AU vaccine terminology</td>
        </tr>
        <tr>
            <td><a href="StructureDefinition-au-core-location.html">AU Core Location</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-location.html">US Core Location</a></td>
            <td>Location.name minimum cardinalities differ: IPS requires minimum = 1 vs AU Core minimum = 0.</td>
        <tr>
            <td><a href="StructureDefinition-au-core-location.html">AU Core Medication</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-location.html">US Core Location</a></td>
         <td>TBD: noting that US Core extensibly binds to RxNorm which is not an AU medicines terminology</td>
        </tr>
        <tr>
            <td><a href="https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-location.html">US Core Location</a></td>
         <td>TBD: noting that US Core extensibly binds to RxNorm which is not an AU medicines terminology</td>
        </tr>
    </tbody>
    </table>

