Below is an overview of the mandatory and optional search parameters and combined search parameters. FHIR search operations and the syntax used to describe the interactions is described <a href="http://hl7.org/fhir/R4/search.html">here</a>.

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
        <td>patient+category</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+category+date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+category+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+category+status+date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>token</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>category</td>
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

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/careplan.html.html#search)** search parameter:
    - **SHOULD** support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)

    `GET [base]/CarePlan?patient={Type/}[id]`
    **SHOULD** support for `GET [base]/CarePlan?patient.identifier={system|}[value]`

    Example:
    
      1. GET [base]/CarePlan?patient=5678
      1. GET [base]/CarePlan?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/CarePlan?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all CarePlan resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`category`](https://hl7.org/fhir/R4/careplan.html.html#search)** search parameters:

    `GET [base]/CarePlan?patient={Type/}[id]&category={system|}[code]`

    Example:
    
      1. GET [base]/CarePlan?patient=5678&amp;category=http://snomed.info/sct\|736248007

    *Implementation Notes:* Fetches a bundle of all CarePlan resources for the specified patient and a category code = `736248007` ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`category`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`date`](https://hl7.org/fhir/R4/careplan.html.html#search)** search parameters:
    - including support for these `date` comparators: `gt,lt,ge,le`
    - including optional support for *AND* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/CarePlan?patient={Type/}[id]&category={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/CarePlan?patient=5678&amp;category=http://snomed.info/sct\|736248007&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all CarePlan resources for the specified patient and date and a category code = `736248007` ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

    1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`category`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`status`](https://hl7.org/fhir/R4/careplan.html.html#search)** search parameters:
    - including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/CarePlan?patient={Type/}[id]&category={system|}[code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/CarePlan?patient=5678&amp;category=http://snomed.info/sct\|736248007&amp;status=active

    *Implementation Notes:* Fetches a bundle of all CarePlan resources for the specified patient and category and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

    1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`category`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`status`](https://hl7.org/fhir/R4/careplan.html.html#search)** and **[`date`](https://hl7.org/fhir/R4/careplan.html.html#search)** search parameters:
    - including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)
    - including support for these `date` comparators: `gt,lt,ge,le`
    - including optional support for *AND* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/CarePlan?patient={Type/}[id]&category={system|}[code]&status={system|}[code]{,{system|}[code],...}&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/CarePlan?patient=5678&amp;category=http://snomed.info/sct\|736248007&amp;status=active&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all CarePlan resources for the specified patient and category and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token)) and [how to search by date](http://hl7.org/fhir/R4/search.html#date)) 