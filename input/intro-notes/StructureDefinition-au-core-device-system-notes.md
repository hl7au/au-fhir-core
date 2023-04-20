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
        <td>type</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

No mandatory search parameters for this profile.

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support fetching a Device using the **[`_id`](https://hl7.org/fhir/R4/device.html#search)** search parameter:

    `GET [base]/Device/[id]` or `GET [base]/Device?_id=[id]`

    Example:
    
      1. GET [base]/Device/2169591
      1. GET [base]/Device?_id=2169591

    *Implementation Notes:* Fetches a single Device. ([how to search by the logical id](http://hl7.org/fhir/R4/references.html#logical) of the resource)

1. **SHOULD** support searching for a device by an identifier using the **[`identifier`](https://hl7.org/fhir/R4/device.html#search)** search parameter:

    `GET [base]/Device?identifier={system|}[code]`

    Example:
    
      1. GET [base]/Device?identifier=http://ns.electronichealth.net.au/id/pcehr/paid/1.0\|8003640003000026

    *Implementation Notes:* Fetches a bundle containing any Device resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))
