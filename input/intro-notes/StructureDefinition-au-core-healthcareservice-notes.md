{%   include search_parameters_intro.md -%}

<table class="list">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance </th>
    <th>Type(s)</th>
    <th>Requirements (when used alone or in combination)</th>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both.<br/><br/></td>
  </tr>
  <tr>
        <td>name</td>
        <td><b>SHALL</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>_id</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>service-type</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr><tr>
        <td>specialty</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>  
  <tr>
        <td>organization</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code></td>
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.<br/><br/>The requester <b>SHOULD</b> support chained search organization.identifier using HPI-O identifier as defined in the AU Core Organisation profile. The responder <b>SHOULD</b> support chained search organization.identifier using HPI-O identifier as defined in the AU Core Organisation profile.<br/><br/>The requester <b>MAY</b> support chained search organization.name. The responder <b>MAY</b> support chained search organization.name.</td>
  </tr>
  <tr>
        <td>location</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code></td>
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.<br/><br/>The requester <b>MAY</b> support chained search location.name. The responder <b>MAY</b> support chained search location.name.<br/><br/>The requester <b>MAY</b> support chained search location.address. The responder <b>MAY</b> support chained search location.address.</td>
  </tr>
 </tbody>
</table>

#### Mandatory Search Parameters

The following search parameters **SHALL** be supported:

1. **SHALL** support searching using the **[`identifier`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:

    `GET [base]/HealthcareService?identifier=[system|][code]`

    Example:
    
      1. GET [base]/HealthcareService?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the **[`name`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:

    `GET [base]/HealthcareService?name=[string]`

    Example:

    1. GET [base]/HealthcareService?name=Albion%20Hospital%20Radiology%20Service

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

#### Optional Search Parameters:

The following search parameters **SHOULD** be supported:

1. **SHOULD** support searching using the **[`_id`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:
 
    `GET [base]/HealthcareService?_id=[id]`

    Example:
    
      1. GET [base]/HealthcareService?_id=214466

    *Implementation Notes:* Fetches a bundle with the requested HealthcareService, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **SHOULD** support searching using the **[`organization`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:
    - **SHOULD** support chained searching of organisation canonical identifier `organization.identifier` (e.g. `organization.identifier=[system|][code]`)
    - **MAY** support chained searching of organisation name `organization.name` (e.g. `organization.name=[string]`)

    `GET [base]/HealthcareService?organization.identifier=[system|][code]`

    `GET [base]/HealthcareService?organization.name=[string]`

    Example:

    1. GET [base]/HealthcareService?organization.identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003626566706976
    1. GET [base]/HealthcareService?organization.name=murrabit%20public%20hospital
    
    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the specified organisation ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))

1. **SHOULD** support searching using the **[`service-type`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:

    `GET [base]/HealthcareService?service-type={system|}[code]`

    Example:

    1. GET [base]/HealthcareService?service-type=http://snomed.info/sct\|1223451000168109

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the specified healthcare service type ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the **[`specialty`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:

    `GET [base]/HealthcareService?specialty={system|}[code]`

    Example:

    1. GET [base]/HealthcareService?specialty=http://snomed.info/sct\|394591006

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the specified specialty ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the **[`location`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:
    - **MAY** support chained searching by location name (e.g. `location.name=[string]`)
    - **MAY** support chained searching by location address parts (e.g. `location.address-state=[string]`)

    `GET [base]/HealthcareService?location.name=[string]`

    `GET [base]/HealthcareService?location.address-state=[string]`

    `GET [base]/HealthcareService?location={Type/}[id]`

    Example: 

    1. GET [base]/HealthcareService?location.name=albion%20hospital
    1. GET [base]/HealthcareService?location.address-postalcode=4868
    1. GET [base]/HealthcareService?location=Location/45688

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the specified location ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference))
