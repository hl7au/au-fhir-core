AU Core aligns to, and leverages, international standards and other national standards, in particular:
- [International Patient Access 1.1.0](https://hl7.org/fhir/uv/ipa/STU1.1/)
- [International Patient Summary Implementation Guide 2.0.0](https://build.fhir.org/ig/HL7/fhir-ips/)
- [US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/STU7/)

Relationships between AU Core, AUCDI, and the above key implementation guides is described in [Relationship with other IGs](relationship.html). 

International Patient Access (IPA) and International Patient Summary (IPS) are specifically referenced, as many of the profiles defined in AU Core are expected in future to be adopted in Australian localisations of these international standards.

Corresponding profiles, conformance requirements, and capability statements included in the key FHIR implementation guides were reviewed and considered during AU Core's development to ensure alignment, and to facilitate adoption of, this standard.

The below comparison evaluates AU Core conformance requirements with the key implementation guides identifying where compliance with AU Core satisfies the expectations established by the referenced implementation guide. 

## Profile comparison
As part of profile comparison, the requirements, constraints, and standards specified in a particular FHIR profile are evaluated. These requirements can include mandatory elements, <i>Must Support</i> elements, cardinality constraints, data types, terminology bindings, usage rules, extensions, rules on missing or suppressed data. 

The table below provides a profile only comparison from AU Core to profiles in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a resource that is compliant with an IPA profile **MAY NOT** be compliant with AU Core.

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
            <th style="width: 25%; text-align: center; vertical-align: middle;">IPA 1.1.0</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;">IPS 2.0.0</th>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/><img src="cross_red_circle" width="20"/></td>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
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
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/><img src="cross_red_circle" width="20"/></td>
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

### IPA profile additional requirements <a id="ipa-additional-requirements"></a>

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

#### Missing Data
AU Core compliant resources are compliant with IPA requirements for Missing Data.

#### Suppressed Data 
IPA does not include requirements for Suppressed Data.

#### Additional profiles
This version of AU Core has no equivalent profile for the following IPA profiles:
- IPA-DocumentReference


### IPS profile incompatible requirements <a id="ips-incompatible-requirements"></a>

The following IPS profile(s) contain incompatible requirements with the equivalent AU Core profile. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">IPS 2.0.0-ballot</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Incompatible requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="7" style="width: 25%;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td rowspan="7" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Observation-results-laboratory-pathology-uv-ips.html">Observation Results - Laboratory/Pathology (IPS)</a></td>
            <td style="width: 25%;">Observation.effective[x]</td>
            <td style="width: 25%;">IPS prohibits types Timing and instant.</td>
        </tr>
        <tr>
            <td rowspan="7" style="width: 25%;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td rowspan="7" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Observation-tobaccouse-uv-ips.html">Observation Social History - Tobacco Use (IPS)</a></td>
            <td style="width: 25%;">Observation.component</td>
            <td style="width: 25%;">Prohibited element in IPS.</td>
        </tr>
    </tbody>
</table>

### IPS profile additional requirements <a id="ips-additional-requirements"></a>

The following IPS profile(s) contain additional requirements. Implementers are advised to note that some code changes may be required to support these profiles.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%;">AU Core</th>
            <th style="width: 25%;">IPS 2.0.0-ballot</th>
            <th style="width: 25%;">Element</th>
            <th style="width: 25%;">Additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td rowspan="7" style="width: 25%;"><a href="StructureDefinition-au-core-allergyintolerance.html">AU Core AllergyIntolerance</a></td>
            <td rowspan="7" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-AllergyIntolerance-uv-ips.html">AllergyIntolerance (IPS)</a></td>
            <td style="width: 25%;">AllergyIntolerance.patient.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.type</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.clinicalStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.verificationStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.reaction.manifestation</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">AllergyIntolerance.onset[x]</td>
            <td style="width: 25%;">Type choice dateTime is flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="8" style="width: 25%;"><a href="StructureDefinition-au-core-condition.html">AU Core Condition</a></td>
            <td rowspan="8" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Condition-uv-ips.html">Condition (IPS)</a></td>
            <td style="width: 25%;">Condition.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.onset[x]</td>
            <td style="width: 25%;">Type choice dateTime is flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.clinicalStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.verificationStatus</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.category</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.severity</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.code</td>
            <td  style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Condition.bodySite</td>
            <td  style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-immunization.html">AU Core Immunization</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Immunization-uv-ips.html">Immunization (IPS)</a></td>
            <td style="width: 25%;">Immunization.vaccineCode</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>           
        <tr>
          <td style="width: 25%;">Immunization.patient.reference</td>
          <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
          <td style="width: 25%;">Immunization.site</td>
          <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
          <td style="width: 25%;">Immunization.route</td>
          <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 25%;"><a href="StructureDefinition-au-core-medication.html">AU Core Medication</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Medication-uv-ips.html">Medication (IPS)</a></td>
            <td style="width: 25%;">Medication.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.form</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.item[x]</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Medication.ingredient.strength</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Ratio-uv-ips.html">Ratio (IPS)</a> are flagged as <i>Must Support</i>. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-medicationrequest.html">AU Core MedicationRequest</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-MedicationRequest-uv-ips.html">MedicationRequest (IPS)</a></td>
            <td style="width: 25%;">MedicationRequest.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationRequest.dosageInstruction.timing</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationRequest.dosageInstruction.route</td>
            <td  style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="5" style="width: 25%;"><a href="StructureDefinition-au-core-medicationstatement.html">AU Core MedicationStatement</a></td>
            <td rowspan="5" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-MedicationStatement-uv-ips.html">MedicationStatement (IPS)</a></td>
            <td style="width: 25%;">MedicationStatement.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.effective[x]</td>
            <td style="width: 25%;">Type choice dateTime is flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>   
            <td style="width: 25%;">MedicationStatement.dosage.timing</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">MedicationStatement.dosage.route</td>
            <td  style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="9" style="width: 25%;"><a href="StructureDefinition-au-core-diagnosticresult-path.html">AU Core Pathology Result Observation</a></td>
            <td rowspan="9" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Observation-results-laboratory-pathology-uv-ips.html">Observation Results - Laboratory/Pathology (IPS)</a></td>
            <td style="width: 25%;">Observation.status</td>
            <td style="width: 25%;">IPS requires value from <a href="https://build.fhir.org/ig/HL7/fhir-ips/ValueSet-results-status-uv-ips.html">Results Status Codes - IPS</a>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style=""width: 25%>Observation.effective[x]</td>
            <td style="width: 25%">Type dateTime is flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.performer</td>
            <td style="width: 25%;">IPS requires minimum of 1.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.category</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.value[x]</td>
            <td style="width: 25%;">Types string, Quantity and CodeableConceptIPS are flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%">Observation.interpretation</td>
            <td style="width: 25%">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
      </tr>
         <tr>
            <td style="width: 25%;">Observation.valueCodeableConcept</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Patient-uv-ips.html">Patient (IPS)</a></td>
            <td style="width: 25%;">Patient.name</td>
            <td style="width: 25%;">IPS does not allow Data Absent Reason extension (ips-pat-1).</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.contact.relationship</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.generalPractitioner</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td rowspan="2" style="width: 25%;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></td>
            <td rowspan="2" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Practitioner-uv-ips.html">Practitioner (IPS)</a></td>
            <td style="width: 25%;">Practitioner.telecom</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Practitioner.address</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;"><a href="StructureDefinition-au-core-practitioner.html">AU Core PractitionerRole</a></td>
            <td style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-PractitionerRole-uv-ips.html">PractitionerRole (IPS)</a></td>
            <td style="width: 25%;">PractitionerRole.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="4" style="width: 25%;"><a href="StructureDefinition-au-core-procedure.html">AU Core Procedure</a></td>
            <td rowspan="4" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Procedure-uv-ips.html">Procedure (IPS)</a></td>
            <td style="width: 25%;">Procedure.code</td>
            <td style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.performed[x]</td>
            <td style="width: 25%;">IPS requires minimum of 1. Type choice dateTime is flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Procedure.bodySite</td>
            <td  style="width: 25%;">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td rowspan="3" style="width: 25%;"><a href="StructureDefinition-au-core-smokingstatus.html">AU Core Smoking Status</a></td>
            <td rowspan="3" style="width: 25%;"><a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-Observation-tobaccouse-uv-ips.html">Observation Social History - Tobacco Use (IPS)</a></td>
            <td style="width: 25%;">Observation.subject.reference</td>
            <td style="width: 25%;">IPS requires minimum of 1. Element flagged as <i>Must Support</i> in IPS.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Observation.code</td>
            <td style="width: 25%;">IPS requires LOINC code 72166-2. Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
        <tr>
            <td style="width: 25%">Observation.valueCodeableConcept</td>
            <td style="width: 25%">Sub-elements of <a href="https://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition-CodeableConcept-uv-ips.html">CodeableConceptIPS</a> are flagged as <i>Must Support</i>.</td>
        </tr>
    </tbody>
</table>

#### Missing Data
AU Core compliant resources are compliant with IPS requirements for Missing Data.

#### Suppressed Data
IPS does not include requirements for Suppressed Data.

#### Additional profiles <a id="ips-additional-profiles"></a>
This version of AU Core has no equivalent profile for the following IPS profiles:
- Bundle - IPS
- Composition (IPS)
- Device (IPS)
- Device - Performer or Observer (IPS)
- DeviceUseStatement (IPS)
- DiagnosticReport (IPS)
- Flag - Alert (IPS)
- ImagingStudy (IPS)
- Media observation (Results: laboratory, media)
- Observation Pregnancy - Expected Delivery Date (IPS) 
- Observation Pregnancy - Outcome (IPS)
- Observation Pregnancy- Status (IPS)
- Observation Results - Radiology (IPS)
- Observation Social History - Alcohol Use (IPS)
- Specimen (IPS)


### US Core profile additional requirements <a id="uscore-additional-requirements"></a>

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
            <td rowspan="8" style="width: 25%;"><a href="StructureDefinition-au-core-organization.html">AU Core Organization</a></td>
            <td rowspan="8" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-organization.html">US Core Organization Profile</a></td>
            <td style="width: 25%;">Organization.active</td>
            <td style="width: 25%;">US Core requires minimum of 1. Element flagged as <i>Must Support</i> in US Core.</td>
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
            <td rowspan="10" style="width: 25%;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></td>
            <td rowspan="10" style="width: 25%;"><a href="https://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-patient.html">US Core Patient Profile</a></td>
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
            <td style="width: 25%;">US Core requires all name to have family or given or Data Absent Reason extension.</td><i>Must Support</i>
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
            <td style="width: 25%;">Patient.address.line</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.address.city</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.address.state</td>
            <td style="width: 25%;">Element flagged as <i>Must Support</i> in US Core.</td>
        </tr>
        <tr>
            <td style="width: 25%;">Patient.address.postalCode</td>
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

#### Missing Data
AU Core compliant resources are compliant with US Core requirements for Missing Data.

#### Suppressed Data
AU Core compliant resources are compliant with US Core requirements for Suppressed Data.

#### Additional profiles <a id="uscore-additional-profiles"></a>
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

## Capability statement comparison

As part of the comparison, both system and resource level capabilities are compared, including FHIR version, supported formats and guides, conformance expectations, RESTful interactions, security, resource types and profiles, search parameters, reference handling, and operations.

### CapabilityStatement mapping

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
        <th style="width: 25%; text-align: left; vertical-align: middle;">IPA 1.1.0</th>
        <th style="width: 25%; text-align: left; vertical-align: middle;">IPS 2.0.0-ballot</th>
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
		<td style="width: 25%; text-align: left; vertical-align: middle;"><img src="minus_symbol.png" width="20"/><sup>1</sup> (<a href="https://build.fhir.org/ig/HL7/fhir-ips/CapabilityStatement-ips-server.html">IPS Server</a>)</td>
		<td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://hl7.org/fhir/us/core/STU7/CapabilityStatement-us-core-server.html">US Core Server</a></td>
    </tr>
  </tbody>
</table>

*<sup>1</sup>The IPS Server CapabilityStatement is not directly comparable as the role and purpose is inexact; the IPS server actor overlaps with the AU Core Responder actor, but actors cover additional meaning.*


### CapabilityStatement comparison

The table below provides a capability statements comparison from AU Core to those in key implementation guides. Compliance in the reverse direction is not guaranteed, i.e. a system conforming to the IPA Client CapabilityStatement **MAY NOT** meet the conformance requirements of the AU Core Requester CapabilityStatement. 

The comparison considers **SHALL** and **SHOULD** requirements. **MAY** requirements are not compared.

**Legend:**

<img src="green_checkmark.png" width="20"/> **Compliant**: A system conforming to an AU Core CapabilityStatement requirements meets all of the equivalent requirements of the compared capability statement.

<img src="orange_checkmark.png" width="20"/> **Additional requirements**: A system conforming to an AU Core CapabilityStatement requirement is compatible with the compared capability statement but may require additional functionality to meet its stricter or broader requirements. Where additional requirements are identified, more information is provided in the sections below.

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
            <th rowspan="2" colspan="2" style="text-align: center; vertical-align: middle;">AU Core CapabilityStatement Requirement</th>
            <th colspan="3" style="text-align: center; vertical-align: middle;">AU Core Requester CapabilityStatement</th>
            <th colspan="3" style="text-align: center; vertical-align: middle;">AU Core Responder CapabilityStatement</th>
        </tr>
		<tr>
            <th style="text-align: center; vertical-align: middle;"><strong>IPA 1.1.0</strong></th>
            <th style="text-align: center; vertical-align: middle;"><strong>IPS 2.0.0-ballot</strong></th>
            <th style="text-align: center; vertical-align: middle;"><strong>US Core 7.0.0</strong></th>
			<th style="text-align: center; vertical-align: middle;"><strong>IPA 1.1.0</strong></th>
            <th style="text-align: center; vertical-align: middle;"><strong>IPS 2.0.0-ballot</strong></th>
            <th style="text-align: center; vertical-align: middle;"><strong>US Core 7.0.0</strong></th>
        </tr>
    </thead>
    <tbody>
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
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="green_checkmark.png" width="20"/></td>
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
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
			<td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="minus_symbol.png" width="20"/></td>
            <td style="text-align: center; vertical-align: middle;"><img src="orange_checkmark.png" width="20"/></td>
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


### IPA CapabilityStatement additional requirements

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
            <th>AU Core CapabilityStatement requirement</th>
            <th>IPA 1.1.0 Client CapabilityStatement additional requirements</th>
			<th>IPA 1.1.0 Server CapabilityStatement additional requirements</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>FHIR capabilities</td>
            <td>A client <strong>SHOULD</strong> specify the patient id when performing searches on other resources.</td>
            <td></td>
        </tr>
		<tr>
            <td>FHIR resource support</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the IPA conformance expectations for the Patient profile and for each IPA resource type they support, see additional requirements below.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the IPA conformance expectations for the Patient profile and for each IPA resource type they support, see additional requirements below.</td>
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
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> handle scope-based authorisation failures gracefully. </td>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> handle scope-based authorisation failures gracefully. </td>
        </tr>
		<tr>
            <td rowspan="2">AllergyIntolerance</td>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle: <code>AllergyIntolerance.clinicalStatus</code>, <code>AllergyIntolerance.verificationStatus</code>, and <code>AllergyIntolerance.code</code>.</td>
			<td rowspan="2"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td rowspan="5">Condition</td>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle: <code>Condition.clinicalStatus</code>, <code>Condition.verificationStatus</code>, and <code>Condition.code</code>.</td>
			<td><img src="arrow_up.png" width="20"/> A server <strong>SHOULD</strong> populate: <code>Condition.code.coding.display</code> and/or <code>Condition.code.text</code>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL NOT</strong> treat all Condition resources as entries in the current problem list.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHOULD</strong> avoid leaving <code>Condition.clinicalStatus</code> and <code>Condition.verificationStatus</code> missing.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> correctly process and display <code>Condition.clinicalStatus</code> and <code>Condition.verificationStatus</code>.</td>
			<td rowspan="3"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> continue to function safely when some expected search parameters are not supported.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		</tr>
		<tr>
            <td rowspan="8">DocumentReference</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-DocumentReference profile.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-DocumentReference profile.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> support the <code>patient</code> search parameter.</td> 
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_id</code>, <code>patient</code>,<code>patient+category</code>, <code>patient+category+date</code>, and <code>patient+type</code> search parameters and search parameter combinations.</td> 
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> handle: <code>DocumentReference.status</code>, <code>DocumentReference.type</code>, <code>DocumentReference.subject</code>, <code>DocumentReference.content</code>, <code>DocumentReference.content.attachment</code>, <code>DocumentReference.content.attachment.contentType</code>, <code>DocumentReference.content.attachment.data</code>, <code>DocumentReference.content.attachment.url</code>, <code>DocumentReference.format</code>, <code>DocumentReference.context</code>, <code>DocumentReference.context.encounter</code>, and <code>DocumentReference.context.period</code>.</td>
		<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> populate-if-known: <code>DocumentReference.status</code>, <code>DocumentReference.type</code>, `DocumentReference.category`, <code>DocumentReference.subject</code>, <code>DocumentReference.date</code>, <code>DocumentReference.author</code>, <code>DocumentReference.content</code>, <code>DocumentReference.content.attachment</code>, <code>DocumentReference.content.attachment.contentType</code>, <code>DocumentReference.content.attachment.data</code>, <code>DocumentReference.content.attachment.url</code>, <code>DocumentReference.format</code>, <code>DocumentReference.context</code>, <code>DocumentReference.context.encounter</code>, and <code>DocumentReference.context.period</code>.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> handle: <code>DocumentReference.category</code> and <code>DocumentReference.author</code>.</td>
           <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>$docref</code> operation.</td>
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_id</code>, <code>patient+category</code>, <code>patient+category+date</code>, <code>patient+type</code>, <code>patient+contenttype</code>, <code>patient+status</code>, <code>patient+type+date</code>, and <code>patient+type+period</code> search parameter combinations.</td>
           <td><img src="plus_sign.png" width="20"/> A server <strong>SHOULD</strong> support <code>patient+contenttype</code>, <code>patient+status</code>, <code>patient+type+date</code>, and <code>patient+type+period</code> search parameters and search parameters combinations.</td>
       </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td rowspan="2"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
        <tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>$docref</code> operation.</td>
        </tr> 
		<tr>
            <td rowspan="3">Immunization</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Immunization profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
			<td rowspan="3"><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Immunization profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle: <code>Immunization.status</code>, <code>Immunization.vaccineCode</code>, <code>Immunization.patient</code> and <code>Immunization.occurence[x]</code>.</td>
		</tr>		
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td rowspan="2">Medication</td>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle <code>Medication.code</code>.</td>
			<td rowspan="2"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>. </td>
        </tr>
		<tr>
            <td rowspan="6">MedicationRequest</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationRequest profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationRequest profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
        </tr> 
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> query both MedicationRequest and MedicationStatement when fetching patient Medication information.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHOULD</strong> use codings at the level of a clinical drug.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle: <code>MedicationRequest.status</code>, <code>MedicationRequest.doNotPerform</code>, <code>MedicationRequest.medication[x]</code>, <code>MedicationRequest.subject</code>, <code>MedicationRequest.requester</code>, <code>MedicationRequest.dosageInstruction</code>, and <code>MedicationRequest.dosageInstruction.text</code>.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHOULD</strong> populate <code>MedicationRequest.doNotPerform</code>.</td>
		</tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHOULD</strong> handle <code>MedicationRequest.reported[x]</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> populate-if-known <code>MedicationRequest.reported[x]</code>.</td>
		</tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>category</code> and <code>code</code> search parameters.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>category</code> and <code>code</code> search parameters.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
			<td rowspan="5">MedicationStatement</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationStatement profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
		   <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-MedicationStatement profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
        </tr> 
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> query both MedicationRequest and MedicationStatement when fetching patient Medication information.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> populate-if-known: <code>MedicationStatement.context</code> and <code>MedicationStatement.informationSource</code>.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle: <code>MedicationStatement.status</code>, <code>MedicationStatement.medication[x]</code>, and <code>MedicationStatement.subject</code>.</td>
            <td rowspan="3"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		</tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHOULD</strong> handle: <code>MedicationStatement.effective[x]</code>, <code>MedicationStatement.dosage</code>, and <code>MedicationStatement.dosage.text</code>.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
        <tr>
            <td rowspan="4">Observation</td>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> support <code>patient</code> search parameter.</td>
		    <td rowspan="4"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle: <code>Observation.status</code>, <code>Observation.code</code>, <code>Observation.subject</code>, <code>Observation.effective[x]</code>, <code>Observation.value[x]</code>, and <code>Observation.dataAbsentReason</code>.</td>
		</tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHOULD</strong> handle <code>Observation.category</code>.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
        <tr>
            <td rowspan="8">Patient</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Patient profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> meet the requirements of the IPA-Patient profile which has additional requirements, see <a href="#ipa-additional-requirements">IPA profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> be able to follow <code>Patient.link</code> to other Patient resources and understand direction of the link.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> use <code>Patient.link</code> cross-link multiple Patient resources for the same person in search Bundles.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> understand the <code>Patient.link.type</code> code.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> populate-if-known <code>Patient.identifier.value</code>, <code>Patient.active</code>, and <code>Patient.link</code>.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> be aware of the linked Patient's <code>active</code> flag and that inactive patients may have relevant information.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> have no more than one Patient with a status of active = "true" for the same patient on the server.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> support <code>Patient.link</code> processing.</td>
			<td><img src="arrow_up.png" width="20"/> A server <strong>SHALL</strong> explain <code>Patient.identifier</code>.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle: <code>Patient.identifier</code>, <code>Patient.gender</code>, <code>Patient.birthDate</code>, and <code>Patient.link</code>.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>given</code>, <code>birthdate</code>, and <code>gender</code> search parameters.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
		<td rowspan="2"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
        <tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>given</code>, <code>birthdate</code>, and <code>gender</code> search parameters.</td>
        </tr>
		<tr>
            <td>Practitioner</td>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
			<td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td rowspan="2">PractitionerRole</td>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> handle <code>PractitionerRole.practitioner</code>.</td>
			<td rowspan="2"><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> Conformance level <strong>SHOULD</strong>/<strong>MAY</strong> for <code>_revinclude=Provenance:target</code> is under discussion, see <a href="https://jira.hl7.org/browse/FHIR-50351">FHIR-50351</a>.</td>
        </tr> 
	</tbody>
</table>

#### Additional resource types
None.

### IPS CapabilityStatement additional requirements

A system conforming to an AU Core CapabilityStatement aligns with IPS CapabilityStatement but will require additional functionality to meet its stricter or broader requirements. The table below identifies additional requirements included in IPS CapabilityStatements. Implementers are advised to note that some code changes may be required to ensure full compliance.


**Legend:**

<img src="arrow_up.png" width="16"/> **Stronger**: The CapabilityStatement strengthens a conformance requirement that is present in the AU Core CapabilityStatement (e.g. **SHOULD** to **SHALL**).

<img src="plus_sign.png" width="16"/> **New**: The CapabilityStatment includes a conformance requirement that is NOT present in the mapped AU Core CapabilityStatement.

<div class="note-to-contributors">
Many requirements in the IPS current build (version 2.0.0) have changed since version 2.0.0-ballot, including updated conformance expectations for resources like Bundle, Composition and Patient from <strong>supported</strong> to <strong>SHALL</strong>.
These updates are not reflected in this comparison. 
</div>

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 80%;">
	</colgroup>     
	<thead>
        <tr>
            <th>AU Core CapabilityStatement requirement</th>
            <th>IPS 2.0.0-ballot Server CapabilityStatement additional requirements</th>
        </tr>
    </thead> 
    <tbody>
		<tr>
            <td rowspan="2">Patient</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support Patient (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>$summary</code> operation.</td>
		</tr>
		<tr>
            <td>AllergyIntolerance</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support AllergyIntolerance (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>Condition</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support Condition (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>DiagnosticReport</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support DiagnosticReport (IPS) profile.</td>
        </tr>
		<tr>
            <td>Immunization</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support Immunization (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>Medication</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support Medication (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>MedicationRequest</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support MedicationRequest (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>MedicationStatement</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support MedicationStatement (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>Observation</td>
            <td><strong>SHOULD</strong> support Observation Results: laboratory/pathology (IPS) or Observation - SH: tobacco use which have additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>Practitioner</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support Practitioner (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>Procedure</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support Procedure (IPS) profile which has additional requirements, see <a href="#ips-additional-requirements">IPS profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td>Specimen</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support Specimen (IPS) profile.</td>
        </tr>
		<tr>
            <td rowspan="2" rowspan="3">DocumentReference</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support DocumentReference (IPS) profile.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>$docref</code> operation.</td>
		</tr>
    </tbody>
</table>    

#### Additional resource types
This version of AU Core has no equivalent CapabilityStatement expectations for the following resource types included in IPS Server CapabilityStatements.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 40%;">
	</colgroup> 
	<thead>
        <tr>
            <th>Additional resource type</th>
            <th>IPS 2.0.0-ballot Server CapabilityStatement resource conformance</th>
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

### US Core CapabilityStatement additional requirements

A system conforming to an AU Core CapabilityStatement aligns with US Core CapabilityStatements but will require additional functionality to meet its stricter or broader requirements. The table below identifies additional requirements included in US Core CapabilityStatements. Implementers are advised to note that some code changes may be required to ensure full compliance.

**Legend:**

<img src="arrow_up.png" width="16"/> **Stronger**: The CapabilityStatement strengthens a conformance requirement that is present in the AU Core CapabilityStatement (e.g. **SHOULD** to **SHALL**).

<img src="plus_sign.png" width="16"/> **New**: The CapabilityStatement includes a conformance requirement that is NOT present in the maped AU Core CapabilityStatement.

<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 40%;">
		<col style="width: 40%;">
	</colgroup>     
	<thead>
        <tr>
            <th>AU Core CapabilityStatement requirement</th>
            <th>US Core 7.0.0 Client CapabilityStatement additional requirements</th>
			<th>US Core 7.0.0 Server CapabilityStatement additional requirements<sup>2</sup></th>
        </tr>
    </thead>
    <tbody>
		<tr>
            <td>FHIR resource support</td>
            <td><img src="arrow_up.png" width="20"/> A client <strong>SHALL</strong> support fetching and querying of one or more US Core profile(s), using the supported RESTful interactions and search parameters declared in the US Core Server CapabilityStatement, see additional requirements below.</td>
		<td><img src="arrow_up.png" width="20"/> A server <strong>SHALL</strong> support US Core Patient profile and at least one additional resource profile from the list of US Core Profiles and all <i>Must Support</i> US Core Profiles and resources it references, see additional requirements below.</td>
        </tr>
		<tr>
            <td rowspan="8">Security</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> establish a risk analysis and management regime conforming with HIPAA security regulatory requirements. </td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> establish a risk analysis and management regime conforming with HIPAA security regulatory requirements.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> use a single time source for audit and logging. The selected time service <strong>SHOULD</strong> be documented in the Business Associate Agreement when available.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> use a single time source for audit and logging. The selected time service <strong>SHOULD</strong> be documented in the Business Associate Agreement when available.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> maintain audit logs of transactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> maintain audit logs of transactions.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> conform to FHIR Communications Security requirements.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> conform to FHIR Communications Security requirements.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support any SMART App Launch version.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support any SMART App Launch version.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> implement consent according to local, institutional, and legal policy.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> implement consent according to local, institutional, and legal policy.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> define risk management and security/privacy controls in a Business Associate Agreement (BAA) when available.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> define risk management and security/privacy controls in a Business Associate Agreement (BAA) when available..</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> provide Provenance statements using the US Core Provenance Profile.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> provide Provenance statements using the US Core Provenance Profile.</td>
        </tr>
        <tr>
            <td rowspan="3">AllergyIntolerance</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core AllergyIntolerance Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core AllergyIntolerance Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>_revinclude: Provenance:target</code>.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="7">Condition</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support at least one of US Core Condition Encounter Diagnosis Profile US Core Condition Problems and Health Concerns Profile which have additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support both US Core Condition Encounter Diagnosis Profile US Core Condition Problems and Health Concerns Profile which have additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>assertedDate Extension</code> or <code>Condition.recordedDate</code> elements.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>Condition.recordedDate</code> elements and at least one of the <code>assertedDate Extension</code> and <code>Condition.onsetDateTime</code>.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude: Provenance:target</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude: Provenance:target</code>.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+abatement-date</code>, <code>patient+asserted-date</code>, <code>patient+category+encounter</code>, <code>patient+_lastUpdated</code>, and <code>patient+recorded-date</code> search parameters combination.</td>
		<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+abatement-date</code>, <code>patient+asserted-date</code>, <code>patient+category+encounter</code>, <code>patient+_lastUpdated</code>, and <code>patient+recorded-date</code> search parameters combination.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> When <code>Condition.category</code> is a "problems-list-item", the <code>Condition.clinicalStatus</code> <strong>SHOULD NOT</strong> be unknown.</td>
			<td><img src="plus_sign.png" width="20"/> When <code>Condition.category</code> is a "problems-list-item", the <code>Condition.clinicalStatus</code> <strong>SHOULD NOT</strong> be unknown.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> reference encounter in <code>Condition.encounter</code> when category is "encounter-diagnosis".</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> reference encounter in <code>Condition.encounter</code> when category is "encounter-diagnosis".</td>
        </tr>
        <tr>
            <td rowspan="9">DiagnosticReport</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support at least one of US Core DiagnosticReport Profile for Laboratory Results Reporting  or US Core DiagnosticReport Profile for Report and Note Exchange profiles. <img src="plus_sign.png" width="20"/></td>
		<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support US Core DiagnosticReport Profile for Laboratory Results Reporting  and US Core DiagnosticReport Profile for Report and Note Exchange profiles. <img src="plus_sign.png" width="20"/></td>	
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> be capable of fetching a DiagnosticReport resource using: <code>GET [base]/DiagnosticReport/[id]</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> be capable of returning a DiagnosticReport resource using: <code>GET [base]/DiagnosticReport/[id]</code>.</td>
		</tr>
       <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>read</code> and <code>search-type</code> interactions.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>create</code> for the US Core DiagnosticReport Profile for Report and Note exchange profile.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>create</code> for the US Core DiagnosticReport Profile for Report and Note exchange profile.</td>
		</tr>
		<tr>
			  <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>patient</code>, <code>patient+code</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameter and search parameter combinations.</td>
			  <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>patient</code>, <code>patient+code</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameter and search parameter combinations.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+code+date</code>, <code>patient+status</code>, and <code>patient+category+_lastUpdated</code> search parameter combinations.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+code+date</code>, <code>patient+status</code>, and <code>patient+category+_lastUpdated</code> search parameter combinations.</td>
		</tr>
        <tr>
            <td rowspan="17">DocumentReference</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support US Core DocumentReference Profile.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support US Core DocumentReference Profile.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support at minimum the five <a href="https://hl7.org/fhir/us/core/ValueSet-us-core-clinical-note-type.html">Common Clinical Notes</a> in the DocumentReference.type.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support at minimum the five <a href="https://hl7.org/fhir/us/core/ValueSet-us-core-clinical-note-type.html">Common Clinical Notes</a> in the DocumentReference.type.</td>
		</tr>
		<tr>
		  <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> support both <code>DocumentReference.content.attachment.url</code> and <code>DocumentReference.content.attachment.data</code>.</td>
		  <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support at least one of <code>DocumentReference.content.attachment.url</code> and <code>DocumentReference.content.attachment.data</code>.</td>
		</tr>
		<tr>
		  <td><img src="plus_sign.png" width="20"/> If there are multiple <code>DocumentReference.content</code> repetitions, these <strong>SHALL</strong> represent the same document in different formats or attachment metadata, and <strong>SHALL NOT</strong> represent different document versions.</td>
		<td><img src="plus_sign.png" width="20"/> If there are multiple <code>DocumentReference.content</code> repetitions, these <strong>SHALL</strong> represent the same document in different formats or attachment metadata, and <strong>SHALL NOT</strong> represent different document versions.</td>
		</tr>
		<tr>
		  <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> be capable of handling a responsible organisation, either direclty in <code>DocumentReference.custodian</code> or via <code>Provenance.agent.who</code> or <code>Provenance.agent.onBehalfOf</code>.</td>
		<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> ansure that the responsible organisation is present either in <code>DocumentReference.custodian</code> or accesible via <code>Provenance.agent.who</code> or <code>Provenance.agent.onBehalfOf</code>.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> be capable of fetching a DocumentReference resource using: <code>GET [base]/DocumentReference/[id]</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> be capable of returning a DocumentReference resource using: <code>GET [base]/DocumentReference/[id]</code>.</td>
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>create</code>, <code>read</code> and <code>search-type</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>create</code>, <code>read</code> and <code>search-type</code> interactions.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>_id</code>, <code>patient</code>, <code>patient+type</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameters and search parameter combinations.</td>
		 <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>_id</code>, <code>patient</code>, <code>patient+type</code>, <code>patient+category</code>, and <code>patient+category+date</code> search parameters and search parameter combinations.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHOULD</strong> support the <code>resolves</code> reference policy.</td>
        </tr>
         <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>$docref</code> operation.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support  <code>$docref</code> operation.</td>
        </tr>        
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> be capable of transacting the <code>$docref</code> operation.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> be capable of responding to a <code>$docref</code> operation.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> be capable of receiving at least a reference to a CCD document.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> return at least a reference to a CCD document, if available.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> be capable of receiving included resources returned in the operation response.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHOULD</strong> document what resources (if any) are returned as included resources.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td rowspan="2"><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+type+period</code> and <code>patient+status</code> search parameter combinations.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+type+period</code> and <code>patient+status</code> search parameter combinations.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> If a <code>period</code> parameter is supplied to the <code>$docref</code> operation, a server <strong>SHOULD</strong> return references to documents within the specified date range; if not supplied, a server <strong>SHALL</strong> return the most recent or current document(s).</td>
        </tr>
        <tr>
            <td rowspan="8">Encounter</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Encounter profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Encounter profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>_id</code> search parameter.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support <code>_id</code> search parameter.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> support both <code>Encounter.location.location</code> and <code>Encounter.serviceProvider</code>.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support at least one of <code>Encounter.location.location</code> and <code>Encounter.serviceProvider</code>.</td>
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>identifier</code>, <code>patient+type</code>, <code>patient+_lastUpdated</code>, and <code>patient+discharge-disposition</code> search parameters and search parameter combinations.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>identifier</code>, <code>patient+type</code>, <code>patient+_lastUpdated</code>, and <code>patient+discharge-disposition</code> search parameters and search parameter combinations.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td> <img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> conform to US Core Observation profile if <code>Encounter.reasonReference</code> points to an Observation.</td>
			<td> <img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> conform to US Core Observation profile if <code>Encounter.reasonReference</code> points to an Observation.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> be capable of representing the event facility or location directly when it differs from the location referenced in <code>Encounter.location</code>.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> be capable of representing the event facility or location directly when it differs from the location referenced in <code>Encounter.location</code>.</td>
        </tr>
		 <tr>
            <td>HealthcareService</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> interaction.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> interaction.</td>
        </tr>
		<tr>
            <td rowspan="4">Immunization</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Immunization Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Immunization Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support NDC vaccine codes as translations to CVX vaccine codes, which are required based on the ONC U.S. Core Data for Interoperability (USCDI) requirements.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support NDC vaccine codes as translations to CVX vaccine codes, which are required based on the ONC U.S. Core Data for Interoperability (USCDI) requirements.</td>
        </tr>
        <tr>
            <td rowspan="4">Location</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Location Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Location Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the <code>address</code> search parameter.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the <code>address</code> search parameter.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> format <code>Location.address.line</code> and <code>Location.address.city</code> according to the Project US@ Technical Specification for Patient Addresses Final Version 1.0.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> format <code>Location.address.line</code> and <code>Location.address.city</code> according to the Project US@ Technical Specification for Patient Addresses Final Version 1.0.</td>
        </tr>
        <tr>
            <td rowspan="2">Medication</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Medication Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Medication Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		<tr>
            <td rowspan="9">MedicationRequest</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core MedicationRequest Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core MedicationRequest Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>patient+intent</code> and <code>patient+intent+status</code> search parameter combinations.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>patient+intent</code> and <code>patient+intent+status</code> search parameter combinations.</td>
		</tr>
		<tr>
            <td rowspan="2"><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> support both <code>MedicationRequest.reportedBoolean</code> and <code>MedicationRequest.reportedReference</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support at least one of <code>MedicationRequest.reportedBoolean</code> and <code>MedicationRequest.reportedReference</code>.</td>
        </tr> 
        <tr>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support at least one target resource type in <code>MedicationRequest.reasonReference</code>.</td>
        </tr>  
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> conform referenced resources in <code>MedicationRequest.reasonReference</code> to appropriate US Core profiles.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> conform referenced resources in <code>MedicationRequest.reasonReference</code> to appropriate US Core profiles.</td>
        </tr>  
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> interpret the use of <code>MedicationRequest.requester</code> with Patient or RelatedPerson indicates a self-prescribed medication.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>patient+intent+encounter</code> search parameter combination.</td>
        </tr>
         <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
		 <tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
            <td rowspan="2"><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
		<tr>
			<td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>patient+intent+encounter</code> search parameter combination.</td>
		</tr>
		<tr>
            <td rowspan="5">Observation</td>
            <td>A client <strong>SHALL</strong> support at least one Observation, including profiles with <a href="#uscore-additional-requirements">additional requirements</a> and <a href="#uscore-additional-profiles">additional profiles</a>.</td>
			<td>A client <strong>SHALL</strong> support Observation profiles, including profiles with <a href="#uscore-additional-requirements">additional requirements</a> and <a href="#uscore-additional-profiles">additional profiles</a>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>        
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr> 
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+category+_lastUpdated</code> search parameter combination.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient+category+_lastUpdated</code> search parameter combination.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>Observation.effectivePeriod</code> for time-based tests.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>Observation.effectivePeriod</code> for time-based tests.</td>
		</tr>
        <tr>
            <td rowspan="6">Organization</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Organization Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Organization Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>address</code> search parameter.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>address</code> search parameter.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support National Provider Identifier (NPI) for organisations.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support National Provider Identifier (NPI) for organisations.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support Clinical Laboratory Improvement Amendments (CLIA) identifier for organisations.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support Clinical Laboratory Improvement Amendments (CLIA) identifier for organisations.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> follow the Project US@ Technical Specification for Patient Addresses Final Version 1.0 as the standard style guide for populating Organization.address.line and Organization.address.city.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> follow the Project US@ Technical Specification for Patient Addresses Final Version 1.0 as the standard style guide for populating Organization.address.line and Organization.address.city.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="7">Patient</td>
          	<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Patient Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Patient Profile which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>_id</code>, <code>name</code>, <code>birthdate+name</code> and <code>gender+name</code> search parameter and search parameter combinations.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>_id</code>, <code>name</code>, <code>birthdate+name</code> and <code>gender+name</code> search parameter and search parameter combinations.</td>
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support the <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support at least <code>Patient.deceasedDateTime</code> if supporting <code>Patient.deceased[x]</code>.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support at least <code>Patient.deceasedDateTime</code> if supporting <code>Patient.deceased[x]</code>.</td>
		</tr>	
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> (certifying systems)/ <strong>SHALL</strong> (non-certifying systems) follow the Project US@ Technical Specification for Patient.address.line and Patient.address.city formatting.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> (certifying systems)/ <strong>SHALL</strong> (non-certifying systems) follow the Project US@ Technical Specification for Patient.address.line and Patient.address.city formatting.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD NOT</strong> use a Social Security Number in <code>Patient.identifier.value</code>.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD NOT</strong> use a Social Security Number in <code>Patient.identifier.value</code>.</td>
		</tr>	
        <tr>
            <td rowspan="6">Practitioner</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Practitioner which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Practitioner which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>name</code> search parameter.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>name</code> search parameter.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> support <code>Practitioner.address</code>, regardless of whether the server supports the PractitionerRole resource.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>Practitioner.address</code> if the server does not support the PractitionerRole resource.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> provide implementation-specific guidance for accessing a provider's location and contact information when only the Practitioner resource is supported.</td>
		</tr>
        <tr>
			<td rowspan="2"><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> follow the Project US@ Technical Specification for <code>Practitioner.address.line</code> and <code>Practitioner.address.city</code> formatting.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> follow the Project US@ Technical Specification for <code>Practitioner.address.line</code> and <code>Practitioner.address.city</code> formatting.</td>
		</tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="5">PractitionerRole</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core PractitionerRole which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core PractitionerRole which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		<tr>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>specialty</code> search parameter.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>specialty</code> search parameter.</td>
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>_include=PractitionerRole:endpoint</code>.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>_include=PractitionerRole:endpoint</code>.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td rowspan="7">Procedure</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support both the US Core Procedure and US Core ServiceRequest profiles for communicating the reason for referral or consultation via <code>Procedure.basedOn</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support at least one of target resource types in <code>Procedure.reasonReference</code>.</td>
        </tr>
		<tr>
            <td rowspan="2"><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> ensure that referenced resources in <code>Procedure.reasonReference</code> conform to US Core profiles</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> ensure that referenced resources in <code>Procedure.reasonReference</code> conform to US Core profiles.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support both the US Core Procedure and US Core ServiceRequest profiles for communicating the reason for referral or consultation via <code>Procedure.basedOn</code>.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> use <code>Procedure.focalDevice</code> with reference to the US Core Implantable Device Profile when applicable.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> use <code>Procedure.focalDevice</code> with reference to the US Core Implantable Device Profile when applicable.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
		</tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> only use LOINC codes that reflect the actual procedures.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> only use LOINC codes that reflect the actual procedures.</td>
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td rowspan="6">RelatedPerson</td>
           <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core RelatedPerson which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
           <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core RelatedPerson which has additional requirements, see <a href="#uscore-additional-requirements">US Core profile additional requirements</a>.</td>
        </tr>
		 <tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>_id</code> search parameter.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support <code>_id</code> search parameter.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHOULD</strong> support <code>_revinclude=Provenance:target</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support <code>_revinclude=Provenance:target</code>.</td>
        </tr>
        <tr>
            <td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>name</code> search parameter.</td>
			<td><img src="arrow_up.png" width="20"/> <strong>SHOULD</strong> support <code>name</code> search parameter.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> follow the Project US@ Technical Specification for <code>RelatedPerson.address.line</code> and <code>RelatedPerson.address.city</code> formatting.</td>
			<td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> follow the Project US@ Technical Specification for <code>RelatedPerson.address.line</code> and <code>RelatedPerson.address.city</code> formatting.</td>
		</tr>
		<tr>
            <td rowspan="7">Specimen</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Specimen Profile.</td>
            <td><img src="arrow_up.png" width="20"/> <strong>SHALL</strong> support the US Core Specimen Profile.</td>
        </tr>
		<tr>
			<td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> be capable of fetching a Specimen resource using: <code>GET [base]/Specimen/[id]</code>.</td>
			<td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> be capable of returning a Specimen resource using: <code>GET [base]/Specimen/[id]</code>.</td>
		</tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> A client <strong>SHALL</strong> support both <code>Specimen.identifier</code> and <code>Specimen.accessionIdentifier</code>.</td>
            <td><img src="plus_sign.png" width="20"/> A server <strong>SHALL</strong> support at least one of <code>Specimen.identifier</code> and <code>Specimen.accessionIdentifier</code>.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support the <code>_id</code> search parameter.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHALL</strong> support the <code>_id</code> search parameter.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>resolves</code> reference policy.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>resolves</code> reference policy.</td>
        </tr>
		<tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>read</code>, <code>vread</code> and <code>history-instance</code> interactions.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>read</code>, <code>vread</code> and <code>history-instance</code> interactions.</td>
        </tr>
        <tr>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient</code> search parameter.</td>
            <td><img src="plus_sign.png" width="20"/> <strong>SHOULD</strong> support <code>patient</code> search parameter.</td>
        </tr>
    </tbody>
</table>  

*<sup>2</sup>Servers certified under the 21st Century Cures Act for accessing patient data apply additional requirements including requirements to support ALL resources with the conformance expectation SHALL. These additional requirements are excluded from comparison.*

#### Additional resource types
This version of AU Core has no equivalent CapabilityStatement expectations for the following resource types included in US Core CapabilityStatements.
    
<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
 	<colgroup>
		<col style="width: 20%;">
		<col style="width: 40%;">
		<col style="width: 40%;">
	</colgroup> 
	<thead>
        <tr>
            <th>Additional resource type</th>
            <th>US Core 7.0.0 Client CapabilityStatement resource conformance</th>
			<th>US Core 7.0.0 Server CapabilityStatement resource conformance</th>
        </tr>
    </thead> 
    <tbody>
		<tr>
            <td>CarePlan</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
        <tr>
            <td>CareTeam</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
        <tr>
            <td>Coverage</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
        <tr>
            <td>Device</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
        <tr>
            <td>Endpoint</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
        <tr>
            <td>Goal</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
		<tr>
            <td>Media</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
		<tr>
            <td>MedicationDispense</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
		<tr>
            <td>Provenance</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHALL</strong></td>
        </tr>
		<tr>
            <td>Questionnaire</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>QuestionnaireResponse</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHOULD</strong></td>
        </tr>
		<tr>
            <td>ValueSet</td>
            <td><strong>SHOULD</strong></td>
			<td><strong>SHOULD</strong></td>
        </tr>
	</tbody>
</table>