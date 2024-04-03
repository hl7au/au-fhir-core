### Contained Resources
In some circumstances, the content referred to in the resource reference does not have an independent existence apart from the resource that contains it - it cannot be identified independently, and nor can it have its own independent transaction scope. For example, use of a Medication resource to represent medicinal product identification within the context of a MedicationRequest. In these circumstances the resource can be [contained](http://hl7.org/fhir/R4/references.html#contained). 

In AU Core profiles:
- Systems constructing a resource that represent medication information are encouraged to make use of contained resources within the context of a FHIR transaction. Operations on Medication resources are expected to be within the context of a referencing resource query such as an MedicationAdministration, MedicationDispense, MedicationRequest or MedicationStatement.
- If referencing a contained resource, both the contained resource and the referencing resource **SHALL** conform to the applicable AU Core profile.
- Otherwise, when responding to a query, servers should not use inline contained resources to represent the returned data.

 Further guidance about the general use case for [contained resources](http://hl7.org/fhir/R4/references.html#contained) can be found in the base FHIR specification.

### Extensibility – “additional” elements
A server may send "additional" elements beyond those flagged with Must Support in an AU Core profile. Additional elements allow local requirements to be reflected including technical and workflow context for the resource, and extending the health information supported in exchanges. For this reason extensibility is generally allowed in AU Core profiles, only in some use case profiles are the rules tightened to limit the nature of additional information that can be sent.

Depending on local requirements, a client application may ignore these "additional" elements, may treat the data as for rendering only, or be capable of recognising and using the element. 


### Medicine information

The FHIR standard defines the following resources for exchanging medicine information:
- [Medication](http://hl7.org/fhir/R4/medication.html)
- [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)
- [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
- [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)
- [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

AU Core defines the profiles:
- [AU Core Medication](StructureDefinition-au-core-medication.html) is profiled to support medicinal product identification in an Australian healthcare context.
- [AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html) (with AU Core Medication) to support summary statements of medicine use. 
- [AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html) (with AU Core Medication) to support prescription, ordering, and ePrescribing use cases.

It is anticipated that future releases of AU Core will define AU Core profiles of:
- MedicationAdministration (with AU Core Medication) are used to support medication chart and other administration use cases.
- MedicationDispense (with AU Core Medication) are used to support dispense records and medication management use cases.

**Medicinal Product Identification**

For extemporaneous medications, the medication code is the mandatory primary mechanism to identify a medicine but contain only a text list of ingredients or it may be a code from a medicines terminology.

For non-extemporaneous medications, the medication code (or set of codes) is the mandatory primary mechanism to identify a medicine and its defining attributes (by terminology lookup) including form and strength. 

Australian Medicines Terminology (AMT) is the national terminology for identification and naming of medicines in clinical systems for Australia. 
The AMT is published monthly to include new items on the Australian Register of Therapeutic Goods from the TGA, as well as items listed on the Pharmaceutical Benefits Scheme. 
The AMT is published as part of SNOMED CT-AU (Australian edition of SNOMED CT) and can be downloaded in a variety of formats from the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/).

In addition to the medication code, the majority of use cases support exchange of structured medicine information as separate data elements covering brand name, generic name, item form and strength, and manufacturer.

These data elements may be supported as coded, or text, and systems are likely to use a combination of coded and text elements when constructing a Medication resource. The guidance for how to support coded or text is summarised below: 

1. For *coded* support for brand name, generic name, manufacturer, item form and strength:
   - Fully coded support is provided using code.coding with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) extension in the resource (i.e. MedicationAdministration, MedicationStatement, MedicationDispense, MedicationRequest, Medication):
      - brand name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - branded item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
   - If the resource is a Medication resource:
      - form and strength are also provided in `Medication.form`, `Medication.ingredient.itemCodeableConcept` and `Medication.ingredient.strength`
      - manufacturer = `Medication.manufacturer.identifier`

    Example: Medication with coded brand name, generic name, manufacturer, item form and strength.
    ~~~
    {
      "resourceType": "Medication",
        ...
        "code": {
          "coding": [
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "UPD",
                    "display": "Unbranded product with no strengths or form"
                  }
                }
              ],
              "system": "http://pbs.gov.au/code/item",
              "code": "02647H",
              "display": "BENZYLPENICILLIN"
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "BPD",
                    "display": "Branded product with no strengths or form"
                  }
                }
              ],
              "system": "http://snomed.info/sct",
              "code": "3539011000036105",
              "display": "Benpen"
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "UPDSF",
                    "display": "Unbranded product with strengths and form"
                  }
                }
              ],
              "system": "http://snomed.info/sct",
              "code": "32753011000036104",
              "display": "benzylpenicillin 3 g injection, 1 vial"
            },
            {
              "extension": [
                {
                  "url": "http://hl7.org.au/fhir/StructureDefinition/medication-type",
                  "valueCoding": {
                    "system": "http://terminology.hl7.org.au/CodeSystem/medication-type",
                    "code": "BPDSF",
                    "display": "Branded product with strengths and form"
                  }
                }
              ],
              "system": "http://snomed.info/sct",
              "code": "32328011000036106",
              "display": "Benpen 3 g powder for injection, 1 vial"
            }
          ]
        },
        "manufacturer": {
          "identifier": {
            "system": "http://pbs.gov.au/code/manufacturer",
            "value": "CS"
          }
        },
        "form": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "129011000036109",
              "display": "injection"
            }
          ],
          "text": "Injection"
        },
        "ingredient": [
          {
            "itemCodeableConcept": {
              "coding": [
                {
                  "system": "http://snomed.info/sct",
                  "code": "1849011000036104",
                  "display": "benzylpenicillin"
                }
              ]
            },
            "strength": {
              "numerator": {
                "value": 3,
                "unit": "g"
              },
              "denominator": {
                "value": 1,
                "unit": "unit"
              }
            }
          }
        ]
    }
    ~~~

