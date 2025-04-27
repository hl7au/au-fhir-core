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
        <td>identifier</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both. <br/><br/> The requester <b>SHOULD</b> support search using HPI-O and ABN identifiers as defined in the profile. The responder <b>SHOULD</b> support search using the using HPI-O and ABN identifiers as defined in the profile.</td>
  </tr>
    <tr>
        <td>name</td>
        <td><b>SHALL</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>address</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>_id</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td></td>
  </tr>
 </tbody>
</table>

#### Mandatory Search Parameters

The following search parameters **SHALL** be supported:

1. **SHALL** support searching using the **[`identifier`](https://hl7.org/fhir/R4/organization.html#search)** search parameter:
    
    `GET [base]/Organization?identifier=[system|][code]`

    Example:
    
      1. GET [base]/Organization?identifier=http://ns.electronichealth.net.au/id/hi/hpio/1.0\|8003626566707032
      1. GET [base]/Organization?identifier=http://hl7.org.au/id/abn\|23964200000

    *Implementation Notes:* Fetches a bundle containing all Organization resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching based on text name using the **[`name`](https://hl7.org/fhir/R4/organization.html#search)** search parameter:
    
    `GET [base]/Organization?name=[string]`

    Example:
    
      1. GET [base]/Organization?name=Hospital

    *Implementation Notes:* Fetches a bundle of all Organization resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

#### Optional Search Parameters:

The following search parameters **SHOULD** be supported:

1. **SHOULD** support searching based on text address using the **[`address`](https://hl7.org/fhir/R4/organization.html#search)** search parameter:
    
    `GET [base]/Organization?address=[string]`

    Example:
    
      1. GET [base]/Organization?address=QLD

    *Implementation Notes:* Fetches a bundle of all Organization resources matching the address ([how to search by string](http://hl7.org/fhir/R4/search.html#string))
    
1. **SHOULD** support searching using the **[`_id`](https://hl7.org/fhir/R4/organization.html#search)** search parameter:
    
    `GET [base]/Organization?_id=[id]`

    Example:
    
      1. GET [base]/Organization?_id=5678

    *Implementation Notes:* Fetches a bundle with the requested Organization, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

