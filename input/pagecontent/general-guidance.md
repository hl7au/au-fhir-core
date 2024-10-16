### Contained Resources
In some circumstances, the content referred to in the resource reference does not have an independent existence apart from the resource that contains it - it cannot be identified independently, and nor can it have its own independent transaction scope. For example, use of a Medication resource to represent medicinal product identification within the context of a MedicationRequest. In these circumstances the resource can be [contained](http://hl7.org/fhir/R4/references.html#contained). 

In AU Core profiles:
- Systems constructing a resource that represent medication information are encouraged to make use of contained resources within the context of a FHIR transaction. Operations on Medication resources are expected to be within the context of a referencing resource query such as an MedicationAdministration, MedicationDispense, MedicationRequest or MedicationStatement.
- If referencing a contained resource, both the contained resource and the referencing resource **SHALL** conform to the applicable AU Core profile.
- Otherwise, it is recommended that an AU Core Responder avoids the use of contained resources unless the referenced resource does not have an independent existence apart from the resource that contains it and cannot be identified independently.

Further guidance about the general use case for [contained resources](http://hl7.org/fhir/R4/references.html#contained) can be found in the base FHIR specification.

### Extensibility – “additional” elements
A server may send "additional" elements beyond those flagged with *Must Support* in an AU Core profile. Additional elements are often required by other profiles the system may conform to, allowing local requirements, including technical and workflow context for the resource, to be reflected and extending the health information supported in exchanges. For this reason, extensibility is generally encouraged and expected in AU Core profiles. Only in some exceptionally rare use case profiles are rules tightened to limit the nature of additional information that can be sent. Specification authors should strive to enable greater interoperability and software re-use by not reducing an element's cardinality.

Depending on local requirements, a client application may ignore these "additional" elements, may treat the data as for rendering only, or be capable of recognising and using the element. 

### Representing communication preferences

**Patient**

The table below provides guidance on representing communication preferences for a patient. Blank cells in the table indicate that the given element is absent from the resource.

<table class="list" style="width:100%">
    <colgroup>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 18%;"/>
       <col span="1" style="width: 20%;"/>
       <col span="1" style="width: 24%;"/>
    </colgroup>
	<tbody>
      <tr>
        <th>Scenario</th>
        <th>communication.language</th>
        <th>communication.preferred</th>
        <th>extension:interpreterRequired</th>
		<th>Notes</th>
      </tr>
      <tr>
        <td>Preferred language is English</td>
        <td></td>
        <td></td>
        <td></td>
        <td>No element sent, as per the guidance in the <a href="http://hl7.org/fhir/patient-definitions.html#Patient.communication">Comments</a> of Patient.communication</td>
      </tr>
      <tr>
        <td>Preferred language is other than English</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td></td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is known</td>
        <td>language.coding</td>
        <td>'true'</td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter required, language is not known</td>
        <td></td>
        <td></td>
        <td>'true'</td>
        <td></td>
      </tr>
      <tr>
        <td>Interpreter is not required</td>
        <td></td>
        <td></td>
        <td>'false'</td>
        <td></td>
      </tr>
      <tr>
        <td>Communicates with multiple languages</td>
        <td>language.coding</td>
        <td></td>
        <td></td>
        <td>Each language instantiated in separate communication nodes; communication.preferred and extension:interpreterRequired may be sent as needed.</td>
      </tr>
    </tbody>
</table>

Example: Patient resource with interpreter required and language is known
~~~
{
  "resourceType" : "Patient",
    ...
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/patient-interpreterRequired",
          "valueBoolean" : true
        }          
       ]
    },
    ...
    "communication" : [
    {
      "language" : {
        "coding" : [
          {
            "system" : "urn:ietf:bcp:47",
            "code" : "yue"
          }
        ],
        "text" : "Cantonese"
      },
      "preferred" : true
    }
  ]
}
~~~

### Representing body site, which may include laterality
When exchanging `Procedure` and `Condition` resources using AU Core profiles there may be a need to represent a relevant body site and associated laterality using `CodeableConcept` elements. In FHIR, body site and associated laterality can be recorded in various ways and implementers are encourage to consider the following points when implementing:

* The `bodySite` element is not *Must Support* in AU Core profiles, there is no expectation to fill or meaningfully consume this element.
* The `CodeableConcept.text` element is system populated and may reflect more specific detail than the `CodeableConcept`.coding concepts provided.

AU Core provides the following guidance for what to do in each of the following scenarios:

1. Primary finding/procedure code with body site and laterality as a pre-coordinated code.
1. Primary finding/procedure code with body site (without laterality) as a pre-coordinated code, and a separate laterality coded qualifier.
1. Coded body site with laterality and separate primary finding/procedure code.
1. Coded body site without laterality and separate coded laterality qualifier and a primary finding/procedure code.


To support consistent representation the following is recommended for each of these cases, this approach can be applied to either Condition or Procedure profiles:

1\. Primary finding/procedure `code` only (pre-coordinated code including body site and laterality)
* For systems that have pre-coordinated coding describing a concept fully:
  * use only the `code` element to contain information on body site with laterality.

Example: Condition resource cellulitis of right knee
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "10633311000119108",
        "display" : "Cellulitis of right knee"
      },
      "text" : "Cellulitis of right knee"
    ]
  }
  ...
}
~~~

