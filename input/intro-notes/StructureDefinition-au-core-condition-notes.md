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
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+category</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+clinical-status</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+category+clinical-status</td>
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
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both.<br/><br/>The requester <b>SHOULD</b> support search using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile. The responder <b>SHOULD</b> support search using the using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
  </tr>
  <tr>
        <td>patient+onset-date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>category</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>clinical-status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>code</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.<br/><br/>The requester <strong>SHALL</strong> support <code>multipleOr</code>. The responder <strong>SHALL</strong> support <code>multipleOr</code>.</td>
  </tr>
  <tr>
        <td>onset-date</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A requester <b>SHALL</b> provide a value precise to the second + time offset. A responder <b>SHALL</b> support a value precise to the second + time offset.<br/><br/>The requester <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.<br/><br/>The requester <strong>SHOULD</strong> support <code>multipleAnd</code>. The responder <strong>SHOULD</strong> support <code>multipleAnd</code>.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/condition.html#search)** search parameter:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Condition?patient={Type/}[id]`
    or optionally  `GET [base]/Condition?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Condition?patient=5678
      1. GET [base]/Condition?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Condition?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/condition.html#search)** and **[`category`](https://hl7.org/fhir/R4/condition.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Condition?patient={Type/}[id]&category={system|}[code]`

    Example:
    
      1. GET [base]/Condition?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/condition-category\|encounter-diagnosis

    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient and category code = `encounter-diagnosis` ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/condition.html#search)** and **[`clinical-status`](https://hl7.org/fhir/R4/condition.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Condition?patient={Type/}[id]&clinical-status={system|}[code]`

    Example:
    
      1. GET [base]/Condition?patient=5678&amp;clinical-status=http://terminology.hl7.org/CodeSystem/condition-clinical\|active

    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient and a clinical status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))


#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/condition.html#search)** and **[`category`](https://hl7.org/fhir/R4/condition.html#search)** and **[`clinical-status`](https://hl7.org/fhir/R4/condition.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Condition?patient={Type/}[id]&category={system|}[code]&clinical-status={system|}[code]`

    Example:
    
      1. GET [base]/Condition?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/observation-category\|encounter-diagnosis&amp;clinical-status=http://terminology.hl7.org/CodeSystem/condition-clinical\|active

    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient and category and clinical-status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/condition.html#search)** and **[`code`](https://hl7.org/fhir/R4/condition.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)

    `GET [base]/Condition?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Condition?patient=5678&amp;code=http://snomed.info/sct\|68566005,http://snomed.info/sct\|394659003

    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient and condition code(s). **SHOULD** support search by multiple codes. The Condition `code` parameter searches `Condition.code` only. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/condition.html#search)** and **[`onset-date`](https://hl7.org/fhir/R4/condition.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`
    - **SHALL** support these `onset-date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `onset-date` (e.g.`onset-date=[date]&date=[date]]&...`)

    `GET [base]/Condition?patient={Type/}[id]&onset-date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Condition?patient=5678&amp;onset-date=ge2020-01-01T00:00:00Z
      1. GET [base]/Condition?patient.identifier=http://example.org/fhir/mrn\|12345&amp;onset-date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Condition resources for the specified patient and onset-date ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))