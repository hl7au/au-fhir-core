Below is an overview of the mandatory and optional search parameters. FHIR search operations and the syntax used to describe the interactions is described <a href="http://hl7.org/fhir/R4/search.html">here</a>.

<table class="list">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance</th>
  </tr>
  <tr>
        <td>patient</td>
        <td>SHALL</td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td>SHOULD</td>
  </tr>
   <tr>
        <td>identifier</td>
        <td>MAY</td>
  </tr>
  <tr>
        <td>class</td>
        <td>MAY</td>
  </tr>
  <tr>
        <td>type</td>
        <td>MAY</td>
  </tr>
  <tr>
        <td>date</td>
        <td>MAY</td>
  </tr>
  <tr>
        <td>status</td>
        <td>MAY</td>
  </tr>
  <tr>
        <td>location</td>
        <td>MAY</td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td>SHOULD</td>
  </tr>
  <tr>
        <td>patient+class</td>
        <td>SHOULD</td>
  </tr>
  <tr>
        <td>patient+type</td>
        <td>SHOULD</td>
  </tr>
  <tr>
        <td>patient+date</td>
        <td>SHALL</td>
  </tr>
  <tr>
        <td>patient+discharge-disposition</td>
        <td>SHOULD</td>
  </tr>
  <tr>
        <td>patient+location</td>
        <td>SHOULD</td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:
