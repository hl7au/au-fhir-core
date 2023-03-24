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
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>_id</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>name</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+relationship</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/procedure.html.html#search)** search parameter:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)

    `GET [base]/RelatedPerson?patient={Type/}[id]`
    **SHOULD** support for `GET [base]/RelatedPerson?patient.identifier={system|}[value]`

    Example:
    
      1. GET [base]/RelatedPerson?patient=5678
      1. GET [base]/RelatedPerson?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/RelatedPerson?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all RelatedPerson resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support fetching a RelatedPerson using the **[`_id`](https://hl7.org/fhir/R4/relatedperson.html.html#search)** search parameter:

    `GET [base]/RelatedPerson/[id]` or `GET [base]/RelatedPerson?_id=[id]`

    Example:
    
      1. GET [base]/RelatedPerson/2169591
      1. GET [base]/RelatedPerson?_id=2169591

    *Implementation Notes:* Fetches a single RelatedPerson. ([how to search by the logical id](http://hl7.org/fhir/R4/references.html#logical) of the resource)

1. **SHOULD** support searching for a related person by an identifier using the **[`identifier`](https://hl7.org/fhir/R4/relatedperson.html.html#search)** search parameter:

    `GET [base]/RelatedPerson?identifier={system|}[code]`

    Example:
    
      1. GET [base]/RelatedPerson?identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/RelatedPerson?identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361
      1. GET [base]/RelatedPerson?identifier=http://example.org/fhir/mrn\|12345

    *Implementation Notes:* Fetches a bundle containing any RelatedPerson resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching for a related person based on text name using the **[`name`](https://hl7.org/fhir/R4/relatedperson.html.html#search)** search parameter:

    `GET [base]/RelatedPerson?name=[string]`

    Example:
    
      1. GET [base]/RelatedPerson?name=Wang

    *Implementation Notes:* Fetches a bundle of all RelatedPerson resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/observation.html#search)** and **[`relationship`](https://hl7.org/fhir/R4/observation.html#search)** search parameters:
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `relationship` (e.g.`relationship={system|}[code],{system|}[code],...`)

    `GET [base]/RelatedPerson?patient={Type/}[id]&relationship={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/RelatedPerson?patient=5678&amp;relationship=http://terminology.hl7.org/CodeSystem/v3-RoleCode\|MTH,http://snomed.info/sct\|133932002

    *Implementation Notes:* Fetches a bundle of all RelatedPerson resources for the specified patient and relationship code(s).  **SHOULD** support search by multiple codes. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))