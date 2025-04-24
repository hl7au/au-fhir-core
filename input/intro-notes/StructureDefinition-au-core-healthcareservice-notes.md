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
        <td>name</td>
        <td><b>SHALL</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both.<br/><br/></td>
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
  </tr>
 </tbody>
</table>

#### Mandatory Search Parameters

The following search parameters **SHALL** be supported:

1. **SHALL** support searching using the **[`name`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:

    `GET [base]/HealthcareService?name=[string]`

    Example:

    1. GET [base]/HealthcareService?name=Albion%20Hospital%20Radiology%20Service

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

#### Optional Search Parameters:

The following search parameters **SHOULD** be supported:

1. **SHOULD** support searching using the **[`identifier`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:

    `GET [base]/HealthcareService?identifier=[system|][code]`

    Example:
    
      1. GET [base]/HealthcareService?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003621566684455

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the **[`_id`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:
 
    `GET [base]/HealthcareService?_id=[id]`

    Example:
    
      1. GET [base]/HealthcareService?_id=214466

    *Implementation Notes:* Fetches a bundle with the requested HealthcareService, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **SHOULD** support searching using the **[`service-type`](https://hl7.org/fhir/R4/healthcareservice.html#search)** search parameter:

    `GET [base]/HealthcareService?service-type={system|}[code]`

    Example:

    1. GET [base]/HealthcareService?service-type=http://snomed.info/sct\|1223451000168109

    *Implementation Notes:* Fetches a bundle containing any HealthcareService resources matching the specified healthcare service type ([how to search by token](http://hl7.org/fhir/R4/search.html#token))
