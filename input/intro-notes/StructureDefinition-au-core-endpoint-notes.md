{% include search_parameters_intro.md -%}

<table class="list">
  <thead>
    <tr>
      <th>Parameter(s)</th>
      <th>Conformance</th>
      <th>Type(s)</th>
      <th>Requirements (when used alone or in combination)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
          <td>_id</td>
          <td><b>SHOULD</b></td>
          <td><code>token</code></td>
          <td></td>
    </tr>
    <tr>
          <td>connection-type</td>
          <td><b>MAY</b></td>
          <td><code>token</code></td>
          <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
    </tr>
    <tr>
          <td>name</td>
          <td><b>MAY</b></td>
          <td><code>string</code></td>
          <td></td>
    </tr>
    <tr>
          <td>payload-type</td>
          <td><b>MAY</b></td>
          <td><code>token</code></td>
          <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
    </tr>
    <tr>
          <td>status</td>
          <td><b>MAY</b></td>
          <td><code>token</code></td>
          <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
    </tr>
  </tbody>
</table>


#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the **[`_id`](https://hl7.org/fhir/R4/endpoint.html#search)** search parameter:
 
    `GET [base]/Endpoint?_id=[id]`

    Example:
    
      1. GET [base]/Endpoint?_id=2234547

    *Implementation Notes:* Fetches a bundle with the requested Endpoint, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))