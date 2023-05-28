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
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both</td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>patient+date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>date</code></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>date</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A client <b>SHALL</b> provide a value precise to the second + time offset. A server <b>SHALL</b> support a value precise to the second + time offset.</td>
  </tr>
  <tr>
        <td>patient+vaccine-code</td>
        <td><b>MAY</b></td>
        <td><code>reference</code>+<code>token</code></td>
  </tr>
   <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>vaccine-code</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/immunization.html#search)** search parameter:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Immunization?patient={Type/}[id]` or optionally`GET [base]/Immunization?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Immunization?patient=5678
      1. GET [base]/Immunization?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Immunization?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all Immunization resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/immunization.html#search)** and **[`status`](https://hl7.org/fhir/R4/immunization.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)

    `GET [base]/Immunization?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Immunization?patient=5678&amp;status=not-done

    *Implementation Notes:* Fetches a bundle of all Immunization resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))



#### Optional Search Parameters:

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/immunization.html#search)** and **[`date`](https://hl7.org/fhir/R4/immunization.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/Immunization?patient={Type/}[id]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Immunization?patient=5678&amp;date=ge2020-01-01T00:00:00Z
      1. GET [base]/Immunization?patient.identifier=http://example.org/fhir/mrn\|12345&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Immunization resources for the specified patient and date. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/immunization.html#search)** and **[`vaccine-code`](https://hl7.org/fhir/R4/immunization.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `vaccine-code` (e.g.`code={system|}[code],{system|}[code],...`)

    `GET [base]/Immunization?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Immunization?patient=5678&amp;vaccine-code=https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats\|COMIRN,http://snomed.info/sct\|1525011000168107
      1. GET [base]/Immunization?patient.identifier=http://example.org/fhir/mrn\|12345&amp;vaccine-code=https://www.humanservices.gov.au/organisations/health-professionals/enablers/air-vaccine-code-formats\|COMIRN,http://snomed.info/sct\|1525011000168107

    *Implementation Notes:* Fetches a bundle of all Immunization resources for the specified patient and immunization code(s).  **SHOULD** support search by multiple codes. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))