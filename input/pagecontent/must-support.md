Labelling an element *[Must Support]( https://www.hl7.org/fhir/conformance-rules.html#mustSupport)* means that systems that request, or respond to requests, for patient data **SHALL** provide support for the element in some meaningful way. Must Support elements are treated differently between AU Core Responders and requestors. 


### Must Support Requirements

For querying and reading AU Core profiles, *Must Support* on any profile data element **SHALL** be interpreted as follows.

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

Processing, depending on local requirements, may mean display, persist, index, or action in an event or request workflow. Processing may differ based on the element’s value. For example, one possible value of the [ServiceRequest.status](https://hl7.org/fhir/r4/servicerequest-definitions.html#ServiceRequest.status) element is `entered-in-error`. This element is marked as Must Support; requestors must be capable of processing this value to handle the resource’s clinical data appropriately.


### Presentation of elements labelled Must Support in profiles

#### Presentation of elements labelled Must Support in table views

When rendered in an implementation guide each profile is presented in different formal views under tabs labelled "Differential Table", "Key Elements Table", and "Snapshot Table".

The elements labelled *Must Support* in these views are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. Implementers should refer to the "Key Elements Table" to see the full set of elements that are Mandatory or Must Support, and the full set of terminology requirements.

Implementers should take note that the full set of constraints (i.e. invariants) are only presented in the "Detailed Descriptions" tab or the raw representation (e.g. XML or JSON) of the profile. 

#### Presentation of elements labelled *Must Support* in raw representations

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


### Interpreting profile elements labelled Must Support

Profiles defined in this implementation publication flag *Must Support* on elements and not part subelements of a data type. 
The explanation on how to interpret *Must Support* for an element does not address rules defined in each profile - which may limit or extend what is allowed for each element.

The subelements for each supported element in a profile are defined by a combination of the data type from the core specification and any additional rules included in the profile. A profile may include rules that:
- limit what is considered 'valid'
- extend the potential subelements by including an extension

For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) limits what is considered valid for the element `Patient.name` with the invariant "**au-core-pat-02:** At least one patient name shall have a family name".

Typically AU Core profiles will inherit extended subelements from a HL7 AU Base profile, e.g. the element `Medication.code` in profile [AU Core Medication](StructureDefinition-au-core-medication.html) is of type CodeableConcept and is extended by inheriting a medicine specific subelement `Medication.code.coding.extension` [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) from [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html). 

The full set of subelements is visible in the "Key Elements Table" or "Snapshot Table" which shows the subelements defined in this profile (shown in the "Differential Table") and the subelements inherited from a base profile.



#### Must Support for elements of primitive type

- An AU Core Responder **SHALL** be capable of populating the element
  - providing a valid value in the element if the data is available
  - asserting missing or suppressed data if the data is not available
- An AU Core Requester **SHALL** be capable of meaningfully processing the element with
  - a valid value
  - missing or suppressed data


#### Must Support for elements of complex type

- An AU Core Responder **SHALL** be capable of populating the element
  - providing a valid value in the element if the data is available
  - asserting missing or suppressed data if the data is not available
- An AU Core Requester **SHALL** be capable of meaningfully processing the element with
  - a valid value in any or all parts of the complex type (since the requester cannot anticipate which subelements might be populated) 
  - missing or suppressed data


For some complex types a valid value can be constructed by populating only one subelement, but usually more than one subelement is needed.


#### Must Support for elements of Reference type

- An AU Core Responder **SHALL** be capable of populating the element
  - providing a valid reference to a resource conforming to at least one of the referenced resource types in the profile if the data is available, and **SHOULD** be capable of populating every choice for which the system might possess data
  - asserting missing or suppressed data if the data is not available
- An AU Core Requester **SHALL** be capable of meaningfully processing the element with 
  - a valid reference to all resource types defined in the profile (since the requester cannot anticipate which resource types might be referenced)
  - missing or suppressed data


#### Must Support for elements with a choice of data types or profiles
 
- An AU Core Responder **SHALL** be capable of populating the element
  - providing a value that conforms to at least one choice in the profile if the data is available, and **SHOULD** be capable of populating every choice for which the system might possess data
  - asserting missing or suppressed data if the data is not available
- An AU Core Requester **SHALL** be capable of meaningfully processing the element with
  - a valid value supporting all data types and profiles in the profile (since the requester cannot anticipate which data type or profile might be populated) 
  - missing or suppressed data


A profile may support one or more than one identifier type and will include the supported identifiers in a profile by slicing the element and placing must support on each identifier slice. For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) constrains the choices for `Patient.identifier` defined in [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) to support Individual Healthcare Identifier (IHI), Medicare Card Number, Department of Veterans' Affairs (DVA) Number:
- An AU Core Responder **SHALL** be capable of populating the element 
  - with a value that conforms to at least one of those three identifier choices if the data is available, and **SHOULD** be capable of populating every choice for which the sending system might possess data
  - asserting missing or suppressed data if the data is not available
