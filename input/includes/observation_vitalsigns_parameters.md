<table class="list">
<tbody>
  <tr>
    <th>Parameter(s)</th>
    <th>Conformance </th>
    <th>Type(s)</th>
    <th>Requirements (when used alone or in combination)</th>
  </tr>
  <tr>
        <td>patient</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code></td>
        <td>The requester <b>SHALL</b> provide at least an id value and <b>MAY</b> provide both the Type and id values. The responder <b>SHALL</b> support both.</td>
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
        <td>patient+code</td>
        <td><b>SHALL</b></td>
        <td><code>reference</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+category+status</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>token</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient+code+date</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>+<code>token</code>+<code>date</code></td>
        <td></td>
  </tr>
  <tr>
        <td>patient.identifier</td>
        <td><b>SHOULD</b></td>
        <td><code>reference</code>.<code>token</code></td>
        <td>The requester <b>SHALL</b> provide both the system and code values. The responder <b>SHALL</b> support both. The requester <b>SHOULD</b> support search using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile. The responder <b>SHOULD</b> support search using the using IHI, Medicare Number, and DVA Number identifiers as defined in the AU Core Patient profile.</td>
  </tr>
  <tr>
        <td>category</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both. The requester <b>SHALL</b> support search using the 'vital-signs' category defined in each profile. The responder <b>SHALL</b> support search using the 'vital-signs' category defined in each profile.</td>
  </tr>
  <tr>
        <td>code</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both. The requester <b>SHALL</b> support search using the LOINC codes defined in each profile. The responder <b>SHALL</b> support search using the LOINC codes defined in each profile.</td>
  </tr>
  <tr>
        <td>date</td>
        <td><b>MAY</b></td>
        <td><code>date</code></td>
        <td>A requester <b>SHALL</b> provide a value precise to the second + time offset. A responder <b>SHALL</b> support a value precise to the second + time offset.<br/><br/>The requester <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHALL</strong> support these search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.<br/><br/>The requester <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>. The responder <strong>SHOULD</strong> support <code>multipleAnd</code>, and if <code>multipleAnd</code> is supported, <strong>SHALL</strong> support the search comparators <code>gt</code>, <code>lt</code>, <code>ge</code>, <code>le</code>.</td>
  </tr>
  <tr>
        <td>status</td>
        <td><b>MAY</b></td>
        <td><code>token</code></td>
        <td>The requester <b>SHALL</b> provide at least a code value and <b>MAY</b> provide both the system and code values. The responder <b>SHALL</b> support both.</td>
  </tr>
 </tbody>
</table>