1.  For *non-coded* support for brand name, generic name, manufacturer, item form and strength:
    - Fully non-coded support is provided using the Medication resource
        - brand name = `Medication.extension` [Medication Brand Name extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-brand-name.html)
        - generic name = `Medication.extension` [Medication Generic Name extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-generic-name.html)
        - item form and strength = `Medication.code.text`
        - manufacturer = `Medication.manufacturer.display`
  
    Example: Medication with text only brand name, generic name, item form and strength.
    ~~~
    {
      "resourceType": "Medication",
       ...
       "extension": [
         {
           "url": "http://hl7.org.au/fhir/StructureDefinition/medication-generic-name",
           "valueString": "Benzylpenicillin"
         },
         {
           "url": "http://hl7.org.au/fhir/StructureDefinition/medication-brand-name",
           "valueString": "Benpen"
         }
       ],
       "code": {
         "text": "Benpen 3 g powder for injection, 1 vial"
       },
       "manufacturer": {
         "display": "Seqirus"
       }
    }
    ~~~


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


### Representing body site and laterality
Some AU Core profiles contain the capability to record details on the relevant body site and laterality thereof associated with a record using CodeableConcept elements, notably:
*  [AU Core Condition](StructureDefinition-au-core-condition.html) - with primary finding code `Condition.code` and `Condition.bodySite`
*  [AU Core Procedure](StructureDefinition-au-core-procedure.html) - with primary procedure code `Procedure.code` and `Procedure.bodySite`

The body site content may also optionally indicate the laterality of the body site. Depending on the specific system approach to supporting body site related content this can lead to various scenarios needing to be represented with AU Core:
* Body site with laterality is defined in a pre-coordinated primary finding/procedure code.
* Body site without laterality is defined in a primary finding/procedure code AND coded laterality qualifier is separate.
* Body site with laterality is defned separately from a primary finding/procedure code.
* Body site witout laterality AND coded laterality qualifier are defned separately from a primary finding/procedure code.


