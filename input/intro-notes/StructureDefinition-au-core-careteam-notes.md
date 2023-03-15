Below is an overview of the mandatory and optional search parameters and combined search parameters. FHIR search operations and the syntax used to describe the interactions is described <a href="http://hl7.org/fhir/R4/search.html">here</a>.

<table class="list">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance</th>
    <th>Type(s)</th>
  </tr>
  <tr>
        <td>patient</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
  </tr>
  <tr>
        <td>patient+role</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>role</td>
        <td>MAY</td>
        <td><code>token</code></td>
  </tr>
  <tr>
        <td>status</td>
        <td>MAY</td>
        <td><code>token</code></td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:
