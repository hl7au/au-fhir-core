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
        <td>patient+intent</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
         <td></td>
  </tr>
  <tr>
        <td>patient+intent+status</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code>+<code>token</code></td>
         <td></td>
  </tr>
 <tr>
        <td>_id</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both.<br/><br/>The requester <b>SHOULD</b> support search using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile. The responder <b>SHOULD</b> support search using the using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
  </tr>
   <tr>
        <td>patient+intent+authoredon</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
         <td></td>
  </tr>
  <tr>
        <td>authoredon</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A requester <b>SHALL</b> provide a value precise to the second + time offset. A responder <b>SHALL</b> support a value precise to the second + time offset.<br/><br/>The requester <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.<br/><br/>The requester <strong>SHOULD</strong> support <code>multipleAnd</code>. The responder <strong>SHOULD</strong> support <code>multipleAnd</code>.</td>
  </tr>
  <tr>
        <td>intent</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.<br/><br/>The requester <strong>SHALL</strong> support <code>multipleOr</code>. The responder <strong>SHALL</strong> support <code>multipleOr</code>.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/medicationrequest.html#search)** search parameter:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `MedicationRequest:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

 
    `GET [base]/MedicationRequest?patient={Type/}[id]` or optionally `GET [base]/MedicationRequest?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/MedicationRequest?patient=5678
      1. GET [base]/MedicationRequest?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/MedicationRequest?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;_include=MedicationRequest:medication
      1. GET [base]/MedicationRequest?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all MedicationRequest resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/medicationrequest.html#search)** and **[`intent`](https://hl7.org/fhir/R4/medicationrequest.html#search)** search parameters:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `MedicationRequest:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)


    `GET [base]/MedicationRequest?patient={Type/}[id]&intent={system|}[code]`

    Example:
    
      1. GET [base]/MedicationRequest?patient=5678&amp;intent=order

    *Implementation Notes:* Fetches a bundle of all MedicationRequest resources for the specified patient and intent ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/medicationrequest.html#search)** and **[`intent`](https://hl7.org/fhir/R4/medicationrequest.html#search)** and **[`status`](https://hl7.org/fhir/R4/medicationrequest.html#search)** search parameters:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `MedicationRequest:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)


    `GET [base]/MedicationRequest?patient={Type/}[id]&intent={system|}[code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/MedicationRequest?patient=5678&amp;intent=order&amp;status=active
      1. GET [base]/MedicationRequest?patient=5678&amp;intent=order&amp;status=active&amp;_include=MedicationRequest:medication

    *Implementation Notes:* Fetches a bundle of all MedicationRequest resources for the specified patient and intent and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))


#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the **[`_id`](https://hl7.org/fhir/R4/medicationrequest.html#search)** search parameter:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `MedicationRequest:medication`

 
    `GET [base]/MedicationRequest?_id=[id]`

    Example:
    
      1. GET [base]/MedicationRequest?_id=2169591
      1. GET [base]/MedicationRequest?_id=2169591&amp;_include=MedicationRequest:medication

    *Implementation Notes:* Fetches a bundle with the requested MedicationRequest, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/medicationrequest.html#search)** and **[`intent`](https://hl7.org/fhir/R4/medicationrequest.html#search)** and **[`authoredon`](https://hl7.org/fhir/R4/medicationrequest.html#search)** search parameters:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `MedicationRequest:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support these `authoredon` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `authoredon` (e.g.`authoredon=[date]&authoredon=[date]]&...`)


    `GET [base]/MedicationRequest?patient={Type/}[id]&intent={system|}[code]&authoredon={gt|lt|ge|le}[date]{&authoredon={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/MedicationRequest?patient=5678&amp;intent=order&amp;authoredon=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all MedicationRequest resources for the specified patient and intent and date ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))
