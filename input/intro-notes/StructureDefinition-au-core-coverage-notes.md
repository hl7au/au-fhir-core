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
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+type</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>type</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>



#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/coverage.html.html#search)** search parameter:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)

    `GET [base]/Coverage?patient={Type/}[id]`
    **SHOULD** support for `GET [base]/Coverage?patient.identifier={system|}[value]`

    Example:
    
      1. GET [base]/Coverage?patient=5678
      1. GET [base]/Coverage?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Coverage?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all Coverage resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/coverage.html.html#search)** and **[`status`](https://hl7.org/fhir/R4/coverage.html.html#search)** search parameters:

    `GET [base]/Coverage?patient={Type/}[id]&status={system|}[code]`

    Example:
    
      1. GET [base]/Coverage?patient=5678&amp;status=final

    *Implementation Notes:* Fetches a bundle of all Coverage resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))


#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the **[`identifier`](https://hl7.org/fhir/R4/coverage.html.html#search)** search parameter:

     `GET [base]/Coverage?identifier={system|}[code]`

    Example:
    
      1. GET [base]/Coverage?identifier=http://aaaaaia.example.com/member/memberid\|9999115
      1. GET [base]/Coverage?identifier=http://ns.electronichealth.net.au/id/dva\|NBUR9080

      *Implementation Notes:* Fetches a bundle containing any Coverage resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/coverage.html.html#search)** and **[`type`](https://hl7.org/fhir/R4/coverage.html.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `type` (e.g.`type={system|}[code],{system|}[code],...`)

    `GET [base]/Coverage?patient={Type/}[id]&type={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Coverage?patient=5678&amp;type=pay,PUBLICPOL,VET

    *Implementation Notes:* Fetches a bundle of all Coverage resources for the specified patient and coverage type code(s).  **SHOULD** support search by multiple codes. The Coverage `type` parameter searches `Coverage.code only. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))