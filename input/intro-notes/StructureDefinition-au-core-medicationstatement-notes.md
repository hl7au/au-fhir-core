{% include search_parameters_intro.md -%}
<table class="list">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance</th>
    <th>Type(s)</th>
    <th>Requirements (when used alone or in combination)</th>
  </tr>
  <tr>
        <td>patient</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+effective</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>effective</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A client <b>SHALL</b> provide a value precise to the second + time offset. A server <b>SHALL</b> support a value precise to the second + time offset.</td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/medicationstatement.html.html#search)** search parameter:
    - **SHOULD** support these `_include` parameters: `MedicationStatement:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)

    `GET [base]/MedicationStatement?patient={Type/}[id]`
    **SHOULD** support for `GET [base]/MedicationStatement?patient.identifier={system|}[value]`

    Example:
    
      1. GET [base]/MedicationStatement?patient=5678
      1. GET [base]/MedicationStatement?patient=5678&amp;_include=MedicationStatement:medication
      1. GET [base]/MedicationStatement?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/MedicationStatement?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all MedicationStatement resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/medicationstatement.html.html#search)** and **[`status`](https://hl7.org/fhir/R4/medicationstatement.html.html#search)** search parameters:
    - **SHOULD** support these `_include` parameters: `MedicationStatement:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/MedicationStatement?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/MedicationStatement?patient=5678&amp;status=active
      1. GET [base]/MedicationStatement?patient=5678&amp;status=active&amp;_include=MedicationStatement:medication

    *Implementation Notes:* Fetches a bundle of all MedicationStatement resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))


#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/medicationstatement.html.html#search)** and **[`effective`](https://hl7.org/fhir/R4/medicationstatement.html.html#search)** search parameters:
    - **SHOULD** support these `_include` parameters: `MedicationStatement:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)
    - **SHALL** support these `effective` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `effective` (e.g.`effective=[date]&effective=[date]]&...`)

    `GET [base]/MedicationStatement?patient={Type/}[id]&effective={gt|lt|ge|le}[date]{&effective={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/MedicationStatement?patient=5678&amp;effective=ge2020-01-01T00:00:00Z
      1. GET [base]/MedicationStatement?patient.identifier=http://example.org/fhir/mrn\|12345&amp;effective=ge2020-01-01T00:00:00Z
      1. GET [base]/MedicationStatement?patient.identifier=http://example.org/fhir/mrn\|12345&amp;effective=ge2020-01-01T00:00:00Z&amp;_include=MedicationStatement:medication

    *Implementation Notes:* Fetches a bundle of all MedicationStatement resources for the specified patient and date. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))