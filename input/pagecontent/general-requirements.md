### Conforming to AU Core

There are two different ways to implement AU Core:
1. Profile Only Support: systems support only the resources as profiled by AU Core to represent digital health information.
1. Profile Support + Interaction Support: systems support the resources as profiled by AU Core to represent digital health information (Profile Support) and [the RESTful FHIR API](http://hl7.org/fhir/R4/http.html) interactions defined for it (Interaction Support).

The requirements of the FHIR standard and [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html) apply, and define the use of terms in this guide including the conformance verbs - SHALL, SHALL NOT, SHOULD, SHOULD NOT, MAY.

Implementers are advised to be familiar with the requirements of the FHIR standard when implementing AU Core, in particular:
- [FHIR Terminology requirements](http://hl7.org/fhir/R4/terminologies.html)
- [FHIR RESTful API](http://hl7.org/fhir/R4/http.html) 
- [FHIR Search](http://hl7.org/fhir/R4/search.html)
- [FHIR Resource formats](http://hl7.org/fhir/R4/resource.html)
- [FHIR Data Types](http://hl7.org/fhir/R4/datatypes.html)

### Conformance Artifacts

#### AU Core Profiles and Extensions
The [Profiles and Extensions](profiles-and-extensions.html) page lists the AU Core profiles and AU Core extensions defined for this implementation guide. An AU Core profile [StructureDefinitions](http://hl7.org/fhir/R4/structuredefinition.html) defines the minimum elements, extensions, vocabularies and value sets that **SHALL** be present and constrains the way elements are used when conforming to the profile.

AU Core profile elements include Mandatory and Must Support requirements. Mandatory elements are required and have a minimum cardinality of 1 (min=1). Must Support elements have defined conformance obligations in AU Core. 

The [Must Support](general-requirements.html#must-support) page defines the:
- [profile only expectations](general-requirements.html#profile-only-support) for support of these elements if a system is claiming conformance to a profile
- [server and client expectations](general-requirements.html#profile--interaction-support) for support of these elements if a system is claiming conformance to a capability statement

#### AU Core Capability Statements
The [AU Core Client CapabilityStatement](CapabilityStatement-au-core-client.html) outlines conformance requirements and expectations for an AU Core Client. This CapabilityStatement describes the basic rules for the AU Core Requester actor that initiates a data access request to and retrieves data from an AU Core Responder. In addition, it lists the client conformance expectations for each resource type documented in AU Core. These expectations include supported FHIR profiles, RESTful operations, and search parameters. AU Core clients define their capabilities by choosing from this list based on the resource types they need to access.

The [AU Core Server CapabilityStatement](CapabilityStatement-au-core-server.html) outlines conformance requirements and expectations for an AU Core Server. This CapabilityStatement describes the basic rules for the AU Core Responder actor that is responsible for providing responses to queries submitted by AU Cores Requestors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by AU Core servers are defined in this CapabilityStatement.

#### Profile Only Support
Systems may deploy, and support, one or more AU Core profiles to represent digital health information. A system that implements _profile only support_ will use a profile's content model without any expectations to implement AU Core interactions and:
- **SHALL** populate a resource with all profile elements that are mandatory by that profile’s StructureDefinition.
- **SHALL** populate a resource with all profile elements labelled Must Support unless that element is not available. Where the data is not available the system **SHALL** implement the requirements on [Missing data](general-requirements.html#missing-data).

A system **SHOULD** support all AU Core profiles required by the system for the supply or consumption of data within their clinical or information flows. For example, a pathology laboratory may support [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), but may not support [AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html).

##### Profile Only Support for a Server
A server with AU Core Profile Only Support:
- **SHALL** be able to populate all profile elements that are mandatory and/or labelled *Must Support* as defined by that profile's StructureDefinition.
- **SHALL** declare support for an AU Core Profile by including its official URL in the server’s `CapabilityStatement.rest.resource.profile` or `CapabilityStatement.rest.resource.supportedProfile` element. An AU Core profile official or “canonical” URL is located on each AU Core profile page.


**Declaring Conformance**

Servers that implement Profile Only Support declare conformance to each profile supported:
* The server hosts a [capability statement](http://hl7.org/fhir/capabilitystatement.html) at [url]/metadata that is available to both authenticated and unauthenticated clients that declares the profiles supported as either a base profile using [CapabilityStatement.rest.resource.profile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.profile) or supported profile using [CapabilityStatement.rest.resource.supportedProfile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.supportedProfile).

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
                "type": "Observation",
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
          - `Immunization.status`


        *The clinicalStatus element is conditionally mandatory based on resource specific constraints. 


### Suppressed Data
In some circumstances, specific pieces of data may be hidden due to security or privacy reasons. 

For elements with a minimum cardinality = 0 (including elements labelled *Must Support*), the element **SHALL** be omitted from the resource if they are suppressed.

For mandatory elements (minimum cardinality is > 0), the element **SHALL** be populated but it may exceed the data requester's access rights to know that the data is suppressed:
- where a requester does not have access rights to know that data is suppressed use the code `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).
- where a requester may know that the data is suppressed use the code `masked` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).

### Mandatory Elements
Mandatory elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to always be present. Very rarely, it may not be, and in this circumstance the requirements in [Missing Data](#missing-data) **SHALL** be applied.

### Must Support
Labelling an element *[Must Support](https://www.hl7.org/fhir/conformance-rules.html#mustSupport)* means that systems that request, or respond to requests, for data **SHALL** provide support for the element in some meaningful way. 

Because AU Core is a foundational standard, *Must Support* needs to be defined a way that does not impede or prescribe what a client or server does with the data, so as not to impede each implementation’s ability to tighten and define expectations for use under their own business rules, regulations, policies, etc. There is also a the challenge that comes from inheritance of must support flags into implementation guides that have strict definitions for must support (e.g., must be able to display this value to an end user), AU Core will only apply the *Must Support* flag on the elements that are necessary to support _minimum_ requirements and are expected to be flagged as *Must Support* across the majority of Australian FHIR implementation guides.

Must Support elements are treated differently between AU Core Responders and Requestors, *Must Support* on a profile element **SHALL** be interpreted as follows.

#### AU Core Responder
An AU Core Responder:
- **SHALL** be capable of populating all data elements as part of the query results as specified by the [AU Core Server Capability Statement](CapabilityStatement-au-core-server.html).
- **SHALL** populate all elements labelled *Must Support* unless:
   - the element is not available for that patient.
   - a requester does not have access rights to the element (the data is suppressed due to a security or privacy reason), in this case the responder **SHALL** implement the requirements on [Suppressed Data](general-requirements.html#suppressed-data).
- **SHALL** implement the requirements on [Missing data](general-requirements.html#missing-data) when an element is not available for a patient.
  - **SHALL NOT** include an element in the resource instance returned as part of query results when the element is optional.
  - **SHALL** include an element in the resource instance returned as part of query results when the element is mandatory by following the instructions in the section on [Missing data](general-requirements.html#missing-data).


#### AU Core Requester
An AU Core Requester:
- **SHALL** be capable of meaningfully processing resources with must support elements
   - **SHALL** be able to process resource instances containing elements with missing or suppressed information.
- **MAY** choose to reject non-conformant resources 
- **SHALL** interpret missing data elements within resource instances as data not present in the source system when querying AU Core Responders

Processing, depending on local requirements, may mean display, persist, index, or action in an event or request workflow. Processing may differ based on the element’s value. For example, one possible value of the [Immunization.status](https://hl7.org/fhir/r4/immunization-definitions.html#Immunization.status) element is `entered-in-error`. This element is marked as Must Support; requestors must be capable of processing this value to handle the resource’s clinical data appropriately.

<p class="stu-note">AU Core provides a narrative description of the obligations associated with profile elements for system actors on this page. We are moving to introduce Obligations on actors for AU Core profiles. Each element labelled Must Support will specify the obligations associated with its use for each AU Core system actor by providing one or more obligations using the <a href="https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-obligation.html">Obligation extension</a> and values from the <a href="https://build.fhir.org/ig/HL7/fhir-extensions//CodeSystem-obligation.html">obligation code value set</a>.</p>

#### Presentation of elements labelled Must Support in profiles

##### Presentation of elements labelled Must Support in table views

When rendered in an implementation guide each profile is presented in different formal views under tabs labelled "Differential Table", "Key Elements Table", and "Snapshot Table".

The elements labelled *Must Support* in these views are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. Implementers should refer to the "Key Elements Table" to see the full set of elements that are Mandatory or Must Support, and the full set of terminology requirements.

Implementers should take note that the full set of constraints (i.e. invariants) are only presented in the "Detailed Descriptions" tab or the raw representation (e.g. XML or JSON) of the profile. 

##### Presentation of elements labelled *Must Support* in raw representations

When viewing the raw representation (e.g. XML or JSON) of a profile, elements labelled *Must Support* are flagged as `mustSupport` set to "true". 

Example: AU Core AllergyIntolerance profile showing clinicalStatus and verificationStatus labelled *Must Support*
~~~
{
    "resourceType" : "StructureDefinition",
    ...
    "url" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-allergyintolerance",
    ...
    "type" : "AllergyIntolerance",
    "baseDefinition" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance",     
    ...
           {
              "id" : "AllergyIntolerance.clinicalStatus",
              "path" : "AllergyIntolerance.clinicalStatus",
              "mustSupport" : true
           },
           {
              "id" : "AllergyIntolerance.verificationStatus",
              "path" : "AllergyIntolerance.verificationStatus",
              "mustSupport" : true
           },
    ...
}
~~~


#### Interpreting profile elements labelled Must Support

Profiles defined in this implementation publication flag *Must Support* on elements and not part sub-elements of a data type. 
The explanation on how to interpret *Must Support* for an element does not address rules defined in each profile - which may limit or extend what is allowed for each element.

The sub-elements for each supported element in a profile are defined by a combination of the data type from the core specification and any additional rules included in the profile. A profile may include rules that:
- limit what is considered 'valid'
- extend the potential sub-elements by including an extension

For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) limits what is considered valid for the element `Patient.name` with the invariant "**au-core-pat-02:** At least one patient name shall have a family name".

Typically AU Core profiles will inherit extended sub-elements from a HL7 AU Base profile, e.g. the element `Medication.code` in profile [AU Core Medication](StructureDefinition-au-core-medication.html) is of type CodeableConcept and is extended by inheriting a medicine specific sub-element `Medication.code.coding.extension` [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) from [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html). 

The full set of sub-elements is visible in the "Key Elements Table" or "Snapshot Table" which shows the sub-elements defined in this profile (shown in the "Differential Table") and the sub-elements inherited from a base profile.


##### Must Support - Primitive Elements
Primitive elements are single elements with a primitive value. If they are marked as *Must Support*, then the AU Core Responder **SHALL** be capable of providing the element value to meet the *Must Support* requirement. AU Core Requestors **SHALL** be capable of processing a resource with all elements to meet the *Must Support* requirement.

For example, the AU Core Organization Profile `name` element is a primitive string datatype. Therefore, when claiming conformance to this profile:

- AU Core Responders **SHALL** be capable of providing a value in `Organization.name`.
- AU Core Requestors **SHALL** be capable of processing an Organization resource with a value in `Organization.name`.

##### Must Support - Complex Elements
Complex elements are composed of primitive and/or other complex elements. Elements may have additional rules defined in the profile that also apply, e.g. terminology binding, or invariants. 

For any complex element labelled as *Must Support*, an AU Core Responder **SHALL** be capable of providing at least one of the sub-element values. For some complex types a valid value can be constructed by populating only one sub-element, but usually more than one sub-element is needed. An AU Core Requestor **SHALL** be capable of processing the resource with all sub-elements.

For example, the AU Core MedicationRequest Profile `note` element is labelled *Must Support* and has no *Must Support* sub-elements. When claiming conformance to this profile:
- AU Core Responders **SHALL** be capable of providing a value in a `MedicationRequest.note` sub-element e.g. `MedicationRequest.note.text`.
- AU Core Requestors **SHALL** be capable of processing the MedicationRequest resource with a value in `MedicationRequest.note`.

For example, if AU Core Patient Profile name element is labelled *Must Support* and has *Must Support* sub-elements "family” and “given”. When claiming conformance to this profile:
- AU Core Responders **SHALL** be capable of providing a value in `Patient.name.family` and `Patient.name.given`.
- AU Core Requestors **SHALL** be capable of processing a Patient resource with a value in `Patient.name.family` and `Patient.name.given`.

##### Must Support - Resource References
Some elements labelled as *Must Support* reference multiple resource types or profiles (e.g., Observation.performer). AU Core Responders **SHALL** support at least one referenced resource or profile data type for each element listed in the table below. AU Core Requesters **SHALL** support all referenced resources or profiles listed in the table below.

AU Core Profile |Must Support Element|Reference
---|---|---
AU Core Diagnostic Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Diagnostic Result Observation|Observation.hasMember|AU Core Diagnostic Result Observation, AU Core Pathology Result Observation
AU Core Pathology Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Procedure|Procedure.reasonReference|AU Core Condition, Observation, AU Core Procedure, DocumentReference
{:.grid}


##### Must Support - Choice of Data Types
Some elements labelled as *Must Support* allow different data types (e.g., Observation.effective[x]) for their content. AU Core Responders **SHALL** support at least one data type for each element listed in the table below. AU Core Requesters **SHALL** support all data types listed in the table below.

AU Core Profile |Must Support Element|Data Types
---|---|---
AU Core AllergyIntolerance|AllergyIntolerance.onset[x]|dateTime, age, Period, Range
AU Core Condition|Condition.onset[x]|dateTime, age, Period, Range
AU Core Diagnostic Result Observation|Observation.effective[x]|dateTime, Period, Timing, instant
AU Core Diagnostic Result Observation|Observation.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, Period
AU Core Diagnostic Result Observation|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, Period
AU Core Immunization|Immunization.occurrence[x]|dateTime, string
AU Core Immunization|Immunization.doseNumber[x]|positiveInt, string
AU Core MedicationRequest|MedicationRequest.medication[x]|CodeableConcept, Reference
AU Core MedicationRequest|MedicationRequest.substitution.allowed[x]|boolean, CodeableConcept
AU Core Procedure|Procedure.performed[x]|dateTime, Period, string, Age, Range
{:.grid}


##### Must Support - Choice of Identifiers
A profile may support one or more than one identifier type and will include the supported identifiers in a profile by slicing the element and placing must support on each identifier slice. AU Core Responders **SHALL** support at least one identifier for each element listed in the table below. AU Core Requesters **SHALL** support processing resources with all identifiers listed in the table below.

AU Core Profile |Must Support Element|Supported Identifiers
---|---|---
AU Core Organization|Organization.identifier|HPI-O, Australian Business Number
AU Core Patient|Patient.identifier|IHI, Medicare Card Number, DVA Number
AU Core Practitioner|Practitioner.identifier|HPI-I
AU Core PractitionerRole|PractitionerRole.identifier|Medicare Provider Number
{:.grid}

For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) constrains the choices for `Patient.identifier` defined in [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) to support Individual Healthcare Identifier (IHI), Medicare Card Number, Department of Veterans' Affairs (DVA) Number. When claiming conformance to the AU Core Patient Profile:
- AU Core Responders **SHALL** be capable of populating `Patient.identifier` with an IHI, or Medicare Care Number, or DVA Number, or any combination of them
- AU Core Requesters **SHALL** be capable of meaningfully processing a Patient resource populated with an IHI, Medicare Care Number, and DVA Number.
- Systems **MAY** support populating and processing other identifiers, but this is not a requirement of AU Core.

##### Must Support - Choice of Profile Elements

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [AU Core Encounter](StructureDefinition-au-core-encounter.html). In such cases, the server **SHALL** be able to populate at least one element, and the client application **SHALL** support processing resources with all supported elements. 

The table below lists the applicable profiles and elements in AU Core.

AU Core Profile |Must Support Choice Elements
---|---
AU Core Encounter|Encounter.reasonCode, Encounter.reasonReference
AU Core Procedure|Procedure.reasonCode, Procedure.reasonReference
{:.grid}


##### Must Support - Choice of Terminology

In AU Core elements that define support for more than one terminology only apply to the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) part of the element and are not intended to prevent systems from supplying only a text value. In such cases, the AU Core Responders **SHALL** be able to populate from at least one supported terminology, and AU Core Requesters **SHALL** support processing resources with all supported terminologies. 

The table below lists the applicable profiles and elements in AU Core.

AU Core Profile |Must Support Sub-Element|Terminology Choices
---|---
AU Core Immunization|Immunization.code.coding|[Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1), [Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1)
AU Core Medication|Medication.code.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
AU Core MedicationRequest|MedicationRequest.code.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
{:.grid}

For example, the profile [AU Core Medication](StructureDefinition-au-core-medication.html) constrains the terminology choices for `Medication.code.coding` defined in [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html) to support [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) and [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html) as indicated by flagging Must Support on those two terminology slices.

When claiming conformance to the AU Core Medication profile: 
- AU Core Responders **SHALL** be capable of populating `Medication.code.coding` with a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, if a coded value is available.
- AU Core Requesters **SHALL** be capable of meaningfully processing a Medication resource with `Medication.code.coding` with both.
- Systems **MAY** support populating and processing other terminologies but this is not a requirement of AU Core.

