The requirements of the FHIR standard and [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html) apply, and define the use of terms in this guide including the conformance verbs - SHALL, SHALL NOT, SHOULD, SHOULD NOT, MAY.

Implementers are advised to be familiar with the requirements of the FHIR standard when implementing AU Core, in particular:
- [FHIR Terminology requirements](http://hl7.org/fhir/R4/terminologies.html)
- [FHIR RESTful API](http://hl7.org/fhir/R4/http.html) 
- [FHIR Search](http://hl7.org/fhir/R4/search.html)
- [FHIR Resource formats](http://hl7.org/fhir/R4/resource.html)
- [FHIR Data Types](http://hl7.org/fhir/R4/datatypes.html)


### Conformance Artifacts

AU Core defines the following conformance artifacts:
- [AU Core Profiles](profiles-and-extensions.html) that define the FHIR structures supported, the data elements data element definitions, their associated rules of usage including the use of extensions and terminology, and references the additional profiles necessary to assert conformance.
- [AU Core Capability Statements](capability-statements.html) that document the set of requirements for FHIR Server or Client systems to meet when implementing AU Core including the kinds of resources and operations provided and/or consumed by an application.
- AU Core Implementation Guide ([XML](ImplementationGuide-hl7.fhir.au.core.xml), [JSON](ImplementationGuide-hl7.fhir.au.core.json),[TTL](ImplementationGuide-hl7.fhir.au.core.ttl)) that defines the collection of capability statements, profiles, extensions, value sets, and documentation describing a set of interoperable applications that make up AU Core.


### Declaring Conformance

There are two different ways to implement AU Core:
1. only the resources as profiled by AU Core to represent digital health information (Profile Only Support)
1. the resources as profiled by AU Core to represent digital health information (Profile Support) and [the RESTful FHIR API](http://hl7.org/fhir/R4/http.html) interactions defined for it (Interaction Support)

#### Profile Only Support

Systems may deploy, and support, one or more AU Core profiles (i.e. the profiles governed by this guide) to represent digital health information. A system that implements _profile only support_ will use a profile's content model without any expectations to implement AU Core interactions. 

A system **SHOULD** support all AU Core profiles unless the system does not anticipate supplying or consuming a certain type of data, usually by virtue of playing a limited or specialised role in clinical or information workflows.

Profile elements consist of both Mandatory and *Must Support* elements. Mandatory elements are elements with a minimum cardinality of 1 (min=1). The base [FHIR Must Support]({{site.data.fhir.path}}profiling.html#mustsupport) guidance requires specifications to define the support expected for profile elements labelled Must Support. AU Core defines server and client requirements for profile elements labelled as *Must Support* on the [Must Support](must-support.html) page.

Servers that implement AU Core Profile Only Support:
- **SHALL** be able to populate all profile elements that are mandatory and/or labelled *Must Support* as defined by that profile's StructureDefinition.
- **SHALL** specify the full capability details from the AU Core CapabilityStatement it claims to implement, including declaring support for an AU Core profile by including its canonical URL in the server's `CapabilityStatement.rest.resource.profile` or `CapabilityStatement.rest.resource.supportedProfile` element


**Declaring Conformance**

Servers that implement Profile Only Support declare conformance to each profile supported:
* The server hosts a [capability statement](http://hl7.org/fhir/capabilitystatement.html) at [url]/metadata that is available to both authenticated and unauthenticated clients and that declares the profiles supported as either a base profile using [CapabilityStatement.rest.resource.profile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.profile) or supported profile using [CapabilityStatement.rest.resource.supportedProfile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.supportedProfile).

    Example: CapabilityStatement resource for a server supporting the AU Core Patient profile as a system-wide profile that is applied across all instances of the Patient resource:

    ```
    {
      "resourceType": "CapabilityStatement",
      ...
      "instantiates": [
        "http://hl7.org.au/fhir/core/CapabilityStatement/au-core-server"
      ],
      ...  
      "rest": [
        {
          "mode": "server",
        ...
            "resource": [
              ...
              {
                "type": "Patient",
                "profile": [
                  "http://hl7.org/fhir/us/core/StructureDefinition/au-core-patient"
                ],
                ...
              }
            ]
        }
      ] 
    }
    ```

    Example: CapabilityStatement resource for a server supporting the AU Core Waist Circumference profile as a profile for supported use cases provided by the server:

    ```
    {
      "resourceType": "CapabilityStatement",
      ...
      "instantiates": [
        "http://hl7.org.au/fhir/core/CapabilityStatement/au-core-server"
      ],
      ...  
      "rest": [
        {
          "mode": "server",
        ...
            "resource": [
              ...
              {
                "type": "Patient",
                "supportedProfile": [
                  "http://hl7.org.au/fhir/core/StructureDefinition/au-core-waistcircum"
                ],
                ...
              }
            ]
        }
      ] 
    }
    ```


#### Profile + Interaction Support

Profile Support refers to the support of the AU Core profiles, such that the system exposes FHIR resources that adhere to the AU Core profiles' content model. Interaction Support refers to a system that supports the AU Core RESTful interactions.

Servers that implement AU Core Profile + Interaction Support:
- **SHALL** declare conformance with the AU Core Server Capability Statement by including its official URL in the server's `CapabilityStatement.instantiates` element: `http://hl7.org.au/fhir/core/CapabilityStatement/au-core-server`
- **SHALL** specify the full capability details from the AU Core CapabilityStatement it claims to implement, including declaring support for the AU Core profile by including its official URL in the server's `CapabilityStatement.rest.resource.supportedProfile` element
- **SHALL** be able to populate all profile elements that are mandatory and/or labelled *Must Support* as defined by that profile's StructureDefinition.
- **SHALL** implement the RESTful behaviour according to the FHIR specification, including *read* and *search* behaviour and required search parameters as defined in the [AU Core CapabilityStatement](CapabilityStatement-au-core-server.html#resourcesSummary1).
- **SHALL** specify the full capability details from the AU Core CapabilityStatement it claims to implement, including declaring support for the AU Core Profile's FHIR RESTful transactions.


**Declaring Conformance**

Servers that implement Profile + Interaction Support declare conformance to the capability statement supported:
* The server hosts a [capability statement](http://hl7.org/fhir/capabilitystatement.html) at [url]/metadata that is available to both authenticated and unauthenticated clients and that declares that AU Core is supported using [CapabilityStatement.instantiates](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates), as shown in the following fragment:

    ```
    {
      "resourceType": "CapabilityStatement",
      ...
      "instantiates": [
        "http://hl7.org.au/fhir/core/CapabilityStatement/au-core-server"
      ],
      ...  
      "rest": [
        {
          "mode": "server",
        ...
        }
      ] 
    }
    ```

### Missing Data

There are situations when information for a particular data element is missing and the source system does not know reason for the absence of data. 

If the source system does not have data for an element with a minimum cardinality = 0 (including elements labelled *Must Support*), the data element **SHALL** be omitted from the resource.  

If the data element is a *Mandatory* element (in other words, where the minimum cardinality is > 0), the element **SHALL** be present *even if* the source system does not have data or know the reason for the absence of data. The core specification provides guidance for what to do in this situation, which is summarised below.

1.  For *non-coded* data elements including type [Reference](http://hl7.org/fhir/R4/references.html#Reference), 
  - use the [DataAbsentReason extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html) in the data type if the AU Core profile for that resource does not require a child element
  - if the AU Core profile mandates a child element, such as a valid identifier or reference, then the resource must contain that element otherwise the instance will not be conformant
  - use the code `unknown` - The value is expected to exist but is not known.
  
    Example: ExplanationOfBenefit resource where the patient's insurance coverage is not available.
    ~~~
    {
      "resourceType" : "ExplanationOfBenefit",
           ...
           "outcome" : "complete",
             "insurance" : [
               {
                 "focal" : true,
                 "coverage" : {
                   "extension" : [
                     {
                       "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                       "valueCode" : "unknown"
                     }
                   ]
                 }
               }
             ],
             ...
         }
    ~~~

1. For *coded* data elements:
   - *example*, *preferred*, or *extensible* binding strengths (CodeableConcept, or Coding datatypes):
      - if the source system has text but no coded data, only the text element is used.
          - for Coding datatypes, the text only data is represented as a `display` element.
      - if there is neither text or coded data:
        - the appropriate "unknown" concept code **SHALL** be present if the binding strength is *extensible*
        - if the value set does not have an appropriate "unknown" concept code, use `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason).

        Example: AllergyIntolerance resource where the manifestation is unknown.
        ~~~
        ...
        "reaction" : [
          {
            "manifestation" : [
              {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
                    "code" : "unknown",
                    "display" : "unknown"
                  }
                ]
              }
            ]
          }
        ]
        ...
        ~~~

   - *required* binding strength (CodeableConcept or code datatypes):
      - the appropriate "unknown" concept code **SHALL** be present if available.
      - if the value set does not have the appropriate “unknown” concept code you must use a concept from the value set otherwise the instance will not be conformant.

        - For AU Core profiles, the following mandatory or conditionally mandatory* status elements with required binding have no appropriate "unknown" concept code:
          - `AllergyIntolerance.clinicalStatus`*
          - `Condition.clinicalStatus`*
          - `Composition.status`
          - `DiagnosticReport.status`
          - `DocumentReference.status`
          - `Immunization.status`


        *The clinicalStatus element is conditionally mandatory based on resource specific constraints. 


### Suppressed Data
In some circumstances, specific pieces of data may hidden due to security or privacy reasons. 

Elements with a minimum cardinality = 0 (including elements labelled *Must Support*), the element **SHALL** be omitted from the resource if they are suppressed.

For mandatory elements (minimum cardinality is > 0), the element **SHALL** be populated but it may exceed the data requester's access rights to know that the data is suppressed:
- where a requester does not have access rights to know that data is suppressed use the code `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).
- where a requester may know that the data is suppressed use the code `masked` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).