2\. Primary finding/procedure `code` only (pre-coordinated code including body site without laterality and separate laterality qualifier)
* For systems that have pre-coordinated coding describing a concept including body site without laterality, and have a laterality qualifier recorded separately e.g. left, right:
  * use the `code` element:
    * `code.coding` contains the primary concept including body site (without laterality).
    * `code.text` is used to describe concept fully, this can include information on recorded laterality e.g. ', Right'.
  * in this case laterality is not expressed in coded form.


Example: Condition resource showing coded condition that includes body site, laterality as text only
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "13301002",
        "display" : "Cellulitis of knee"
      },
      "text" : "Cellulitis of knee, Right"
    ]
  }
  ...
}
~~~

3\. Coded `body site` with laterality and separate primary finding/procedure `code`.
* For systems that have pre-coordinated coding describing primary concept without body site and separate body site with laterality recorded as coded value:
  * use the code element:
    * `code.coding` contains the primary concept alone (no body site or laterality).
    * `code.text` describes the concept fully, this can include information on recorded body site and laterality as text.
  * optionally, coded element `bodySite` may be supplied containing the coded body site with laterality.


Example: Condition resource showing coded condition, coded body site that includes laterality
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "128045006",
        "display" : "Cellulitis"
      },
      "text" : "Cellulitis, Right Knee"
    ]
  },
  "bodySite" : [
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "6757004",
        "display" : "Structure of right knee region"
      }],
      "text" : "Right Knee"
    }
  ]
  ...
}
~~~


4\. Coded `body site` without laterality and separate coded laterality qualifier and a primary finding/procedure `code`.
* For systems that have pre-coordinated coding describing primary concept without body site and a body site without laterality is as separate coded value, and laterality qualifier recorded separately e.g. left, right:
  * use the `code` element:
    * `code.coding` contains the primary concept alone (no body site or laterality).
    * `code.text` describes the concept fully, this can include information on recorded body site and laterality as text.
  * optionally, coded element bodySite may be supplied containing:
    * `bodySite.coding` contains the coded body site without laterality.
    * `bodySite.text` describes the body site concept fully, this can include information on recorded laterality as text e.g. ', Right'.


Example: Condition resource with coded condition, coded body site, laterality as text only
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  ...
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "128045006",
        "display" : "Cellulitis"
      },
      "text" : "Cellulitis, Knee, Right"
    ]
  },
  "bodySite" : [
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "72696002",
        "display" : "Knee region structure"
      }],
      "text" : "Knee, Right"
    }
  ]
  ...
}
~~~

### Read/Search Syntax

Searching resources is defined by the [FHIR RESTful API](https://hl7.org/fhir/R4/http.html) and included here for informative purposes. The [AU Core CapabilityStatements](capability-statements.html) document the server and client rules for the RESTful interactions described in this guide.

All the search interactions in this guide use the `GET` command with the following syntax:

 **`GET [base]/[Resource-type]?[parameter1]{:m1|m2|...}={c1|c2|...}[value1{,value2,...}]{&[parameter2]{:m1|m2|...}={c1|c2|...}[value1{,value2,...}]&...}`**

-   GET is the HTTP verb used for fetching a resource
-   Variables surrounded by "\[\]" are mandatory *for the client* to supply and will be replaced by the string literal identified.
-   Variables surrounded by "\{\}" are optional *for the client* to supply and will be replaced by the string literal identified.
-   Variables:
    -   base: The Service Root URL (e.g., "<https://fhir-open-api-dstu2.smarthealthit.org>”)
    -  Resource-type: The name of a resource type (e.g., "Patient")
    -  parameter: the search parameters as defined for the particular interaction (e.g.,"?patient=Patient/123")
    -  value: the search parameter value for a particular search
       - When searching using the `token` type SearchParameter [(how to search by token)](https://hl7.org/fhir/R4/search.html#token), the syntax `{system|}[code]` means that the system value is optional *for the client* to supply.:
       - When searching using the `reference` type SearchParameter [(how to search by reference)](https://hl7.org/fhir/R4/search.html#reference), the syntax `{Type/}[id]` means that the Type value is optional *for the client* to supply:
       - When searching using the `date` type SearchParameter [(how to search by date)](https://hl7.org/fhir/R4/search.html#date), the syntax `{gt|lt|ge|le}[date]` means the date comparators "gt", "lt", "ge", and "le" are optional.   Date type searches without a comparator prefix are equivalent to searches with the "eq" comparator *even if* a server does not support the comparator.
    - \{:m1&#124;m2&#124;...}: The list of supported search parameter modifiers
    - {c1&#124;c2&#124;...}: The list of supported search parameter comparators
    - {,value2,...}: Optional multiple 'OR' Values
    - {&parameter2={:m1&#124;m2&#124;...}={c1&#124;c2&#124;...}[value1{,value2,...}&...}: Optional multiple 'AND' search parameters


In the simplest case, a search is executed by performing a GET operation in the RESTful framework:

`GET [base]/[Resource-type]?name=value&...`

For this RESTful search, the parameters are a series of name=\[value\] pairs encoded in the URL. The search parameter names are defined for each resource. For example, the Observation resource has the name "code" for searching on the LOINC or SNOMED CT-AU code.  For more information, see the [FHIR RESTful Search API](https://hl7.org/fhir/R4/http.html#search).


