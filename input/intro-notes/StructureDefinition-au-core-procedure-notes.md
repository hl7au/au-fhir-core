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
        <td>patient+date</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+code+date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>code</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>date</td>
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

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/procedure.html#search)** search parameter:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)

    `GET [base]/Procedure?patient={Type/}[id]`
    **SHOULD** support for `GET [base]/Procedure?patient.identifier={system|}[value]`

    Example:
    
      1. GET [base]/Procedure?patient=5678
      1. GET [base]/Procedure?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Procedure?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all Procedure resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/procedure.html#search)** **[`date`](https://hl7.org/fhir/R4/procedure.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`)
    `GET [base]/Procedure?patient={Type/}[id]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Procedure?patient=5678&amp;date=ge2020-01-01T00:00:00Z
      1. GET [base]/Procedure?patient.identifier=http://example.org/fhir/mrn\|12345&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Procedure resources for the specified patient and date and procedure code(s). ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))


#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/procedure.html#search)** and **[`code`](https://hl7.org/fhir/R4/procedure.html#search)** and **[`date`](https://hl7.org/fhir/R4/procedure.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/Procedure?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Procedure?patient=5678&amp;code=http://snomed.info/sct\|26782000,http://snomed.info/sct\|36969009&amp;date=ge2020-01-01T00:00:00Z
      1. GET [base]/Procedure?patient.identifier=http://example.org/fhir/mrn\|12345&amp;code=http://snomed.info/sct\|26782000,http://snomed.info/sct\|36969009&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Procedure resources for the specified patient and date and procedure code(s). **SHOULD** support search by multiple codes. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/procedure.html#search)** and **[`status`](https://hl7.org/fhir/R4/procedure.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/Procedure?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Procedure?patient=5678&amp;status=completed

    *Implementation Notes:* Fetches a bundle of all Procedure resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

