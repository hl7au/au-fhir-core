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
        <td>patient</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+clinical-status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both. <br/><br/> The requester <b>SHOULD</b> support search using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile. The responder <b>SHOULD</b> support search using the using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
  </tr>
  <tr>
        <td>clinical-status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/allergyintolerance.html#search)** search parameter:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)


    `GET [base]/AllergyIntolerance?patient={Type/}[id]` or optionally `GET [base]/AllergyIntolerance?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/AllergyIntolerance?patient=5678
      1. GET [base]/AllergyIntolerance?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/AllergyIntolerance?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all AllergyIntolerance resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/allergyintolerance.html#search)** and **[`clinical-status`](https://hl7.org/fhir/R4/allergyintolerance.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)


    `GET [base]/AllergyIntolerance?patient={Type/}[id]&clinical-status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/AllergyIntolerance?patient=5678&amp;clinical-status=http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical|active

    *Implementation Notes:* Fetches a bundle of all AllergyIntolerance resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))