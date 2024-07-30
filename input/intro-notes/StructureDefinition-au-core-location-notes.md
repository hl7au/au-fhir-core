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
        <td>address</td>
        <td><b>SHALL</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>name</td>
        <td><b>SHALL</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>address-city</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>address-state</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>address-postalcode</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
        <td></td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters **SHALL** be supported:

1. **SHALL** support searching based on text address using the **[`address`](https://hl7.org/fhir/R4/location.html#search)** search parameter:
    
    `GET [base]/Location?address=[string]`

    Example:
    
      1. GET [base]/Location?address=QLD
      1. GET [base]/Location?address=QLD

    *Implementation Notes:* Fetches a bundle of all Location resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

1. **SHALL** support searching based on text name using the **[`name`](https://hl7.org/fhir/R4/location.html#search)** search parameter:
    
    `GET [base]/Location?name=[string]`

    Example:
    
      1. GET [base]/Location?name=Hospital

    *Implementation Notes:* Fetches a bundle of all Location resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))


#### Optional Search Parameters:

The following search parameters **SHOULD** be supported:

1. **SHOULD** support searching using the **[`address-city`](https://hl7.org/fhir/R4/location.html#search)** search parameter:
    
    `GET [base]/Location?address-city=[string]`

    Example:
    
      1. GET [base]/Location?address-city=Westmead

    *Implementation Notes:* Fetches a bundle of all Location resources for the city ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

1. **SHOULD** support searching using the **[`addresss-postalcode`](https://hl7.org/fhir/R4/location.html#search)** search parameter:
    
    `GET [base]/Location?addresss-postalcode=[string]`

    Example:
    
      1. GET [base]/Location?addresss-postalcode=3005

    *Implementation Notes:* Fetches a bundle of all Location resources matching the post code ([how to search by string](http://hl7.org/fhir/R4/search.html#string))

1. **SHOULD** support searching using the **[`address-state`](https://hl7.org/fhir/R4/location.html#search)** search parameter:
    
    `GET [base]/Location?address-state=[string]`

    Example:
    
      1. GET [base]/Location?address-state=TAS

    *Implementation Notes:* Fetches a bundle of all Location resources matching the state ([how to search by string](http://hl7.org/fhir/R4/search.html#string))