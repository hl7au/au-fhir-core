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
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both. <br/><br/>The requester <b>SHOULD</b> support search using a Medicare Provider Number identifier as defined in the profile. The responder <b>SHOULD</b> support search using a Medicare Provider Number identifier as defined in the profile.</td>
  </tr>
   <tr>
        <td>practitioner</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.The responder <b>SHALL</b> support both.<br/><br/>The requester <b>SHALL</b> provide at least a code value and <b>SHOULD</b> provide both the system and code values.<br/><br/>The requester <b>SHOULD</b> support chained search practitioner.identifier using a HPI-I identifier as defined in the AU Core Practitioner profile. The responder <b>SHOULD</b> support chained search practitioner.identifier using a HPI-I identifier as defined in the AU Core Practitioner profile.</td>
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
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>role</td>
        <td><b>SHOULD</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>organization</td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>

#### Mandatory Search Parameters

The following search parameters **SHALL** be supported:

1. **SHALL** support searching using the **[`identifier`](https://hl7.org/fhir/R4/practitionerrole.html#search)** search parameter:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `PractitionerRole:practitioner`

    `GET [base]/PractitionerRole?identifier={system|}[code]`

    Example:
    
      1. GET [base]/PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-prescriber-number\|553255&amp;_include=PractitionerRole:practitioner
      1. GET [base]/PractitionerRole?identifier=http://ns.electronichealth.net.au/id/medicare-prescriber-number\|553255

    *Implementation Notes:* Fetches a bundle containing any PractitionerRole resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the **[`practitioner`](https://hl7.org/fhir/R4/practitionerrole.html#search)** search parameters:
    - **SHOULD** support chained searching of practitioner canonical identifier `practitioner.identifier` (e.g. `practitioner.identifier=[system|][code]`)
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `PractitionerRole:practitioner`

    `GET [base]/PractitionerRole?practitioner={Type/}[id]` 
    or optionally `GET [base]/PractitionerRole?practitioner.identifier=[system|][code]`

    Example:
    
      1. GET [base]/PractitionerRole?practitioner=Practitioner/sandyson-sandy
      1. GET [base]/PractitionerRole?practitioner=Practitioner/sandyson-sandy&amp;_include=PractitionerRole:practitioner
      1. GET [base]/PractitionerRole?practitioner.identifier=http://ns.electronichealth.net.au/id/hi/hpii/1.0\|8003619900015717

    *Implementation Notes:* Fetches a bundle of all PractitionerRole resources matching the specified practitioner ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the **[`_id`](https://hl7.org/fhir/R4/practitionerrole.html#search)** search parameter:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `PractitionerRole:practitioner`

    `GET [base]/PractitionerRole?_id=[id]`

    Example:
    
      1. GET [base]/PractitionerRole/_id=5678
      1. GET [base]/PractitionerRole?_id=5678&amp;_include=PractitionerRole:practitioner

    *Implementation Notes:* Fetches a bundle with the requested PractitionerRole, instead of just the resource itself, and allows for the inclusion of additional search parameters such as _include, _revinclude, or _lastUpdated ([how to search by id of the resource](https://hl7.org/fhir/r4/search.html#id))

1. **SHOULD** support searching using the **[`specialty`](https://hl7.org/fhir/R4/practitionerrole.html#search)** search parameter:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `PractitionerRole:practitioner`

    `GET [base]/PractitionerRole?specialty={system|}[code]`

    Example:
    
      1. GET [base]/PractitionerRole?specialty=http://snomed.info/sct\|62247001
      1. GET [base]/PractitionerRole?specialty=http://snomed.info/sct\|62247001
      1. GET [base]/PractitionerRole?specialty=http://snomed.info/sct\|62247001&amp;_include=PractitionerRole:practitioner

    *Implementation Notes:* Fetches a bundle of all PractitionerRole resources for the specified specialty ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the **[`role`](https://hl7.org/fhir/R4/practitionerrole.html#search)** search parameter:
    - **SHOULD** support these **[`_include`](http://hl7.org/fhir/R4/search.html#include)** parameters: `PractitionerRole:practitioner`

    `GET [base]/PractitionerRole?role={system|}[code]`

    Example:
    
      1. GET [base]/PractitionerRole?role=http://snomed.info/sct\|304292004
      1. GET [base]/PractitionerRole?role=http://snomed.info/sct\|304292004&amp;_include=PractitionerRole:practitioner

    *Implementation Notes:* Fetches a bundle of all PractitionerRole resources for the specified role ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