To support consistent representation the following is recommended for each of these cases, this can be applied to either Condition or Procedure profiles:


1. Primary `code` only (pre-coordinated body site including laterality)
* For systems that have pre-coordinated coding describing a concept fully.
* Only the `code` element is used and contains information on body site with laterality.

Example Condition - Cellulitis of right knee
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><a href=\"Patient-bennelong-anne.html\">Patient/bennelong-anne: Anne Bennelong</a> " BENNELONG"</p></div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "10633311000119108",
        "display" : "Cellulitis of right knee"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/bennelong-anne",
    "display" : "Anne Bennelong"
  }
}
~~~

2. Primary `code` only (precoordinated body site without laterality and separate laterality qualifier)
* For systems that have 
  * Pre-coordinated coding describing a concept including body site without laterality
  * Laterality qualifier recorded separately e.g. left, right
* The `code` element is used
  * Contains `coding` for primary concept (no body site information)
  * Use `text` to describe concept fully, this can include information on recorded laterality e.g. ', Right'
* NOTE: in this case laterality is NOT expressed in coded form 

Example Condition - Cellulitis of knee, laterality as text only
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><a href=\"Patient-bennelong-anne.html\">Patient/bennelong-anne: Anne Bennelong</a> " BENNELONG"</p></div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "13301002",
        "display" : "Cellulitis of knee"
      },
      "text" : "Cellulitis of knee, Right"
    ]
  },
  "subject" : {
    "reference" : "Patient/bennelong-anne",
    "display" : "Anne Bennelong"
  }
}
~~~

3. Primary `code` and `bodySite` with laterality coded seperately.
* For systems that have 
  * Pre-coordinated coding describing primary concept WITHOUT body site.
  * Body site with laterality is recorded as coded value.
* The `code` element is used:
  * Contains `coding` for primary concept including body site without laterality.
  * Use `text` to describe concept fully, this can include information on recorded body site and laterality as text.
* MAY record coded `bodySite`, optional when this element is not `Must Support` in AU Core profiles.

Example Condition - Cellulitis, body site Right Knee
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><a href=\"Patient-bennelong-anne.html\">Patient/bennelong-anne: Anne Bennelong</a> " BENNELONG"</p></div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "128045006",
        "display" : "Cellulitis"
      },
      "text" : "Cellulitus, Right Knee"
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
  ],
  "subject" : {
    "reference" : "Patient/bennelong-anne",
    "display" : "Anne Bennelong"
  }
}
~~~


4. Primary `code` and `bodySite` without laterality coded seperately and also separate laterality qualifier.
* For systems that have 
  * Pre-coordinated coding describing primary concept WITHOUT body site.
  * Body site WITHOUT laterality is recorded as coded value.
  * Laterality qualifier recorded separately e.g. left, right
* The `code` element is used:
  * Contains `coding` for primary concept alone (no body site or laterality).
  * Use `text` to describe concept fully, this can include information on recorded body site and laterality as text.
* MAY record coded `bodySite`, optional when this element is not `Must Support` in AU Core profiles.
  * Contains `coding` for body site without laterality
  * Use  `text` to describe body site concept fully, this can include information on recorded laterality as text e.g. ', Right'

Example Condition - Cellulitis, body site Knee, laterality as text only
~~~
{
  "resourceType" : "Condition",
  "id" : "cellulitis",
  "text" : {
    "status" : "generated",
    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><a href=\"Patient-bennelong-anne.html\">Patient/bennelong-anne: Anne Bennelong</a> " BENNELONG"</p></div>"
  },
  "clinicalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code" : "active"
      }
    ]
  },
  "verificationStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code" : "confirmed"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }
      ]
    }
  ],
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
  ],
  "subject" : {
    "reference" : "Patient/bennelong-anne",
    "display" : "Anne Bennelong"
  }
}
~~~

