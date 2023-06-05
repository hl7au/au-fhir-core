{% include search_parameters_intro.md -%}
<table class="list" width="100%">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance</th>
    <th>Type(s)</th>
    <th>Requirements (when used alone or in combination)</th>
  </tr>
  <tr>
        <td>name</td>
        <td><b>SHALL</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>service-category</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>SHOULD</b> provide both the system and code values. The server <b>SHALL</b> support both. The client <b>SHOULD</b> support search using HPI-O identifier as defined in the profile. The server <b>SHOULD</b> support search using the using HPI-O identifier as defined in the profile.</td>
  </tr>
  <tr>
        <td>location</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code></td>
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>organization</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code></td>
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>specialty</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>service-type</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for a healthcare service based on text name using the **[`name`](https://hl7.org/fhir/R4/organization.html#search)** search parameter:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/HealthcareService?name=[string]`

    Example:
    
      1. GET [base]/HealthcareService?name=Hospital

    *Implementation Notes:* Fetches a bundle of all HealthcareService resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using a healthcare service using the **[`service-category`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/HealthcareService?service-category={system|}[code]`

    Example:
    
      1. GET [base]/HealthcareService?service-category=http://snomed.info/sct\|708175003

    *Implementation Notes:* Fetches a bundle of all HealthcareService resources for the specified service category ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching a healthcare service by an identifier using the **[`identifier`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/HealthcareService?identifier={system|}[code]`

    Example:
    
      1. GET [base]/HealthcareService?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455
      1. GET [base]/HealthcareService?identifier=http://ns.electronichealth.net.au/id/residential-aged-care-service-id\|0009

    *Implementation Notes:* Fetches a bundle containing any Practitioner resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **following** support searching using the **[`location`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/HealthcareService?location={Type/}[id]`

    Example:
    
      1. GET [base]/HealthcareService?location=Location/Hospital

    *Implementation Notes:* Fetches a bundle of all HealthcareService resources matching the specified location ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)

1. **following** support searching using the **[`organization`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/HealthcareService?organization={Type/}[id]`

    Example:
    
      1. GET [base]/HealthcareService?organization=Organization/Hospital

    *Implementation Notes:* Fetches a bundle of all HealthcareService resources matching the specified organisation ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)

1. **SHOULD** support searching using a healthcare service using the **[`specialty`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/HealthcareService?specialty={system|}[code]`

    Example:
    
      1. GET [base]/HealthcareService?specialty=http://snomed.info/sct\|394579002
      1. GET [base]/HealthcareService?specialty=http://snomed.info/sct\|394579002&amp;_revinclude=Provenance:target

    *Implementation Notes:* Fetches a bundle of all HealthcareService resources for the specified specialty ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using a healthcare service using the **[`service-type`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameters:
    - **SHOULD** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`
    
    `GET [base]/HealthcareService?service-type={system|}[code]`

    Example:
    
      1. GET [base]/HealthcareService?service-type=http://snomed.info/sct\|708172000

    *Implementation Notes:* Fetches a bundle of all HealthcareService resources for the specified type ([how to search by token](http://hl7.org/fhir/R4/search.html#token))
