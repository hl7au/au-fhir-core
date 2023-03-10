A resource may be conformant to multiple implementation guides. In addition to the core FHIR specification, a resource conformant to an AU Core profile may be conformant to profiles published project implementation guides, other national, or international implementation guides.

The table provides a high-level comparison, indicating if a resource conformant to a particular AU Core profile also satisfies (i.e. is conformant to) a profile from [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](https://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://build.fhir.org/ig/HL7/US-Core).

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa), [International Patient Summary](http://build.fhir.org/ig/HL7/fhir-ips), or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.

<table border="1" cellspacing="0" cellpadding="0">
    <tbody>
        <tr>
            <td width="101" rowspan="2" valign="top">
                <p>
                    <a href="https://build.fhir.org/ig/hl7au/au-fhir-core">
                        AU Core
                    </a>
                </p>
            </td>
            <td width="148" colspan="2" valign="top">
                <p>
                    <a href="https://build.fhir.org/ig/HL7/fhir-ipa">
                        International Patient Access
                    </a>
                </p>
            </td>
            <td width="215" colspan="2" valign="top">
                <p>
                    <a href="https://build.fhir.org/ig/HL7/fhir-ips">
                        International Patient Summary
                    </a>
                </p>
            </td>
            <td width="234" colspan="2" valign="top">
                <p>
                    <a href="http://build.fhir.org/ig/HL7/US-Core">US Core</a>
                </p>
            </td>
        </tr>
        <tr>
            <td width="87" valign="top">
                <p>
                    <strong>Profile</strong>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <strong>Conformant?</strong>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <strong>Profile</strong>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <strong>Conformant?</strong>
                    <strong></strong>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <strong>Profile</strong>
                    <strong></strong>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <strong>Conformant?</strong>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-alcoholstatus.html"
                        title="StructureDefinition/au-core-alcoholstatus"
                    >
                        AU Core Alcohol Status
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
                <p>
                    <strong></strong>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-allergyintolerance.html"
                    >
                        AU Core AllergyIntolerance
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-allergyintolerance"
                    >
                        IPA-AllergyIntolerance
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
                    >
                        Allergy Intolerance (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    AllergyIntolerance.patient.reference
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
                    >
                        US Core AllergyIntolerance
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-norelevantfinding.html"
                        title="StructureDefinition/au-core-norelevantfinding"
                    >
                        AU Core Assertion of No Relevant Finding
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
                <p>
                    <strong></strong>
                </p>
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-sexassignedatbirth.html"
                        title="StructureDefinition/au-core-sexassignedatbirth"
                    >
                        AU Core Biological Sex Assigned at Birth
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
                <p>
                    <strong></strong>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-bloodpressure.html"
                        title="StructureDefinition/au-core-bloodpressure"
                    >
                        AU Core Blood Pressure
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a href="http://hl7.org/fhir/R4/observation-bp.html">
                        observation-bp
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure"
                    >
                        US Core Blood Pressure
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-bmi.html"
                        title="StructureDefinition/au-core-bmi"
                    >
                        AU Core BMI
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a href="http://hl7.org/fhir/R4/observation-bmi.html">
                        observation-bmi
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-bmi"
                    >
                        US Core BMI
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-bodyheight.html"
                        title="StructureDefinition/au-core-bodyheight"
                    >
                        AU Core Body Height
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/R4/observation-bodyheight.html"
                    >
                        observation-bodyheight
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-height"
                    >
                        US Core Body Height
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-bodystructure.html"
                        title="StructureDefinition/au-core-bodystructure"
                    >
                        AU Core Body Structure
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-bodytemp.html"
                        title="StructureDefinition/au-core-bodytemp"
                    >
                        AU Core Body Temperature
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a href="http://hl7.org/fhir/R4/observation-bodytemp.html">
                        observation-bodytemp
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-temperature"
                    >
                        US Core Body Temperature
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-bodyweight.html"
                        title="StructureDefinition/au-core-bodyweight"
                    >
                        AU Core Body Weight
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/R4/observation-bodyweight.html"
                    >
                        observation-bodyweight
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-weight"
                    >
                        US Core Body Weight
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-careplan.html"
                    >
                        AU Core CarePlan
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-careplan.html"
                    >
                        US Core CarePlan
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if CarePlan.text is included and CarePlan.category
                    supplies the US Core specific terminology
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-careteam.html"
                    >
                        AU Core Care Team
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-careteam.html"
                    >
                        US Core CareTeam
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" rowspan="2" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-condition.html"
                    >
                        AU Core Condition
                    </a>
                </p>
            </td>
            <td width="87" rowspan="2" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-condition"
                    >
                        IPA-Condition
                    </a>
                </p>
            </td>
            <td width="60" rowspan="2" valign="top">
                <p align="center">
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" rowspan="2" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"
                    >
                        Condition (IPS)
                    </a>
                </p>
            </td>
            <td width="141" rowspan="2" valign="top">
                <p>
                    if patient is supported as Condition.subject.reference
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns"
                    >
                        US Core Condition Problems and Health Concerns
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if one Condition.category is supplied with a value
                    from the US Core Problem or Health Concern value set
                </p>
            </td>
        </tr>
        <tr>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis"
                    >
                        US Core Condition Encounter Diagnosis
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
<img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if one Condition.category                    <code>encounter-diagnosis</code> is supplied
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-coverage.html"
                    >
                        AU Core Coverage
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-coverage"
                    >
                        US Core Coverage
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if Coverage.relationship is included
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-documentcomposition.html"
                        title="StructureDefinition/au-core-documentcomposition"
                    >
                        AU Core Document Composition
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips"
                    >
                        Composition (IPS)
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <strong><img src="https://hl7.org/fhir/R4/assets/images/tick.png"/></strong>
                    <strong> </strong>
                    if:
                </p>
                <ul>
                    <li>
                        Composition.type is <code>60591-5</code>
                    </li>
                </ul>
                <p>
                    · patient is supported as Composition.subject.reference
                </p>
                <ul>
                    <li>
                        any section
                    </li>
                </ul>
                <p>
                    o does not supply Section.emptyReason or Section.section
                </p>
                <p>
                    o supplies at least one Section.entry with a supported
                    resource type
                </p>
                <p>
                    o does not supply unsupported resource types in
                    Section.entry
                </p>
                <p>
· a medications section is supplied with Section.code                    <code>10160-0</code>
                </p>
                <p>
· an allergies section is supplied with Section.code                    <code>48765-2</code>
                </p>
                <p>
· a problems section is supplied with Section.code                    <code>11450-4</code>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-diagnosticresult-imag.html"
                        title="StructureDefinition/au-core-diagnosticresult-imag"
                    >
                        AU Core Diagnostic Imaging Result Observation
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips"
                    >
                        Observation Results: radiology (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
Observation.subject.reference, Observation.status is                    <code>final</code>, and Observation.performer is supplied,
                    noting that IPS extensibly binds Observation.code to LOINC
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result"
                    >
                        US Core Observation Clinical Result
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> noting that US Core extensibly binds Observation.code
                    to LOINC and restricts Observation.quantity[x] to UCUM for
                    coded quantity units
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-diagnosticresult.html"
                        title="StructureDefinition/au-core-diagnosticresult"
                    >
                        AU Core Diagnostic Result Observation
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips"
                    >
                        Observation Results (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
Observation.subject.reference and Observation.status is                    <code>final</code>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result"
                    >
                        US Core Observation Clinical Result
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> noting that US Core extensibly binds Observation.code
                    to LOINC and restricts Observation.quantity[x] to UCUM for
                    coded quantity units
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" rowspan="2" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-diagnosticreport.html"
                        title="StructureDefinition/au-core-diagnosticreport"
                    >
                        AU Core DiagnosticReport
                    </a>
                </p>
            </td>
            <td width="87" rowspan="2" valign="top">
            </td>
            <td width="60" rowspan="2" valign="top">
            </td>
            <td width="73" rowspan="2" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/DiagnosticReport-uv-ips"
                    >
                        DiagnosticReport (IPS)
                    </a>
                </p>
            </td>
            <td width="141" rowspan="2" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    DiagnosticReport.subject.reference and
                    DiagnosticReport.status is <code>final</code>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note"
                    >
                        US Core DiagnosticReport Profile for Report and Note
                        Exchange
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> noting that US Core extensibly binds Observation.code
                    to a subset of LOINC
                </p>
            </td>
        </tr>
        <tr>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab"
                    >
                        US Core DiagnosticReport Profile for Laboratory Results
                        Reporting
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if Observation.category is <code>LAB</code>, noting
                    that US Core extensibly binds Observation.code to a subset
                    of LOINC
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-documentreference.html"
                        title="StructureDefinition/au-core-documentreference"
                    >
                        AU Core DocumentReference
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-documentreference"
                    >
                        IPA-DocumentReference
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference"
                    >
                        US Core DocumentReference
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if DocumentReference.code is supplied with a value
                    from the US Core DocumentReference Type value set
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-encounter.html"
                        title="StructureDefinition/au-core-encounter"
                    >
                        AU Core Encounter
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter"
                    >
                        US Core Encounter
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if Encounter.type is supplied
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-estimateddateofdelivery.html"
                        title="StructureDefinition/au-core-estimateddateofdelivery"
                    >
                        AU Core Estimated Date of Delivery
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-gestationalage.html"
                        title="StructureDefinition/au-core-gestationalage"
                    >
                        AU Core Gestational Age
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-gravidity.html"
                        title="StructureDefinition/au-core-gravidity"
                    >
                        AU Core Gravidity
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-headcircum.html"
                        title="StructureDefinition/au-core-headcircum"
                    >
                        AU Core Head Circumference
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-healthprogramparticipation.html"
                        title="StructureDefinition/au-core-healthprogramparticipation"
                    >
                        AU Core Health Program Participation Summary
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-healthcareservice.html"
                        title="StructureDefinition/au-core-healthcareservice"
                    >
                        AU Core HealthcareService
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-heartrate.html"
                        title="StructureDefinition/au-core-heartrate"
                    >
                        AU Core Heart Rate
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a href="http://hl7.org/fhir/R4/observation-heartrate.html">
                        observation-heartrate
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate"
                    >
                        US Core Heart Rate
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-immunization.html"
                        title="StructureDefinition/au-core-immunization"
                    >
                        AU Core Immunization
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-immunization"
                    >
                        IPA-Immunization
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"
                    >
                        Immunization (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    AllergyIntolerance.patient.reference
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance"
                    >
                        US Core Immunization
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> noting that US Core extensibly binds to CVX which is
                    not an AU vaccine terminology
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-lastmenstrualperiod.html"
                        title="StructureDefinition/au-core-lastmenstrualperiod"
                    >
                        AU Core Last Menstrual Period
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" rowspan="2" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-lipid-result.html"
                        title="StructureDefinition/au-core-lipid-result"
                    >
                        AU Core Lipid Result
                    </a>
                </p>
            </td>
            <td width="87" rowspan="2" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" rowspan="2" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips"
                    >
                        Observation Results: laboratory (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
Observation.subject.reference, Observation.status is                    <code>final</code> and Observation.performer is supplied
                </p>
            </td>
            <td width="84" rowspan="2" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
                    >
                        US Core Laboratory Result Observation
                    </a>
                </p>
            </td>
            <td width="150" rowspan="2" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips"
                    >
                        Observation Results: pathology (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    Observation.subject.reference and Observation.performer is
                    supplied
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-location.html"
                        title="StructureDefinition/au-core-location"
                    >
                        AU Core Location
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
                    >
                        US Core Location
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if Location.name is supplied
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-medication.html"
                        title="StructureDefinition/au-core-medication"
                    >
                        AU Core Medication
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medication"
                    >
                        IPA-Medication
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips"
                    >
                        Medication (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Quantity-uv-ips"
                    >
                        Data Type Profile: Quantity (IPS)
                    </a>
                    constraints are met
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication"
                    >
                        US Core Medication
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> noting that US Core extensibly binds to RxNorm which
                    is not an AU medicines terminology
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-medicationadministration.html"
                        title="StructureDefinition/au-core-medicationadministration"
                    >
                        AU Core MedicationAdministration
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-medicationdispense.html"
                        title="StructureDefinition/au-core-medicationdispense"
                    >
                        U Core MedicationDispense
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationdispense"
                    >
                        US Core MedicationDispense
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-medicationrequest.html"
                        title="StructureDefinition/au-core-medicationrequest"
                    >
                        AU Core MedicationRequest
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationrequest"
                    >
                        IPA-MedicationRequest
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips"
                    >
                        Medication Request (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    MedicationRequest.subject.reference
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest"
                    >
                        US Core MedicationRequest
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if core FHIR MedicationRequest Category codes are
                    supplied in MedicationRequest.category
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-medicationstatement.html"
                        title="StructureDefinition/au-core-medicationstatement"
                    >
                        AU Core MedicationStatement
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-medicationstatement"
                    >
                        IPA-MedicationStatement
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
                    >
                        Medication Statement (IPS)
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if MedicationStatement.effective[x] is included and
                    patient is supported as
                    MedicationStatement.subject.reference
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-observation.html"
                        title="StructureDefinition/au-core-observation"
                    >
                        AU Core Observation
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-organization.html"
                        title="StructureDefinition/au-core-organization"
                    >
                        AU Core Organization
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition/Organization-uv-ips"
                    >
                        Organization (IPS)
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition/Organization-uv-ips"
                    >
                        Organization (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-oxygensat.html"
                        title="StructureDefinition/au-core-oxygensat"
                    >
                        AU Core Oxygen Saturation
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a href="http://hl7.org/fhir/R4/observation-oxygensat.html">
                        observation-oxygensat
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    TBD
                </p>
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-parity.html"
                        title="StructureDefinition/au-core-parity"
                    >
                        AU Core Parity
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" rowspan="2" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-diagnosticresult-path.html"
                        title="StructureDefinition/au-core-diagnosticresult-path"
                    >
                        AU Core Pathology Result Observation
                    </a>
                </p>
            </td>
            <td width="87" rowspan="2" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" rowspan="2" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips"
                    >
                        Observation Results: laboratory (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
Observation.subject.reference, Observation.status is                    <code>final</code> and Observation.performer is supplied
                </p>
            </td>
            <td width="84" rowspan="2" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab"
                    >
                        US Core Laboratory Result Observation
                    </a>
                </p>
            </td>
            <td width="150" rowspan="2" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips"
                    >
                        Observation Results: pathology (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    Observation.subject.reference and Observation.performer is
                    supplied
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-patient.html"
                        title="StructureDefinition/au-core-patient"
                    >
                        AU Core Patient
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-patient.html"
                    >
                        IPA-Patient
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition/Patient-uv-ips"
                    >
                        Patient (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
                    >
                        US Core Patient
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-practitioner.html"
                        title="StructureDefinition/au-core-practitioner"
                    >
                        AU Core Practitioner
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-practitioner.html"
                    >
                        IPA-Practitioner
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition/Practitioner-uv-ips"
                    >
                        Practitioner (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner"
                    >
                        US Core Practitioner
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-practitionerrole.html"
                        title="StructureDefinition/au-core-practitionerrole"
                    >
                        AU Core PractitionerRole
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-practitionerrole.html"
                    >
                        IPA-PractitionerRole
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://build.fhir.org/ig/HL7/fhir-ips/StructureDefinition/PractitionerRole-uv-ips"
                    >
                        PractitionerRole (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole"
                    >
                        US Core PractitionerRole
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> noting that AU Core does not enforce the US Core
                    constraint <strong>pd-1</strong>: SHALL have contact
                    information or a reference to an Endpoint
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-pregnancystatus.html"
                        title="StructureDefinition/au-core-pregnancystatus"
                    >
                        AU Core Pregnancy Status
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"
                    >
                        Observation - Pregnancy: EDD
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if an additional coding is sent in Observtion.code
                    from the set of supported LOINC codes (AU &amp; IPS support
                    the same LOINC concepts)
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-procedure.html"
                        title="StructureDefinition/au-core-procedure"
                    >
                        AU Core Procedure
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
                    >
                        Procedure (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    Procedure.subject.reference
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure"
                    >
                        US Core Procedure
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as
                    Procedure.subject.reference
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-relatedperson.html"
                        title="StructureDefinition/au-core-relatedperson"
                    >
                        AU Core RelatedPerson
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson"
                    >
                        US Core RelatedPerson
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if RelatedPerson.active is supplied
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-resprate.html"
                        title="StructureDefinition/au-core-resprate"
                    >
                        AU Core Respiration Rate
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-respiratory-rate"
                    >
                        observation-resprate
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate"
                    >
                        US Core Respiratory Rate
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-servicerequest.html"
                        title="StructureDefinition/au-core-servicerequest"
                    >
                        AU Core ServiceRequest
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-servicerequest"
                    >
                        US Core ServiceRequest
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-smokingceasedate.html"
                        title="StructureDefinition/au-core-smokingceasedate"
                    >
                        AU Core Smoking Cease Date
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-smokingstartdate.html"
                        title="StructureDefinition/au-core-smokingstartdate"
                    >
                        AU Core Smoking Start Date
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-smokingstatus.html"
                        title="StructureDefinition/au-core-smokingstatus"
                    >
                        AU Core Smoking Status
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips"
                    >
                        Observation - SH: tobacco use
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if additional LOINC coding is supplied in
                    Observation.code and Observation.valueCodeableConcept, and
                    patient is supported in Observation.subject.reference
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus"
                    >
                        US Core Smoking Status Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-specimen.html"
                        title="StructureDefinition/au-core-specimen"
                    >
                        AU Core Specimen
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/uv/ips/StructureDefinition/Specimen-uv-ips"
                    >
                        Specimen (IPS)
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if patient is supported as Specimen.subject.reference
                </p>
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-specimen"
                    >
                        US Core Specimen
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/> if Specimen.type is included
                </p>
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-substance.html"
                        title="StructureDefinition/au-core-substance"
                    >
                        AU Core Substance
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-device-system.html"
                        title="StructureDefinition/au-core-device-system"
                    >
                        AU Core System Device
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
            </td>
            <td width="60" valign="top">
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-vitalspanel.html"
                        title="StructureDefinition/au-core-vitalspanel"
                    >
                        AU Core Vitals Panel
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
                <p>
                    <a href="http://hl7.org/fhir/R4/vitalspanel.html">
                        observation-vitalspanel
                    </a>
                </p>
            </td>
            <td width="141" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="84" valign="top">
            </td>
            <td width="150" valign="top">
            </td>
        </tr>
        <tr>
            <td width="101" valign="top">
                <p>
                    <a
                        href="file:///C:/work/git/au-fhir-core/output/StructureDefinition-au-core-waistcircum.html"
                        title="StructureDefinition/au-core-waistcircum"
                    >
                        AU Core Waist Circumference
                    </a>
                </p>
            </td>
            <td width="87" valign="top">
                <p>
                    <a
                        href="https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html"
                    >
                        IPA-Observation
                    </a>
                </p>
            </td>
            <td width="60" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
            <td width="73" valign="top">
            </td>
            <td width="141" valign="top">
            </td>
            <td width="84" valign="top">
                <p>
                    <a
                        href="http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation"
                    >
                        US Core Simple Observation
                    </a>
                </p>
            </td>
            <td width="150" valign="top">
                <p>
                    <img src="https://hl7.org/fhir/R4/assets/images/tick.png"/>
                </p>
            </td>
        </tr>
    </tbody>
</table>