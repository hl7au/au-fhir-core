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
        <td>patient+status</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
         <td></td>
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

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/medicationdispense.html#search)** search parameter:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `MedicationDispense:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

 
    `GET [base]/MedicationDispense?patient={Type/}[id]` or optionally `GET [base]/MedicationDispense?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/MedicationDispense?patient=5678
      1. GET [base]/MedicationDispense?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/MedicationDispense?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952&amp;_include=MedicationDispense:medication
      1. GET [base]/MedicationDispense?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all MedicationDispense resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/medicationdispense.html#search)** and **[`status`](https://hl7.org/fhir/R4/medicationdispense.html#search)** search parameters:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `MedicationDispense:medication`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g. `status={system|}[code],{system|}[code],...`)


    `GET [base]/MedicationDispense?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/MedicationDispense?patient=5678&amp;status=completed
      1. GET [base]/MedicationDispense?patient=5678&amp;status=completed&amp;_include=MedicationDispense:medication

    *Implementation Notes:* Fetches a bundle of all MedicationDispense resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))
