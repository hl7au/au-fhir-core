The FHIR standard defines the following resources for exchanging medicine information:
- [Medication](http://hl7.org/fhir/R4/medication.html)
- [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)
- [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
- [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)
- [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

AU Core defines the following profiles:
- [AU Core Medication](StructureDefinition-au-core-medication.html): to support medicinal product identification in an Australian healthcare context.
- [AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html) (with AU Core Medication): profiled to support prescription, ordering, and ePrescribing use cases.

It is anticipated that future releases of AU Core will define AU Core profiles of:
- MedicationAdministration (with AU Core Medication) to support medication chart and other administration use cases.
- MedicationDispense (with AU Core Medication) to support dispense records and medication management use cases.
- MedicationStatement (with AU Core Medication) to support summary statements of medicine use.

The guidance below addresses how medicinal product identification can be structured in FHIR conformant to AU Core.

### Medicinal Product Identification

For extemporaneous medications, it is expected the medication code is the primary mechanism to identify a medicine. In this case, a text only list of ingredients may be supplied or may be coded using a medicines terminology.

For non-extemporaneous medications, the medication code (or set of codes) is the mandatory primary mechanism to identify a medicine and its defining attributes (by terminology lookup) including form and strength. 

Australian Medicines Terminology (AMT) is the national terminology for identification and naming of medicines in clinical systems for Australia. 
The AMT is published monthly to include new items on the Australian Register of Therapeutic Goods from the TGA, as well as items listed on the Pharmaceutical Benefits Scheme. 
The AMT is published as part of SNOMED CT-AU (Australian edition of SNOMED CT) and can be downloaded in a variety of formats from the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/).

In addition to the medication code, the majority of use cases support exchange of structured medicine information as separate data elements covering brand name, generic name, item form and strength, and manufacturer.  These data elements may be supported as coded, or text, and systems are likely to use a combination of coded and text elements when constructing a Medication resource. 

The guidance for how to support coded or text identification of medicinal products is summarised below: 

1.  For *coded* support of a medication, a single code can be supplied in code.coding if the code contains the information required for identification.
  - AMT contains both generic or branded medication concepts, and a single AMT code may be utilised to identify a medication in code.coding.  An AMT code can convey the following detail, depending on the concept level selected: brand name, generic name, item form, strength, pack size, container type. Codes can be selected from the [Australian Medication value set](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1).
  - AMT does not contain manufacturer information. See point 2 or 3 for options to support coded or uncoded inclusion of manufacturer details.
  - [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) can optionally be used to explicitly declare the type of product identification in the resource (i.e. MedicationAdministration, MedicationStatement, MedicationDispense, MedicationRequest, Medication).
     
    Example: Medication with single code identifying brand name, item form and strength.
    ~~~
    {
      "resourceType": "Medication",
       ...
      "code": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "32328011000036106",
              "display": "Benpen 3 g powder for injection, 1 vial"
            },
          ]
        }
    }
    ~~~

    Example: Medication with single code identifying generic name, item form and strength, with identification of product type.
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
                    "code": "UPDSF",
                    "display": "Unbranded product with strengths and form"
                  }
                }
              ],
              "system": "http://snomed.info/sct", 
              "code": "32686011000036108",
              "display": "benzylpenicillin 3 g injection, vial"
            },
          ]
        }
    }
    ~~~

2. For *coded* support of brand name, generic name, manufacturer, item form and strength, where the individual components required for medication identification are separately coded:
   - Coded support for the following can be provided using code.coding with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) to explicitly declare the type of product identification in the resource (i.e. MedicationAdministration, MedicationStatement, MedicationDispense, MedicationRequest, Medication):
      - brand name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic name = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPD` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - generic item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `UPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
      - branded item form and strength = `code.coding` with [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) using `BPDSF` from the [Medication Type code system](http://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-medication-type.html)
   - If the resource is a Medication resource:
      - form and strength may be separately provided in `Medication.form`, `Medication.ingredient.itemCodeableConcept` and `Medication.ingredient.strength` when they are not implicit in `Medication.code`
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
              "code": "32686011000036108",
              "display": "benzylpenicillin 3 g injection, vial"
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
              "code": "32205011000036103",
              "display": "Benpen 3 g powder for injection, 3 g vial"
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
              "display": "Injection"
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
                  "code": "323389000",
                  "display": "Benzylpenicillin"
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

3.  For *non-coded* support for brand name, generic name, manufacturer, item form and strength:
    - Non-coded support is provided using the Medication resource
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
