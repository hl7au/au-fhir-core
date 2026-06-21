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
      <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.<br/><br/>The requester <b>SHOULD</b> support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile. The responder <b>SHOULD</b> support chained search patient.identifier using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
    </tr>
    <tr>
      <td>patient+type</td>
      <td><b>SHALL</b></td>
      <td><code>reference</code>+<code>token</code></td>
      <td></td>
    </tr>
    <tr>
      <td>patient+author</td>
      <td><b>SHOULD</b></td>
      <td><code>reference</code>+<code>reference</code></td>
      <td></td>
    </tr>
    <tr>
      <td>patient+type+period</td>
      <td><b>SHOULD</b></td>
      <td><code>reference</code>+<code>token</code>+<code>date</code></td>
      <td></td>
    </tr>
    <tr>
      <td>patient+type+date</td>
      <td><b>SHOULD</b></td>
      <td><code>reference</code>+<code>token</code>+<code>date</code></td>
      <td></td>
    </tr>
    <tr>
      <td>author</td>
      <td><b>MAY</b></td>
      <td><code>reference</code></td>
      <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.</td>
    </tr>
    <tr>
      <td>date</td>
      <td><b>MAY</b></td>
      <td><code>date</code></td>
      <td>A requester <b>SHALL</b> provide a value precise to the second + time offset. A responder <b>SHALL</b> support a value precise to the second + time offset.<br/><br/>The requester <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.<br/><br/>The requester <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.</td>
    </tr>
    <tr>
      <td>period</td>
      <td><b>MAY</b></td>
      <td><code>date</code></td>
      <td>A requester <b>SHALL</b> provide a value precise to the second + time offset. A responder <b>SHALL</b> support a value precise to the second + time offset.<br/><br/>The requester <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.<br/><br/>The requester <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.</td>
    </tr>
    <tr>
      <td>type</td>
      <td><b>MAY</b></td>
      <td><code>token</code></td>
      <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
    </tr>  
  </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/documentreference.html#search)** search parameter:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DocumentReference?patient={Type/}[id]` or optionally `GET [base]/DocumentReference?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html#search)** and **[`type`](https://hl7.org/fhir/R4/documentreference.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DocumentReference?patient={Type/}[id]&type={system|}[code]`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;type=http://loinc.org\|60591-5
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;type=http://loinc.org\|60591-5

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and type ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html#search)** and **[`author`](https://hl7.org/fhir/R4/documentreference.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/DocumentReference?patient={Type/}[id]&author={Type/}[id]`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;author=Practitioner/2345
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;author=Practitioner/2345

      *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and author ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html#search)** and **[`type`](https://hl7.org/fhir/R4/documentreference.html#search)** and **[`date`](https://hl7.org/fhir/R4/documentreference.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]&...`), and if *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* is supported, **SHALL** support the search comparators `gt,lt,ge,le`

    `GET [base]/DocumentReference?patient={Type/}[id]&type={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;type=http://loinc.org\|60591-5&amp;date=ge2020-01-01T00:00:00Z
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;type=http://loinc.org\|60591-5&amp;date=ge2020-01-01T00:00:00Z

      *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and type and date ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html#search)** and **[`type`](https://hl7.org/fhir/R4/documentreference.html#search)** and **[`period`](https://hl7.org/fhir/R4/documentreference.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support these `period` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `period` (e.g.`period=[date]&period=[date]&...`), and if *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* is supported, **SHALL** support the search comparators `gt,lt,ge,le`

    `GET [base]/DocumentReference?patient={Type/}[id]&type={system|}[code]&period={gt|lt|ge|le}[date]{&period={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;type=http://loinc.org\|60591-5&amp;period=ge2020-01-01T00:00:00Z
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;type=http://loinc.org\|60591-5&amp;period=ge2020-01-01T00:00:00Z

      *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and type and period ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))