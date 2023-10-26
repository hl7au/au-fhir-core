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
        <td>_id</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td></td>
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
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+category+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both. <br/><br/> The client <b>SHOULD</b> support search using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile. The server <b>SHOULD</b> support search using the using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
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
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
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


#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHOULD** support fetching a DiagnosticReport using the **[`_id`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameter:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/DiagnosticReport/[id]` or `GET [base]/DiagnosticReport?_id=[id]`

    Example:
    
      1. GET [base]/DiagnosticReport/2169591
      1. GET [base]/DiagnosticReport?_id=2169591

    *Implementation Notes:* Fetches a single DiagnosticReport ([how to search by the logical id](http://hl7.org/fhir/R4/references.html#logical) of the resource)
    
1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameter:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]`
    or optionally  `GET [base]/DiagnosticReport?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/DiagnosticReport?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`category`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&category={system|}[code]`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/v2-0074\|LAB

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and category ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`category`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`date`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&category={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/v2-0074\|LAB&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and date and category ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))


#### Optional Search Parameters:

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the **[`identifier`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameter:
     - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
     
     `GET [base]/DiagnosticReport?identifier={system|}[code]`

    Example:
    
      1. GET [base]/DiagnosticReport?identifier=http://laboratory.example.org\|1032333
      1. GET [base]/DiagnosticReport?identifier=http://laboratory.example.org\|1032333&amp;_revinclude=Provenance:target

      *Implementation Notes:* Fetches a bundle containing any DiagnosticReport resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`category`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`status`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&category={system|}[code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/v2-0074\|LAB&amp;status=final

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and category and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`code`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;code=http://loinc.org\|94309-2,http://loinc.org\|2164-2

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and diagnostic report code(s). The DiagnosticReport `code` parameter searches `DiagnosticReport.code` only. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`code`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`date`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;code=http://loinc.org\|94309-2,http://loinc.org\|2164-2&amp;date=ge2020-01-01T00:00:00Z
      1. GET [base]/DiagnosticReport?patient.identifier=http://example.org/fhir/mrn\|12345&amp;code=http://loinc.org\|94309-2,http://loinc.org\|2164-2&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and date and report code(s) ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** and **[`status`](https://hl7.org/fhir/R4/diagnosticreport.html#search)** search parameters:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)

    `GET [base]/DiagnosticReport?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/DiagnosticReport?patient=5678&amp;status=final

    *Implementation Notes:* Fetches a bundle of all DiagnosticReport resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))
    