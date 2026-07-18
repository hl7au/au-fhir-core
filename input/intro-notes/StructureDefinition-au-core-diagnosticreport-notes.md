{% include search_parameters_intro.md -%}
<table class="list">
<thead>
    <tr>
      <th>Parameter(s)</th>
      <th>Conformance</th>
      <th>Type(s)</th>
      <th>Requirements (when used alone or in combination)</th>
    </tr>
</thead>
 <tbody>
  <tr>
        <td>_id</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.<br/><br/>The requester <b>SHOULD</b> support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile. The responder <b>SHOULD</b> support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
  </tr>
  <tr>
        <td>patient+category</td>
        <td><b>SHALL</b></td>
         <td><code>reference</code>+<code>token</code></td>
         <td></td>
  </tr>
   <tr>
        <td>patient+category+date</td>
        <td><b>SHALL</b></td>
         <td><code>reference</code>+<code>token</code>+<code>date</code></td>
         <td></td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+category+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+code</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+code+date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>category</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>code</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>date</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>The requester <b>SHALL</b> provide a value precise to the second + time offset. The responder <b>SHALL</b> support a value precise to the second + time offset.<br/><br/>The requester <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.<br/><br/>The requester <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.</td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`_id`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameter:

    `GET [base]/DiagnosticReport?_id=[id]`

    Example:
    
      1. GET [base]/DiagnosticReport?_id=5678

    *Implementation Notes:* Fetches a bundle with the requested DiagnosticReport, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameter:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]` or optionally `GET [base]/DiagnosticReport?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`category`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&category={system|}[code]` or optionally `GET [base]/DiagnosticReport?patient.identifier=[system|][code]&category={system|}[code]`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;category=CH
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;category=CH
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361&amp;category=CH

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and category ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`category`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`date`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
     - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g. `date=[date]&date=[date]&...`), and if *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* is supported, **SHALL** support the search comparators `gt,lt,ge,le`

    `GET [base]/DiagnosticReport?patient={Type/}[id]&category={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}` or optionally `GET [base]/DiagnosticReport?patient.identifier=[system|][code]&category={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;category=CH&amp;date=ge2021-02-07
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;category=CH&amp;date=ge2021-02-07
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361&amp;category=CH&amp;date=ge2021-02-07

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient, category and date ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

#### Optional Search Parameters:

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the **[`identifier`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameter:
    
    `GET [base]/DiagnosticReport?identifier={system|}[code]`

    Example: 
    
      1. GET [base]/DiagnosticReport?identifier=http://ns.electronichealth.net.au/id/hpio-scoped/report/1.0/8003611566718494\|42657
      1. GET [base]/DiagnosticReport?identifier=https://pullabookapathology.example.com/report/report-identifier\|63698

    *Implementation Notes:* Fetches a bundle containing all DiagnosticReport resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`category`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`status`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&category={system|}[code]&status={system|}[code]` or optionally `GET [base]/DiagnosticReport?patient.identifier=[system|][code]&category={system|}[code]&status={system|}[code]`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;category=CH&amp;status=final
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;category=CH&amp;status=final
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361&amp;category=CH&amp;status=final

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient, category and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`code`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&code={system|}[code]` or optionally `GET [base]/DiagnosticReport?patient.identifier=[system|][code]&code={system|}[code]`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;code=444821009
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;code=444821009
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361&amp;code=444821009

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and code ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`code`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`date`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g. `date=[date]&date=[date]&...`), and if *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* is supported, **SHALL** support the search comparators `gt,lt,ge,le`

    `GET [base]/DiagnosticReport?patient={Type/}[id]&code={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}` or optionally `GET [base]/DiagnosticReport?patient.identifier=[system|][code]&code={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;code=444821009&amp;date=ge2022-03-21
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;code=444821009&amp;date=ge2022-03-21
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361&amp;code=444821009&amp;date=ge2022-03-21

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient, code and date ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`status`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&status={system|}[code]` or optionally `GET [base]/DiagnosticReport?patient.identifier=[system|][code]&status={system|}[code]`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;status=final
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;status=final
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361&amp;status=final

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources matching the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))