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
        <td>patient+date</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>date</code></td>
  </tr>
  <tr>
        <td>patient+class</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>patient+discharge-disposition</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>.<code>token</code></td>
  </tr>
   <tr>
        <td>patient+location</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>reference</code></td>
  </tr>
  <tr>
        <td>patient+status</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>patient+type</td>
        <td><b>SHOULD</b></td>
         <td><code>reference</code>+<code>token</code></td>
  </tr>
  <tr>
        <td>class</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
  </tr>
  <tr>
        <td>date</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
  </tr>
  <tr>
        <td>identifier</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
  </tr>
  <tr>
        <td>location</td>
        <td><b>MAY</b></td>
        <td><code>reference</code></td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
  </tr>
  <tr>
        <td>type</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
  </tr>
 </tbody>
</table>


#### Mandatory Search Parameters

The following search parameters and search parameter combinations **SHALL** be supported:

#### Optional Search Parameters

The following search parameters and search parameter combinations **SHOULD** be supported:
