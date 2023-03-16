Below is an overview of the mandatory and optional search parameters. FHIR search operations and the syntax used to describe the interactions is described <a href="http://hl7.org/fhir/R4/search.html">here</a>.

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
        <td>patient+category</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+category+date</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
        <td></td>
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
        <td>patient+category+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+contenttype</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
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
        <td>patient+type+date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>category</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
  <tr>
        <td>contenttype</td>
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
  <tr>
        <td>date</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A client <b>SHALL</b> provide a value precise to the second + time offset. A server <b>SHALL</b> support a value precise to the second + time offset.</td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The client <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The server <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameter:
    - **SHOULD** support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`

    `GET [base]/DocumentReference?patient={Type/}[id]`
    **SHOULD** support for `GET [base]/DocumentReference?patient.identifier={system|}[value]`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/DocumentReference?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`category`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameters:

    `GET [base]/DocumentReference?patient={Type/}[id]&category={system|}[code]`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;category=http://loinc.org\|18761-7

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and a category code = `18761-7` ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`category`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`date`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameters:
    - including support for these `date` comparators: `gt,lt,ge,le`
    - including optional support for *AND* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/DocumentReference?patient={Type/}[id]&category={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;category=http://loinc.org\|18761-7&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and date and a category code = `18761-7` ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))


#### Optional Search Parameters:

The following search parameter combinations **SHOULD** be supported:

1. **SHOULD** support fetching a DocumentReference using the **[`_id`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameter:

    `GET [base]/DocumentReference/[id]` or `GET [base]/DocumentReference?_id=[id]`

    Example:
    
      1. GET [base]/DocumentReference/2169591
      1. GET [base]/DocumentReference?_id=2169591

    *Implementation Notes:* Fetches a single DocumentReference. The document itself is represented as a base64 encoded binary data element or retrieved using the link provided by the resource. If the document is a relative link to a [Binary] resource like a resource reference, it can be subsequently retrieved using: `GET [base]/Binary/[id]`. ([how to search by the logical id](http://hl7.org/fhir/R4/references.html#logical) of the resource)

1. **SHOULD** support searching using the **[`identifier`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameter:

     `GET [base]/DocumentReference?identifier={system|}[code]`

    Example:
    
      1. GET [base]/DocumentReference?identifier=http://hospital.example.org\|1032333

      *Implementation Notes:* Fetches a bundle containing any DocumentReference resources matching the identifier ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`category`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`status`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameters:
    - including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/DocumentReference?patient={Type/}[id]&category={system|}[code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;category=http://loinc.org\|18761-7&amp;status=final

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and category and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`code`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameters:
    - including optional support for *OR* search on `code` (e.g.`type={system|}[code],{system|}[code],...`)

    `GET [base]/DocumentReference?patient={Type/}[id]&type={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;type=http://loinc.org\|60591-5,http://loinc.org\|34133-9,http://loinc.org\|18842-5

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and diagnostic report code(s).  **SHOULD** support search by multiple codes. The DocumentReference `code` parameter searches `DocumentReference.code only. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`code`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`date`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameters:
    - including optional support for chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier={system|}[value]`
    - including optional support for *OR* search on `code` (e.g.`type={system|}[code],{system|}[code],...`)
    - including support for these `date` comparators: `gt,lt,ge,le`
    - including optional support for *AND* search on `date` (e.g.`date=[date]&date=[date]]&...`)

    `GET [base]/DocumentReference?patient={Type/}[id]&type={system|}[code]{,{system|}[code],...}&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;type=http://loinc.org\|60591-5,http://loinc.org\|34133-9,http://loinc.org\|18842-5&amp;date=ge2020-01-01T00:00:00Z
      1. GET [base]/DocumentReference?patient.identifier=http://example.org/fhir/mrn\|12345&amp;type=type=http://loinc.org\|60591-5,http://loinc.org\|34133-9,http://loinc.org\|18842-5&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and date and report code(s).  **SHOULD** support search by multiple codes. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`contenttype`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameters:
    - including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/DocumentReference?patient={Type/}[id]&contenttype={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;contenttype=application/dicom

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and contenttype ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/documentreference.html.html#search)** and **[`status`](https://hl7.org/fhir/R4/documentreference.html.html#search)** search parameters:
    - including support for *OR* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)

    `GET [base]/DocumentReference?patient={Type/}[id]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/DocumentReference?patient=5678&amp;status=final

    *Implementation Notes:* Fetches a bundle of all DocumentReference resources for the specified patient and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

