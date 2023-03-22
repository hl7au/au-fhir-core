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
        <td>patient</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>patient+date</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+class</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
         <td></td>
  </tr>
  <tr>
        <td>patient+discharge-disposition</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
         <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>.<code>token</code></td>
         <td>The client <b>SHALL</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
   <tr>
        <td>patient+location</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>reference</code></td>
         <td></td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
         <td></td>
  </tr>
  <tr>
        <td>patient+type</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
         <td></td>
  </tr>
  <tr>
        <td>class</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>date</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A client <b>SHALL</b> provide a value precise to the second + time offset. A server <b>SHALL</b> support a value precise to the second + time offset.</td>
  </tr>
  <tr>
        <td>discharge-disposition</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>location</td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
        <td>The client <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
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


#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/encounter.html.html#search)** search parameter:
    - **SHOULD** support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`)

    `GET [base]/Encounter?patient={Type/}[id]`
    **SHOULD** support for `GET [base]/Encounter?patient.identifier={system|}[value]`

    Example:
    
      1. GET [base]/Encounter?patient=5678
      1. GET [base]/Encounter?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Encounter?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all Encounter resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/encounter.html.html#search)** and **[`date`](https://hl7.org/fhir/R4/encounter.html.html#search)** search parameters:
    - including support for these `date` comparators: `gt,lt,ge,le`
    - including optional support for *AND* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/Encounter?patient={Type/}[id]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Encounter?patient=5678&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Encounter resources for the specified patient and date ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))


#### Optional Search Parameters:

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/encounter.html.html#search)** and **[`class`](https://hl7.org/fhir/R4/encounter.html.html#search)** search parameters:

    `GET [base]/Encounter?patient={Type/}[id]&class={system|}[code]`

    Example:
    
      1. GET [base]/Encounter?patient=5678&amp;class=http://terminology.hl7.org/CodeSystem/v3-ActCode\|AMB

    *Implementation Notes:* Fetches a bundle of all Encounter resources for the specified patient and class ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/encounter.html.html#search)** and **[`discharge-disposition`](https://hl7.org/fhir/R4/encounter.html.html#search)** search parameters:

    `GET [base]/Encounter?patient={Type/}[id]&discharge-disposition={system|}[code]`

    Example:
    
      1. GET [base]/Encounter?patient=5678&amp;discharge-disposition=9

    *Implementation Notes:* Fetches a bundle of all Encounter resources for the specified patient and discharge disposition ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/encounter.html.html#search)** and **[`location`](https://hl7.org/fhir/R4/encounter.html.html#search)** search parameters:
    - including optional support for *OR* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)

    `GET [base]/Encounter?patient={Type/}[id]&location={Type/}[id]`

    Example:
    
      1. GET [base]/Encounter?patient=5678&amp;location=Location/vic-hospital

    *Implementation Notes:* Fetches a bundle of all Encounter resources matching the specified patient and location ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)

