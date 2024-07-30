{% include search_parameters_intro.md -%}
<table class="list">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance </th>
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
        <td>identifier</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both. <br/><br/> The requester <b>SHOULD</b> support search using IHI, Medicare Number, and DVA Number identifiers as defined in the profile. The responder <b>SHOULD</b> support search using the using IHI, Medicare Number, and DVA Number identifiers as defined in the profile.</td>
  </tr>
  <tr>
        <td>birthdate+family</td>
        <td><b>SHOULD</b></td>
        <td><code>date</code>+<code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>birthdate+name</td>
        <td><b>SHOULD</b></td>
        <td><code>date</code>+<code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>family</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>family+gender</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>gender+name</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code>+<code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>name</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>birthdate</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A requester <b>SHALL</b> provide a value precise to the day. A responder <b>SHALL</b> support a value precise to the day offset.<br/><br/>The requester <strong>SHOULD</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHOULD</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.<br/><br/>The requester <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.</td>
  </tr>
  <tr>
        <td>gender</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>indigenous-status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>gender-identity</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

1. **SHALL** support fetching a Patient using the **[`_id`](https://hl7.org/fhir/R4/patient.html#search)** search parameter:
    
    `GET [base]/Patient/[id]` or `GET [base]/Patient?_id=[id]`

    Example:
    
      1. GET [base]/Patient/5678
      1. GET [base]/Patient?_id=5678

    *Implementation Notes:* Returns a single Patient resource ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **SHALL** support searching a patient by an identifier using the **[`identifier`](https://hl7.org/fhir/R4/patient.html#search)** search parameter:
    
    `GET [base]/Patient?identifier=[system|][code]`

    Example:
    
      1. GET [base]/Patient?identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Patient?identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361
      1. GET [base]/Patient?identifier=http://example.org/fhir/mrn\|12345

    *Implementation Notes:* Fetches a bundle containing any Patient resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))


#### Optional Search Parameters:

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching for a patient by a responder-defined search that matches any of the string fields in the HumanName, including family, given, prefix, suffix, and/or text using the **[`name`](https://hl7.org/fhir/R4/patient.html#search)** search parameter:
    
    `GET [base]/Patient?name=[string]`

    Example:
    
      1. GET [base]/Patient?name=Wang
      1. GET [base]/Patient?name=Wang


1. **SHOULD** support searching using the combination of the **[`gender`](https://hl7.org/fhir/R4/patient.html#search)** and **[`name`](https://hl7.org/fhir/R4/patient.html#search)** search parameters:
    
    `GET [base]/Patient?gender={system|}[code]&name=[string]`

    Example:
    
      1. GET [base]/Patient?name=Wang&amp;gender=female

    *Implementation Notes:* Fetches a bundle of all Patient resources matching the specified gender and name ([how to search by string](http://hl7.org/fhir/R4/search.html#string) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))



1. **SHOULD** support searching using the combination of the **[`birthdate`](https://hl7.org/fhir/R4/patient.html#search)** and **[`family`](https://hl7.org/fhir/R4/patient.html#search)** search parameters:
    - **SHOULD** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`), and if *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* is supported, <strong>SHALL</strong> support the search comparators `gt,lt,ge,le`

    
    `GET [base]/Patient?birthdate=[date]&family=[string]`

    Example:
    
      1. GET [base]/Patient?family=Wang&amp;birthdate=2007-03-20

    *Implementation Notes:* Fetches a bundle of all Patient resources matching the specified birthdate and family ([how to search by date](http://hl7.org/fhir/R4/search.html#date) and [how to search by string](http://hl7.org/fhir/R4/search.html#string))

1. **SHOULD** support searching using the combination of the **[`birthdate`](https://hl7.org/fhir/R4/patient.html#search)** and **[`name`](https://hl7.org/fhir/R4/patient.html#search)** search parameters:
    - **SHOULD** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`) and if *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd), and if *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* is supported, <strong>SHALL</strong> support the search comparators `gt,lt,ge,le`
    
    
    `GET [base]/Patient?birthdate=[date]&name=[string]`

    Example:
    
      1. GET [base]/Patient?name=Wang&amp;birthdate=2007-03-20gt

    *Implementation Notes:* Fetches a bundle of all Patient resources matching the name and a birthdate greater than that specified ([how to search by date](http://hl7.org/fhir/R4/search.html#date) and [how to search by string](http://hl7.org/fhir/R4/search.html#string))

1. **SHOULD** support searching using the combination of the **[`family`](https://hl7.org/fhir/R4/patient.html#search)** and **[`gender`](https://hl7.org/fhir/R4/patient.html#search)** search parameters:
    
    `GET [base]/Patient?family=[string]&gender={system|}[code]`

    Example:
    
      1. GET [base]/Patient?family=Wang&amp;gender=female

    *Implementation Notes:* Fetches a bundle of all Patient resources matching the specified family and gender ([how to search by string](http://hl7.org/fhir/R4/search.html#string) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))
