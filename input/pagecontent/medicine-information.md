The FHIR standard defines the following resources for exchanging medicine information:
- [Medication](http://hl7.org/fhir/R4/medication.html)
- [MedicationAdministration](http://hl7.org/fhir/R4/medicationadministration.html)
- [MedicationDispense](http://hl7.org/fhir/R4/medicationdispense.html)
- [MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)
- [MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)

AU Core defines the profiles:
- [AU Core Medication](StructureDefinition-au-core-medication.html) is profiled to support medicinal product identification in an Australian healthcare context.
- [AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html) (with AU Core Medication) to support prescription, ordering, and ePrescribing use cases.

It is anticipated that future releases of AU Core will define AU Core profiles of:
- MedicationAdministration (with AU Core Medication) are used to support medication chart and other administration use cases.
- MedicationDispense (with AU Core Medication) are used to support dispense records and medication management use cases.
- MedicationStatement (with AU Core Medication) are used to support summary statements of medicine use.

### Medicinal Product Identification

For extemporaneous medications, it is expected the medication code is the primary mechanism to identify a medicine. In this case, a text only list of ingredients may be supplied or may be coded using a medicines terminology.

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
