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
        <td>identifier</td>
        <td><b>SHALL</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>SHOULD</b> provide both the system and code values. The server <b>SHALL</b> support both. <br/><br/> The client <b>SHOULD</b> support search using a HPI-I identifier as defined in the profile. The server <b>SHOULD</b> support search using the using a HPI-I identifier as defined in the profile.</td>
  </tr>
  <tr>
        <td>_id</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
  </tr>
  <tr>
        <td>name</td>
        <td><b>SHOULD</b></td>
        <td><code>string</code></td>
  </tr>
 </tbody>
</table>

<p class="request-for-feedback">Specific feedback is sought on the proposal to remove the mandatory requirement to support _revinclude of Provenance.<br/>Please comment on <a href="https://jira.hl7.org/browse/FHIR-43850">Jira issue #FHIR-43850</a>.</p>

#### Mandatory Search Parameters

The following search parameters **SHALL** be supported:

1. **SHALL** support searching a practitioner by an identifier using the **[`identifier`](https://hl7.org/fhir/R4/practitioner.html#search)** search parameter:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`

    `GET [base]/Practitioner?identifier={system|}[code]`

    Example:
    
      1. GET [base]/Practitioner?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0\|8003619900015717
      1. GET [base]/Practitioner?identifier=http://ns.electronichealth.net.au/id/medicare-prescriber-number\|553255

    *Implementation Notes:* Fetches a bundle containing any Practitioner resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Optional Search Parameters:

The following search parameters **SHOULD** be supported:

1. **SHOULD** support fetching a Practitioner using the **[`_id`](https://hl7.org/fhir/R4/practitioner.html#search)** search parameter:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`

    `GET [base]/Practitioner/[id]` or `GET [base]/Practitioner?_id=[id]`

    Example:
    
      1. GET [base]/Practitioner/5678
      1. GET [base]/Practitioner?_id=5678

    *Implementation Notes:* Returns a single Practitioner resource ([how to search by the logical id](http://hl7.org/fhir/R4/references.html#logical) of the resource)

1. **SHOULD** support searching for a practitioner based on text name using the **[`name`](https://hl7.org/fhir/R4/practitioner.html#search)** search parameter:
    - **SHALL** support these **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** parameters: `Provenance:target`

    `GET [base]/Practitioner?name=[string]`

    Example:
    
      1. GET [base]/Practitioner?name=Sandyson
      1. GET [base]/Practitioner?name=Sandyson&amp;_revinclude=Provenance:target

    *Implementation Notes:* Fetches a bundle of all Practitioner resources matching the name ([how to search by string](http://hl7.org/fhir/R4/search.html#string))