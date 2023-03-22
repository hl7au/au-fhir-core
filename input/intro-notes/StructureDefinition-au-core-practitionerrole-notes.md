Below is an overview of the mandatory and optional search parameters and combined search parameters. FHIR search operations and the syntax used to describe the interactions is described <a href="http://hl7.org/fhir/R4/search.html">here</a>.

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
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
   <tr>
        <td>practitioner</td>
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
        <td>specialty</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>organization</td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters **SHALL** be supported:

1. **SHALL** support searching a practitioner role by an identifier using the **[`identifier`](https://hl7.org/fhir/R4/practitioner.html.html#search)** search parameter:

    `GET [base]/PractitionerRole?identifier={system|}[code]`

    Example:
    
      1. GET [base]/PractitionerRole?identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0\|8003619900015717
      1. GET [base]/PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-prescriber-number\|553255

    *Implementation Notes:* Fetches a bundle containing any Practitioner resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the **[`practitioner`](https://hl7.org/fhir/R4/practitionerrole.html.html#search)** search parameters:

    `GET [base]/PractitionerRole?practitioner={Type/}[id]`

    Example:
    
      1. GET [base]/PractitionerRole?practitioner=Practitioner/sandyson-sandy

    *Implementation Notes:* Fetches a bundle of all PractitionerRole resources matching the specified practitioner ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support fetching a PractitionerRole using the **[`_id`](https://hl7.org/fhir/R4/practitioner.html.html#search)** search parameter:

    `GET [base]/PractitionerRole/[id]` or `GET [base]/PractitionerRole?_id=[id]`

    Example:
    
      1. GET [base]/PractitionerRole/5678
      1. GET [base]/PractitionerRole?_id=5678

    *Implementation Notes:* Returns a single PractitionerRole resource. ([how to search by the logical id](http://hl7.org/fhir/R4/references.html#logical) of the resource)

1. **SHOULD** support searching using the **[`specialty`](https://hl7.org/fhir/R4/encounter.html.html#search)** search parameter:

    `GET [base]/PractitionerRole?specialty={system|}[code]`

    Example:
    
      1. GET [base]/PractitionerRole?specialty=http://snomed.info/sct\|62247001

    *Implementation Notes:* Fetches a bundle of all PractitionerRole resources for the specified specialty ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

