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

AU Core profile elements include Mandatory and Must Support requirements. [Mandatory elements](#mandatory-elements) are required and have a minimum cardinality of 1 (min=1). [Must Support](#must-support) elements have defined conformance obligations in AU Core based on actor roles.

Systems may declare conformance to AU Core profiles based on one of the following two conformance tiers: 
- [Profile Only Support](#profile-only-support) for a system declaring conformance to an AU Core profile
- [Profile and Interaction Support](#profile--interaction-support) for a system declaring conformance to one of the [AU Core Capability Statements](#au-core-capability-statements)

#### AU Core Capability Statements
This CapabilityStatement describes the basic rules for the [AU Core Requester actor](ActorDefinition-au-core-actor-requester.html) that is responsible for creating and initiating the queries for information. The complete list of FHIR profiles, RESTful operations, and search parameters supported by AU Core Requesters are defined in this CapabilityStatement. AU Core Responders define their capabilities by choosing from this list based on the resource types they need to access.

The [AU Core Responder CapabilityStatement](CapabilityStatement-au-core-responder.html) outlines conformance requirements and expectations for the [AU Core Responder actor](ActorDefinition-au-core-actor-responder.html) that is responsible for providing responses to queries submitted by AU Core Requester actors. The complete list of FHIR profiles, RESTful operations, and search parameters supported by AU Core Responders are defined in this CapabilityStatement.

#### Profile Only Support
A system that represent digital health information using the content models of AU Core profiles without the expectation to implement any AU Core interactions can declare _Profile Only Support_ to one or more AU Core profiles. 

A system that declares _Profile Only Support_ conformance to an AU Core profile:
- **SHALL** correctly populate a resource with all mandatory elements specified in the profile’s definition.
- **SHALL** correctly populate a resource with all _Must Support_ elements if they know a value for the element, but it is acceptable if the system is unable to ever know a value for the element. 
- **SHALL** implement the requirements on [Missing data](general-requirements.html#missing-data) when an element value is not known.

A system is not required to declare _Profile Only Support_ to all AU Core profiles. For example, a pathology laboratory system that implements the [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html) profile, is not required to produce a MedicationRequest resource. 

**Declaring Conformance**

Servers that implement _Profile Only Support_ to AU Core profiles declare conformance to each profile by hosting a [CapabilityStatement](http://hl7.org/fhir/capabilitystatement.html) resource at [server-base-url]/metadata that is available to both authenticated and unauthenticated clients. The capability statement declares _Profile Only Support_ for a resource as either a base profile using [CapabilityStatement.rest.resource.profile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.profile) or supported profile using [CapabilityStatement.rest.resource.supportedProfile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.supportedProfile).

Example: CapabilityStatement resource for a server supporting the AU Core Patient profile as a system-wide profile that is applied across all instances of the Patient resource:

    ```
    {
      "resourceType": "CapabilityStatement",
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

_Profile + Interaction Support_ refers to a system that represents digital health information using the content models of AU Core profiles AND implement the REST API interactions defined by the applicable AU Core capability statement.

An AU Core Responder that declares 'Profile + Interaction Support' conformance:
- **SHALL** declare conformance to the 'AU Core Responder Capability Statement' in the server's CapabilityStatement.
- **SHALL** specify the implemented resource types, associated AU Core profiles, REST API interactions and search parameters in the server's CapabilityStatement
- **SHALL** implement the [Mandatory](#mandatory-elements) and/or [Must Support](#must-support) requirements for the elements defined as such in the implemented AU Core profiles
- **SHALL** implement the required REST API interactions and search parameters as defined in the [AU Core Responder Capability Statement](CapabilityStatement-au-core-responder.html#resourcesSummary1).

An AU Core Requester that declares 'Profile + Interaction Support' conformance:
- ~~**SHOULD** declare conformance to the 'AU Core Client Capability Statement' in the clients's CapabilityStatement.~~
- ~~**SHOULD** specify the implemented resource types, associated AU Core profiles, REST API interactions and search parameters in the client's CapabilityStatement~~
- **SHALL** implement the [Mandatory](#mandatory-elements) and/or [Must Support](#must-support) requirements for the elements defined as such in the implemented AU Core profiles
- **SHALL** implement the required REST API interactions and search parameters as defined in the [AU Core Requester Capability Statement](CapabilityStatement-au-core-requester.html#resourcesSummary1).


**Declaring Conformance**

Servers that implement _Profile + Interaction Support_ declares conformance by hosting a [CapabilityStatement](http://hl7.org/fhir/capabilitystatement.html) at [server-base-url]/metadata, available to both authenticated and unauthenticated clients. The server's [CapabilityStatement instantiates](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) element references the [AU Core Server Capability Statement](CapabilityStatement-au-core-server.html#resourcesSummary1), as shown in the following fragment:

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

### Mandatory Elements
Mandatory elements are elements with a minimum cardinality of 1 (min=1). When an element is Mandatory, the data is expected to always be present. Very rarely, it may not be, and in this circumstance the requirements in [Missing Data](#missing-data) **SHALL** be applied.

### Must Support
Labelling an element *[Must Support](https://www.hl7.org/fhir/conformance-rules.html#mustSupport)* means that systems that produce or consume resources **SHALL** provide support for the element in some meaningful way. The FHIR standard does not define exactly what 'meaningful' support for an element means, but indicates that a profile **SHALL** make clear exactly what kind of support is required when an element is labelled as Must Support.

Because AU Core is a foundational standard, *Must Support* needs to be defined a way that does not impede or prescribe what a client or server does with the data, so as not to impede each implementation’s ability to tighten and define expectations for use under their own business rules, regulations, policies, etc. There is also a the challenge that comes from inheritance of must support flags into implementation guides that have strict definitions for must support (e.g., must be able to display this value to an end user), AU Core will only apply the *Must Support* flag on the elements that are necessary to support _minimum_ requirements and are expected to be flagged as *Must Support* across the majority of Australian FHIR implementation guides.

In AU Core, the meaning of Must Support is specified in terms of [Obligation Codes](https://hl7.org/fhir/extensions/CodeSystem-obligation.html). The obligation codes used to define the minimum obligations of Must Support elements in this implementation guide are reiterated below.

Code | Display | Definition | Notes
--- | --- | --- | ---
populate-if-known | populate if known | Conformant applications producing resources SHALL/SHOULD correctly populate this element if they know a value for the element, but it is acceptable if the system is unable to ever know a value for the element. | This obligation does not impose a requirement to be able to know a value, unlike populate and able-to-populate which do. 'Knowing' an element means that a value for the element is available in memory, persistent store, or is otherwise available within the system claiming conformance.
no-error | not error if present | Conformant applications SHALL/SHOULD accept resources containing any valid value for the element without error. | Applications are still able to inform the user that a value cannot be processed correctly and may ignore the data, but applications aren't able to reject an instance merely because the element is present (which would be allowed for elements that do not have this obligation). A system MAY raise an error if the value provided is not valid or violates specific business rules. This obligation also applies to elements that only contain an extension in place of a value where (or equivalent), should either of these be allowed on the consumer obligations

Must Support elements are treated differently between [AU Core Responder actors](ActorDefinition-au-core-actor-responder.html) and [AU Core Requester actors](ActorDefinition-au-core-actor-requester.html), *Must Support* on a profile element **SHALL** be interpreted as follows.

#### AU Core Responder
An AU Core Responder:
- **SHALL** correctly populate all _Must Support_ elements if they know a value for the element, but it is acceptable if the system is unable to ever know a value for the element.
- **SHALL** implement the requirements on [Suppressed Data](general-requirements.html#suppressed-data) when an element is NOT allowed to be shared.
- **SHALL** implement the requirements on [Missing data](general-requirements.html#missing-data) when an element is not known.
  - ~~**SHALL NOT** populate the element when the element is optional.~~
  - ~~**SHALL** correctly populate the element when the element is mandatory by following the instructions in the section on [Missing data](general-requirements.html#missing-data).~~

When a _Must Support_ element requires a more tightly stated obligation, this obligation is specified in the AU Core Responder [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

#### AU Core Requester
An AU Core Requester:
- **SHALL** accept resources containing any valid value for _Must Support_ elements without error.
- **SHALL** accept resources containing _Must Support_ elements with [Missing data](#missing-data) or [Suppressed data](#suppressed-data) without error.

How the system processes the resource depends on local requirements that could align with obligation terms such as [reject invalid](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-reject-invalid), [correctly handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-handle), [persist](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-persist), [display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-display), or [ignore](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-ignore).

When a _Must Support_ element requires a more tightly stated obligation, this obligation is specified in the AU Core Requester [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

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
Primitive elements are single elements with a primitive value. If the primitive element is labelled as *Must Support*, then the 
- AU Core Responder **SHALL** populate the element if a value is known and allowed to be shared. 
- AU Core Requesters **SHALL** accept resource without error if element present containing any valid value.

For example, the AU Core Organization Profile `name` element is a primitive string datatype. Therefore, when claiming conformance to this profile:

- AU Core Responder **SHALL** populate a value in `Organization.name` if a value is know or allowed to be shared.
- AU Core Requester **SHALL** accept an Organization resource without error if `Organization.name` is present and containing any valid value.

##### Must Support - Complex Elements
Complex elements are composed of primitive and/or other complex elements. Elements may have additional rules defined in the profile that also apply, e.g. terminology binding, or invariants. 

For any complex element labelled as *Must Support*, an:
- AU Core Responder **SHALL** populate the element with at least one of the sub-element values.
- AU Core Requester **SHALL** accept resource without error if element is present and containing any sub-elements.

For example, the AU Core MedicationRequest Profile `note` element is labelled *Must Support* and has no *Must Support* sub-elements. When claiming conformance to this profile:
- AU Core Responder **SHALL** populate a value in a `MedicationRequest.note` sub-element if a value is known and allowed to be shared e.g. `MedicationRequest.note.text`.
- AU Core Requester **SHALL** accept the MedicationRequest resource without error if `MedicationRequest.note` is present and containing any sub-elements.

If any sub-element is labelled as *Must Support*, an: 
- AU Core Responder **SHALL** populate the element with all _Must Support_ sub-elements if a value is known and allowed to be shared. 
- AU Core Requester **SHALL** accept resource without error if _Must Support_ sub_elements are present containing any valid value.

For example, if AU Core Patient Profile name element is labelled *Must Support* and has *Must Support* sub-elements `family` and `given`. When claiming conformance to this profile:
- AU Core Responder **SHALL** populate a value in `Patient.name.family` and `Patient.name.given`.
- AU Core Requester **SHALL** accept a Patient resource without error if `Patient.name` present and containing valid values in `family` and `given` sub-element.

##### Must Support - Resource References
Some elements labelled as *Must Support* reference multiple resource types or profiles (e.g., Observation.performer). 
- AU Core Responder **SHALL** populate the element with at least one referenced resource or profile types allowed. 
- AU Core Requester **SHALL** accept resource without error if element present and containing any referenced resource or profile types allowed.

The table below provides a list of AU Core profile elements that allow multiple referenced resource or profile types.

AU Core Profile |Must Support Element|Reference
---|---|---
AU Core Blood Pressure|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Body Height|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Body Temperature|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Body Weight|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Diagnostic Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Diagnostic Result Observation|Observation.hasMember|AU Core Diagnostic Result Observation, AU Core Pathology Result Observation
AU Core Heart Rate|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Pathology Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Procedure|Procedure.reasonReference|AU Core Condition, Observation, AU Core Procedure, DocumentReference
AU Core Provenance|Procedure.agent.who|AU Core Practitioner, AU Core PractitionerRole, RelatedPerson, AU Core Patient, Device, AU Core Organization
AU Core Provenance|Procedure.agent.onBehalfOf|AU Core Practitioner, AU Core PractitionerRole, RelatedPerson, AU Core Patient, Device, AU Core Organization
AU Core Respiration Rate|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Smoking Status|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
AU Core Waist Circumference|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, RelatedPerson
{:.grid}


##### Must Support - Choice of Data Types
Some elements labelled as *Must Support* allow different data types (e.g., Observation.effective[x]) for their content. 
- AU Core Responder **SHALL** populate the element with at least one data type allowed by the element definition 
- AU Core Requester **SHALL** accept resource without error if element is present and containing any valid data type allowed by the element definition.

The table below provides a list of AU Core profile elements that allow multiple data types.

AU Core Profile |Must Support Element|Data Types
---|---|---
AU Core AllergyIntolerance|AllergyIntolerance.onset[x]|dateTime, age, Period, Range
AU Core Condition|Condition.onset[x]|dateTime, age, Period, Range
AU Core Diagnostic Result Observation|Observation.effective[x]|dateTime, Period, Timing, instant
AU Core Diagnostic Result Observation|Observation.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, Period
AU Core Diagnostic Result Observation|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, Period
AU Core Immunization|Immunization.occurrence[x]|dateTime, string
AU Core Immunization|Immunization.doseNumber[x]|positiveInt, string
AU Core Medication|Medication.ingredient.item[x]|CodeableConcept, Reference
AU Core MedicationRequest|MedicationRequest.medication[x]|CodeableConcept, Reference
AU Core MedicationRequest|MedicationRequest.substitution.allowed[x]|boolean, CodeableConcept
AU Core Procedure|Procedure.performed[x]|dateTime, Period, string, Age, Range
AU Core Provenance|Provenance.occurred[x]|Period, dateTime
{:.grid}

If any data type is labelled as *Must Support*, an: 
- AU Core Responder **SHALL** populate the element with at least one data type labelled as _Must Support_. 
- AU Core Requester **SHALL** accept resource without error if element is present and containing any valid data type allowed by the element definition. 

Note: The AU Core Requester is still required to accept any data types allowed by the element definition to support the case when an AU Core Responder populates a data type other than one labelled as _Must Support_ due to a value not known for the _Must SUpport_ types.


##### Must Support - Choice of Identifiers
A profile may support one or more than one identifier type and will include the supported identifiers in a profile by slicing the element and placing must support on each identifier slice. 
- AU Core Responder **SHALL** populate the element with at least one identifier type allowed by the element definition. 
- AU Core Requester **SHALL** accept resource without error if element is present and containing any identifier type allowed by the element definition.

The table below provides a list of AU Core profile elements that allow multiple identifier types.

AU Core Profile |Must Support Element|Supported Identifiers
---|---|---
AU Core Organization|Organization.identifier|HPI-O, Australian Business Number
AU Core Patient|Patient.identifier|IHI, Medicare Card Number, DVA Number
AU Core Practitioner|Practitioner.identifier|HPI-I
AU Core PractitionerRole|PractitionerRole.identifier|Medicare Provider Number
{:.grid}

For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) constrains the choices for `Patient.identifier` defined in [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) to support Individual Healthcare Identifier (IHI), Medicare Card Number, Department of Veterans' Affairs (DVA) Number. When claiming conformance to the AU Core Patient Profile:
- AU Core Responder **SHALL** populate `Patient.identifier` with an IHI, or Medicare Care Number, or DVA Number, or any combination of them
- AU Core Requester **SHALL** accept Patient resource resource if `Patient.identifier` is present containing any IHI, Medicare Care Number, or DVA Number identifier type.

Systems **MAY** support populating and processing other identifiers, but this is not a requirement of AU Core.

##### Must Support - Choice of Profile Elements

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [AU Core Encounter](StructureDefinition-au-core-encounter.html). In such cases, the
- AU Core Responder **SHALL** be able to populate at least one element, 
- AU Core Requester **SHALL** support processing resources with all supported elements. 

The table below lists the applicable profiles and elements in AU Core.

AU Core Profile |Must Support Choice Elements
---|---
AU Core Encounter|Encounter.reasonCode, Encounter.reasonReference
AU Core Procedure|Procedure.reasonCode, Procedure.reasonReference
{:.grid}


##### Must Support - Choice of Terminology

In AU Core elements that define support for more than one code system only apply to the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) part of the element and are not intended to prevent systems from supplying only a text value. In such cases, the 
- AU Core Responders **SHALL** populate the element from at least one supported code system
- AU Core Requesters **SHALL** accept resources without error an element containing any valid code system. 

The table below lists the applicable profiles and elements in AU Core that allow multiple code systems.

AU Core Profile |Must Support Sub-Element|Terminology Choices
---|---
AU Core Immunization|Immunization.code.coding|[Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1), [Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1)
AU Core Medication|Medication.code.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
AU Core MedicationRequest|MedicationRequest.code.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
{:.grid}

For example, the profile [AU Core Medication](StructureDefinition-au-core-medication.html) constrains the terminology choices for `Medication.code.coding` defined in [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html) to support [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) and [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html) as indicated by flagging Must Support on those two terminology slices.

When claiming conformance to the AU Core Medication profile: 
- AU Core Responders **SHALL** populate `Medication.code.coding` with either a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, if a coded value is known.
- AU Core Requesters **SHALL** accept a Medication resource without error if `Medication.code.coding` present with either a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both.

Systems **MAY** populate and accept other code systems but this is not a requirement of AU Core.

### Missing Data

There are situations when information for a  data element is missing and the  system does not know reason for the absence of data. 

When an element definition is *optional* (minimum cardinality = 0), including elements labelled *Must Support*, an
- AU Core Responder **SHALL NOT** populate the element in the resource when a value is not known.  

When element definition is *Mandatory* (minimum cardinality > 0), 
- AU Core Responder **SHALL** populate the element *even when* the system does not know a value or the reason a the value is absence. 

The core specification provides guidance for what to do in this situation, which is summarised below.

1.  For *non-coded* data elements including type [Reference](http://hl7.org/fhir/R4/references.html#Reference), 
  - when the AU Core profile for the element does not require a sub-element
    - use the [DataAbsentReason extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html) in the data type 
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
      
  - when the AU Core profile mandates a sub-element, such as a valid Identifier or Reference data type, then the resource must contain the sub-element otherwise the resource will not be conformant,

1. For *coded* data elements:
   - *example*, *preferred*, or *extensible* binding strengths (CodeableConcept, or Coding datatypes):
      - when the system has text but no coded value, only the text sub-element is populated.
          - ~~for Coding datatypes, the text only data is represented as a `display` element.~~
      - when there is neither text or coded value:
        - the appropriate "unknown" concept code **SHALL** be populated if available when the binding strength is *extensible*
        - when the value set does not have an appropriate "unknown" concept code, use `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason).

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
      - the appropriate "unknown" concept code **SHALL** be populated if available.
      - ~~if the value set does not have an appropriate "unknown" concept code, use a concept from the value set otherwise the instance will not be conformant.~~

      - For AU Core profiles, the following *mandatory* or *conditionally mandatory* status elements with required binding have no appropriate "unknown" concept code:
        - `AllergyIntolerance.clinicalStatus`
        - `Condition.clinicalStatus`
        - `Immunization.status`


        - ~~The clinicalStatus element is *conditionally mandatory* based on resource specific constraints. ~~


### Suppressed Data
In some circumstances, specific pieces of data may be hidden due to security or privacy reasons. 

When an element definition is *optional* (minimum cardinality = 0), including elements labelled *Must Support*, an
- AU Core Responder **SHALL NOT** populate the element in the resource when a value is suppressed.  

When an element definition is *Mandatory* (minimum cardinality > 0), 
- AU Core Responder **SHALL** populate the element but it may exceed the data requester's access rights to know that the data is suppressed:
  - where a requester does not have access rights to know that data is suppressed use the code `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).
  - where a requester may know that the data is suppressed use the code `masked` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).

