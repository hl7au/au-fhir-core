This page addresses how sex and gender related concepts can be structured in FHIR and conformant to AU Core.

AU Core places *Must Support* on some concepts and inherits sex and gender related elements localised in AU Base, which has considered the logical data element models provided by [HL7 International’s Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1 specification](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/).

The table below provides an overview of the sex and gender concepts that are included in AU Core by definition, or through reference to AU Base.

**Legend:**

<img src="green_checkmark.svg.png" width="20"/> **Supported**: The sex or gender related concept is marked as *Must Support*.

<img src="orange_checkmark.svg.png" width="20"/> **Localised**: The sex or gender related concept is localised for use in an Australian context but is not marked as *Must Support*.

<img src="minus_symbol.svg.png" width="20"/> **Not localised**: The sex or gender related concept is not localised for use in an Australian context.


<table border="1" style="width: 100%; margin: auto; border-collapse: collapse;">
    <thead>
        <tr>
            <th style="width: 25%; text-align: center; vertical-align: middle;">Sex and Gender Concept</th>
            <th style="width: 25%; text-align: center; vertical-align: middle;"><a href="StructureDefinition-au-core-patient.html">AU Core Patient</a></th>
            <th style="width: 25%; text-align: center; vertical-align: middle;"><a href="StructureDefinition-au-core-practitioner.html">AU Core Practitioner</a></th>
            <th style="width: 25%; text-align: center; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-relatedperson.html">AU Base Related Person</a></th>
        </tr>
    </thead>
    <tbody>
          <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="sex-and-gender.html#administrative-gender-patientgender">Administrative Gender (Patient.gender)</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="minus_symbol.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="sex-and-gender.html#name-to-use">Name to Use</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="sex-and-gender.html#pronouns">Pronouns</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="sex-and-gender.html#gender-identity">Gender Identity</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="green_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#recorded-sex-or-gender">Recorded Sex or Gender</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
        <tr>
            <td style="width: 25%; text-align: left; vertical-align: middle;"><a href="sex-and-gender.html#sex-assigned-at-birth">Sex Assigned at Birth</a></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
            <td style="width: 25%; text-align: center; vertical-align: middle;"><img src="orange_checkmark.svg.png" width="20"/></td>
        </tr>
    </tbody>
</table>


### Administrative Gender (Patient.gender)
In AU Core, the `Patient.gender` value is a *Must Support* element in [AU Core Patient](StructureDefinition-au-core-patient.html), and as per AU Base **SHALL** be regarded as a Recorded Sex or Gender. AU Core adopts the implementation guidance defined in AU Based for [Administrative Gender (Patient.gender)](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#administrative-gender-patientgender) without change.

### Name to Use
In AU Core, `name.use` is a *Must Support* element in [AU Core Patient](StructureDefinition-au-core-patient.html). It should be noted that, `name.period` is not a *Must Support* element. AU Core adopts the implementation guidance defined in AU Base for [Name to Use](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#name-to-use-ntu) without change.

### Pronouns​
In AU Core, the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is a *Must Support* element in [AU Core Patient](StructureDefinition-au-core-patient.html), with the value element of the extension constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)). AU Core adopts the implementation guidance defined in AU Base for [Pronouns](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#pronouns) without change.


### Gender Identity
In AU Core, the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is a *Must Support* element in [AU Core Patient](StructureDefinition-au-core-patient.html), where the value element of the extension constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)). AU Core adopts the implementation guidance defined in AU Base for [Gender Identity](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#gender-identity-gi) without change.

### Sex Assigned at Birth
<p class="request-for-feedback">Implementers are advised that the <a href="StructureDefinition-au-core-rsg-sexassignedab.html">AU Core Sex Assigned At Birth</a> extension is under consideration for <i>Must Support</i> in AU Core. Input is welcome, please see <a href="https://jira.hl7.org/browse/FHIR-44857">FHIR-44857</a>.</p>

In AU Core, Sex Assigned at Birth is represented using the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html). That profile provides an implementation of the guidance in AU Base [Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html#sex-assigned-at-birth). It should be noted that while elements within Sex Assigned at Birth are *Must Support*, the Sex Assigned at Birth extension is not marked as *Must Support* in AU Core.  