- An AU Core Requester **SHALL** be capable of meaningfully processing the element with
  - any supported identifier choice (since the requester cannot anticipate which data type or profile might be populated) \
  - missing or suppressed data


The table below lists the applicable profiles and supported identifier types in AU Core.

AU Core Profile |Must Support Choice Elements| Supported Identifiers
---|---|---
AU Core Coverage|Coverage.identifier|Medicare Card Number, DVA Number, Insurance Member Number
AU Core System Device|Device.identifier|PAI-D
AU Core HealthcareService|HealthcareService.identifier|HPI-O
AU Core Organization|Organization.identifier|HPI-O, Australian Business Number
AU Core Patient|Patient.identifier|IHI, Medicare Card Number, DVA Number
AU Core Practitioner|Practitioner.identifier|HPI-I
AU Core PractitionerRole|PractitionerRole.identifier|HPI-I, Medicare Provider Number
AU Core RelatedPerson|RelatedPerson.identifier|IHI, Medicare Card Number, DVA Number
{:.grid}

#### Must Support where there is a choice between an element of type CodeableConcept and type Reference

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [AU Core Encounter](StructureDefinition-au-core-encounter.html). Where both elements are optional and labelled *Must Support* in a profile they **SHALL** be treated as a choice of data types:
- An AU Core Responder **SHALL** be capable of populating at a resource with
  - at least one element of choice if the data is available, and **SHOULD** be capable of populating every choice for which the system might possess data
  - asserting missing or suppressed data if the data is not available
- An AU Core Requester **SHALL** be capable of meaningfully processing the resource with
  - either element with a valid value (since the requester cannot anticipate which element might be populated) 
  - either element containing missing or suppressed data

The table below lists the applicable profiles and elements in AU Core.

AU Core Profile |Must Support Choice Elements
---|---
AU Core DiagnosticReport|DiagnosticReport.conclusion, DiagnosticReport.conclusionCode
AU Core Encounter|Encounter.reasonCode, Encounter.reasonReference[x]
AU Core MedicationAdministration|MedicationAdministration.reasonCode, MedicationAdministration.reasonReference
AU Core Procedure|Procedure.reasonCode, Procedure.reasonReference[x]
AU Core ServiceRequest |ServiceRequest.reasonCode, ServiceRequest.reasonReference
AU Core ServiceRequest |ServiceRequest.performerType, ServiceRequest.performer
{:.grid}


#### Must Support for elements with a terminology bindings

A profile element that supports only one terminology will include that terminology by binding the element in the profile with a strength of [extensible](http://hl7.org/fhir/R4/terminologies.html#extensible) or [required](http://hl7.org/fhir/R4/terminologies.html#required).

A profile element that supports more than one terminology will include the supported terminologies in a profile by slicing the element and placing must support on each terminology slice. For example, the profile [AU Core Medication](StructureDefinition-au-core-medication.html) constrains the terminology choices for `Medication.code` defined in [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html) to support only AMT and PBS.

In the example, a coded value is optional, a system that does not have the capability to supply a coded value from a terminology may supply a text value.

When supplying a coded value:
- An AU Core Responder **SHALL** be capable of populating the element
  - with a value that conforms to at least one of the supported terminologies if the data is available, and **SHOULD** be capable of populating every choice for which the system might possess data
  - asserting missing or suppressed data if the data is not available
- An AU Core Requester **SHALL** be capable of meaningfully processing the element with
  - any supported terminology (since the requester cannot anticipate which data type or profile might be populated) 
  - asserting missing or suppressed data if the data is not available
