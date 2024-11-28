### Conforming to AU Core

There are two different ways to implement AU Core:
1. [Profile Only Support](#profile-only-support): system that represents digital health information using AU Core profiles without the expectation to implement any FHIR specified interactions.
1. [Profile Support + Interaction Support](#profile-support--interaction-support): system that represents digital health information using AU Core profiles (Profile Support) AND implements the [FHIR REST API](http://hl7.org/fhir/R4/http.html) interactions defined by an [AU Core Capability Statement](capability-statements.html) (Interaction Support).

The requirements of the FHIR standard and [FHIR Conformance Rules](http://hl7.org/fhir/conformance-rules.html) apply, and define the use of terms in this guide including the conformance verbs - **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT**, **MAY**.

Implementers are advised to be familiar with the requirements of the FHIR standard when implementing AU Core, in particular:
- [FHIR Terminology requirements](http://hl7.org/fhir/R4/terminologies.html)
- [FHIR RESTful API](http://hl7.org/fhir/R4/http.html) 
- [FHIR Search](http://hl7.org/fhir/R4/search.html)
- [FHIR Resource formats](http://hl7.org/fhir/R4/resource.html)
- [FHIR Data Types](http://hl7.org/fhir/R4/datatypes.html)

### Conformance Artifacts

#### AU Core Profiles and Extensions
The [Profiles and Extensions](profiles-and-extensions.html) page lists the AU Core profiles and AU Core extensions defined for this implementation guide. An AU Core profile [StructureDefinition](http://hl7.org/fhir/R4/structuredefinition.html) defines the minimum elements, extensions, vocabularies and value sets that **SHALL** be present and constrains the way elements are used when conforming to the profile.

AU Core profile elements include mandatory and *Must Support* requirements. [Mandatory elements](#mandatory-elements) are required and have a minimum cardinality of 1 (min=1). [Must Support](#must-support-and-obligation) elements have defined conformance obligations in AU Core based on actor roles.

Systems may implement AU Core as: 
- [Profile Only Support](#profile-only-support) for a system declaring conformance to one or more AU Core profiles
- [Profile Support + Interaction Support](#profile-support--interaction-support) for a system declaring conformance to one or both of the [AU Core Capability Statements](capability-statements.html)

#### AU Core Capability Statements
The [AU Core Requester CapabilityStatement](CapabilityStatement-au-core-requester.html) defines the conformance requirements and expectations of an [AU Core Requester](ActorDefinition-au-core-actor-requester.html) actor responsible for initiating queries for information from an [AU Core Responder](ActorDefinition-au-core-actor-responder.html). The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU Core Requester are defined in this capability statement. 

The [AU Core Responder CapabilityStatement](CapabilityStatement-au-core-responder.html) defines the conformance requirements and expectations of an [AU Core Responder](ActorDefinition-au-core-actor-responder.html) actor responsible for providing responses to queries submitted by an [AU Core Requester](ActorDefinition-au-core-actor-requester.html). The complete list of FHIR profiles, REST API interactions, and search parameters that can be implemented by an AU Core Responder are defined in this capability statement. An AU Core Responder declares conformance to this list of capabilities based on the resource types and interactions it implements.

#### Profile Only Support
A system that represents digital health information using the content models of AU Core profiles without the expectation to implement any AU Core interactions can declare Profile Only Support to one or more AU Core profiles. 

A system that [declares conformance](declaring-conformance.html#profile-only-support) as Profile Only Support to an AU Core profile:
- **SHALL** correctly populate a resource with all mandatory elements specified in the profile’s definition.
- **SHALL** correctly populate a resource with all *Must Support* elements for which a value is known. 
- **SHALL** implement the requirements on [Missing Data](general-requirements.html#missing-data) when an element value is not known.

A system is not required to declare Profile Only Support to all AU Core profiles. For example, a pathology laboratory system that implements the [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html) profile, is not required to produce a MedicationRequest resource. 

#### Profile Support + Interaction Support

Profile Support + Interaction Support refers to a system that represents digital health information using the content models of AU Core profiles AND implement the REST API interactions defined by the applicable AU Core capability statement.

An [AU Core Responder](ActorDefinition-au-core-actor-responder.html) that declares Profile Support + Interaction Support conformance:
- **SHALL** [declare conformance](declaring-conformance.html#profile-support--interaction-support) to the [AU Core Responder Capability Statement](CapabilityStatement-au-core-responder.html) in the server's CapabilityStatement.
- **SHALL** specify the implemented resource types, associated AU Core profiles, REST API interactions and search parameters in the server's CapabilityStatement.
- **SHALL** implement the [mandatory](#mandatory-elements) and/or [Must Support](#must-support-and-obligation) requirements for the elements defined as such in the implemented AU Core profiles.
- **SHALL** implement the required REST API interactions and search parameters as defined in the [AU Core Responder Capability Statement](CapabilityStatement-au-core-responder.html#resourcesSummary1).

An [AU Core Requester](ActorDefinition-au-core-actor-requester.html) that declares Profile Support + Interaction Support conformance:
- **SHALL** implement the [mandatory](#mandatory-elements) and/or [Must Support](#must-support-and-obligation) requirements for the elements defined as such in the implemented AU Core profiles.
- **SHALL** implement the required REST API interactions and search parameters as defined in the [AU Core Requester Capability Statement](CapabilityStatement-au-core-requester.html#resourcesSummary1).

### Mandatory Elements
Mandatory elements are elements with minimum cardinality > 0. When an element is mandatory, the data is expected to always be present. Very rarely, it may not be, and in this circumstance the requirements in [Missing Data](#missing-data) **SHALL** be applied. An element can be both *Must Support* and mandatory, in which case the requirements for mandatory's Missing Data requirements apply as described in [Missing Must Support and Mandatory Data](general-requirements.html#missing-must-support-and-mandatory-data).

The convention in this guide is to mark all mandatory elements as *Must Support* unless they are nested under an optional element.

### Must Support and Obligation
Labelling an element *[Must Support](https://www.hl7.org/fhir/conformance-rules.html#mustSupport)* means that systems that produce or consume resources **SHALL** provide support for the element in some meaningful way. The FHIR standard does not define exactly what 'meaningful' support for an element means, but indicates that a profile **SHALL** make clear exactly what kind of support is required when an element is labelled as *Must Support*.

Because AU Core is a foundational standard, *Must Support* needs to be defined in a way that does not impede or prescribe what a system does with the data, so as not to impede each implementation’s ability to tighten and define expectations for use under their own business rules, regulations, policies, etc. There is also a challenge that comes from inheritance of *Must Support* flags into implementation guides that have strict definitions for *Must Support* (e.g., must be able to display this value to an end user). AU Core will only apply the *Must Support* flag on the elements that are necessary to support _minimum_ requirements and are expected to be flagged as *Must Support* across the majority of Australian FHIR implementation guides.

In AU Core, the meaning of *Must Support* is specified in terms of [Obligation Codes](https://hl7.org/fhir/extensions/CodeSystem-obligation.html) in [obligation extensions](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition. The obligation codes used to define the minimum obligations of *Must Support* elements in this implementation guide are reiterated below.

Actor | Code | Display | Definition | Notes
--- | --- | --- | --- | ---
[AU Core Responder](ActorDefinition-au-core-actor-responder.html) | [SHALL:populate-if-known](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58populate-if-known) | SHALL populate if known | Conformant applications producing resources SHALL correctly populate this element if they know a value for the element, but it is acceptable if the system is unable to ever know a value for the element. | This obligation does not impose a requirement to be able to know a value, unlike populate and able-to-populate which do. 'Knowing' an element means that a value for the element is available in memory, persistent store, or is otherwise available within the system claiming conformance.
[AU Core Requester](ActorDefinition-au-core-actor-requester.html) | [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) | SHALL not error if present | Conformant applications SHALL accept resources containing any valid value for the element without error. | Applications are still able to inform the user that a value cannot be processed correctly and may ignore the data, but applications aren't able to reject an instance merely because the element is present (which would be allowed for elements that do not have this obligation). A system MAY raise an error if the value provided is not valid or violates specific business rules. This obligation also applies to elements that only contain an extension in place of a value where (or equivalent), should either of these be allowed on the consumer obligations

*Must Support* elements are treated differently between [AU Core Responder](ActorDefinition-au-core-actor-responder.html) and [AU Core Requester](ActorDefinition-au-core-actor-requester.html) actors. *Must Support* on a profile element **SHALL** be interpreted as follows.

#### AU Core Responder
An AU Core Responder:
- **SHALL** correctly populate all *Must Support* elements for which a value is known.
- **SHALL** implement the requirements on [Suppressed Data](general-requirements.html#suppressed-data) when an element is NOT allowed to be shared.
- **SHALL** implement the requirements on [Missing Data](general-requirements.html#missing-data) when an element value is not known.

When a *Must Support* element requires a more tightly stated obligation, this obligation is specified in the AU Core Responder [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

#### AU Core Requester
An AU Core Requester:
- **SHALL** accept resources containing any valid value for *Must Support* elements without error.
- **SHALL** accept resources containing *Must Support* elements with [Missing Data](#missing-data) or [Suppressed data](#suppressed-data) without error.

How the system processes the resource depends on local requirements that could align with obligation terms such as [reject invalid](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-reject-invalid), [correctly handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-handle), [persist](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-persist), [display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-display), or [ignore](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-ignore).

When a *Must Support* element requires a more tightly stated obligation, this obligation is specified in the AU Core Requester [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

#### Presentation of elements labelled Must Support and Obligation in profiles

##### Presentation of elements labelled Must Support and Obligation in table views

When rendered in an implementation guide each profile is presented in different formal views under tabs labelled "Differential Table", "Key Elements Table", and "Snapshot Table".

The elements labelled *Must Support* in these views are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. The elements labelled with *Obligation* in these views are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element has obligations">O</span>.  The elements labelled *Must Support* and *Obligation* in these views are are flagged with <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span><span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element has obligations">O</span>. Implementers should refer to the "Key Elements Table" to see the full set of elements that are mandatory or *Must Support* or with Obligations, and the full set of terminology requirements.

##### Presentation of elements labelled Must Support and Obligation in raw representations

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

When viewing the raw representation (e.g. XML or JSON) of a profile, elements with *Obligation* are indicated by the Obligation Extension.

Example: AU Core AllergyIntolerance profile showing *Obligation* on clinicalStatus
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
              "extension" : [{
                "extension" : [{
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
            },
            {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.au/fhir/core/ActorDefinition/au-core-actor-responder"
            }],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
            },
            {
                "extension" : [{
                "url" : "code",
                "valueCode" : "SHALL:no-error"
            },
            {
                "url" : "actor",
                "valueCanonical" : "http://hl7.org.au/fhir/core/ActorDefinition/au-core-actor-requester"
              }],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
            }],
    ...
}
~~~

#### Interpreting profile elements labelled Must Support

Profiles defined in this implementation publication flag *Must Support* on elements (e.g. `Patient.name`) and sub-elements of a data type (e.g. `Patient.name.use`). 
The explanation on how to interpret *Must Support* for an element does not address rules defined in each profile - which may limit or extend what is allowed for each element.

The sub-elements for each supported element in a profile are defined by a combination of the data type from the core specification and any additional rules included in the profile. A profile may include rules that:
- limit what is considered 'valid'
- extend the potential sub-elements by including an extension

For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) limits what is considered valid for the element `Patient.name` with the invariant "**au-core-pat-02:** At least one patient name shall have a family name".

Typically AU Core profiles will inherit extended sub-elements from a HL7 AU Base profile, e.g. the element `Medication.code` in profile [AU Core Medication](StructureDefinition-au-core-medication.html) is of type CodeableConcept and is extended by inheriting a medicine specific sub-element `Medication.code.coding.extension` [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) from [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html). 

The full set of sub-elements is visible in the "Key Elements Table" or "Snapshot Table" which shows the sub-elements defined in this profile (shown in the "Differential Table") and the sub-elements inherited from a base profile.


##### Must Support - Primitive Elements
Primitive elements are single elements with a primitive value. If a primitive element is labelled as *Must Support*: 
- AU Core Responders **SHALL** correctly populate the element if a value is known. 
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid value.

For example, the AU Core Organization Profile `name` element is a primitive string datatype. Therefore, when claiming conformance to this profile:
- AU Core Responders **SHALL** correctly populate a value in `Organization.name` if a value is known.
- AU Core Requesters **SHALL** accept the Organization resource without error if `Organization.name` is present and containing any valid value.

##### Must Support - Complex Elements
Complex elements are composed of primitive and/or other complex elements. Elements may have additional rules defined in the profile that also apply, e.g. terminology binding, or invariants. 

If a complex element is labelled as *Must Support*:
- AU Core Responders **SHALL** correctly populate the element with at least one of the sub-element values if the value is known.
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid sub-element.

For example, the AU Core MedicationRequest Profile `note` element is labelled *Must Support* and has no *Must Support* sub-elements. When claiming conformance to this profile:
- AU Core Responders **SHALL** correctly populate a value in any valid `MedicationRequest.note` sub-element if a value is known e.g. `MedicationRequest.note.text`.
- AU Core Requesters **SHALL** accept the MedicationRequest resource without error if `MedicationRequest.note` is present and containing any valid sub-elements.

If a sub-element is labelled as *Must Support*: 
- AU Core Responders **SHALL** correctly populate the element with all *Must Support* sub-elements for which a value is known. 
- AU Core Requesters **SHALL** accept resource without error if *Must Support* sub-elements are present and containing any valid value.

For example, in the AU Core Practitioner Profile, the `name` element is labelled *Must Support* and has *Must Support* sub-elements `family` and `given`. When claiming conformance to this profile:
- AU Core Responders **SHALL** correctly populate a value in `Practitioner.name.family` and `Practitioner.name.given` if the value for those sub-elements is known.
- AU Core Requesters **SHALL** accept a Patient resource without error if `Practitioner.name` is present and contains valid values in `Practitioner.name.family` and `Practitioner.name.given` sub-elements.

##### Must Support - Resource References
Some elements labelled as *Must Support* reference multiple resource types or profiles such as `Observation.performer`. In such cases: 
- AU Core Responders **SHALL** correctly populate the element with at least one referenced resource or allowed profile if the value is known. 
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid referenced resource or profiles.

The table below provides a list of AU Core profile elements that allow multiple referenced resource types or profiles.

AU Core Profile |Must Support Element|Reference
---|---|---
AU Core Diagnostic Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Base RelatedPerson
AU Core Diagnostic Result Observation|Observation.hasMember|AU Core Diagnostic Result Observation, AU Core Pathology Result Observation
AU Core Encounter|Encounter.participant.individual|AU Core Practitioner, AU Core PractitionerRole, AU Base Related Person
AU Core Encounter|Encounter.reasonReference|AU Core Condition, Observation, AU Core Procedure
AU Core Pathology Result Observation|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Base RelatedPerson
AU Core Procedure|Procedure.reasonReference|AU Core Condition, Observation, AU Core Procedure, DocumentReference
AU Core MedicationRequest|MedicationRequest.requester|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Base Related Person
AU Core MedicationRequest|MedicationRequest.reasonReference|AU Core Condition, Observation
{:.grid}


##### Must Support - Choice of Data Types
Some elements labelled as *Must Support* allow different data types such as `Observation.effective[x]`. In such cases:
- AU Core Responders **SHALL** correctly populate the element with at least one data type allowed by the element definition if the value is known.
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid data type allowed by the element definition.

The table below provides a list of AU Core profile elements that allow multiple data types.

AU Core Profile |Must Support Element|Data Types
---|---|---
AU Core AllergyIntolerance|AllergyIntolerance.onset[x]|dateTime, age, Period, Range
AU Core Condition|Condition.onset[x]|dateTime, age, Period, Range
AU Core Condition|Condition.abatement[x]|dateTime, age, Period, Range
AU Core Diagnostic Result Observation|Observation.effective[x]|dateTime, Period
AU Core Pathology Result Observation|Observation.effective[x]|dateTime, Period
AU Core Diagnostic Result Observation|Observation.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Pathology Result Observation|Observation.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Diagnostic Result Observation|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Pathology Result Observation|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Blood Pressure|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Body Height|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Body Temperature|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Body Weight|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Heart Rate|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Respiration Rate|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Waist Circumference|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
AU Core Immunization|Immunization.occurrence[x]|dateTime, string
AU Core MedicationRequest|MedicationRequest.medication[x]|CodeableConcept, Reference
AU Core Procedure|Procedure.performed[x]|dateTime, Period, string, Age, Range
{:.grid}

##### Must Support - Choice of Identifiers
A profile may support one or more than one identifier type and will include the supported identifiers in a profile by slicing the element and placing *Must Support* on each identifier slice. In such cases:
- AU Core Responders **SHALL** correctly populate the element with identifiers from any supported identifier type where the identifier is known.
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any identifier type allowed by the element definition.

The table below provides a list of AU Core profile elements that allow multiple identifier types.

AU Core Profile |Must Support Element|Supported Identifiers
---|---|---
AU Core Organization|Organization.identifier|HPI-O, Australian Business Number
AU Core Patient|Patient.identifier|IHI, Medicare Card Number, DVA Number
AU Core Practitioner|Practitioner.identifier|HPI-I
AU Core PractitionerRole|PractitionerRole.identifier|Medicare Provider Number
{:.grid}

For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) requires support for the following choices `Patient.identifier` defined in [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) to support Individual Healthcare Identifier (IHI), Medicare Card Number, Department of Veterans' Affairs (DVA) Number. When claiming conformance to the AU Core Patient Profile:
- AU Core Responders **SHALL** correctly populate `Patient.identifier` with an IHI, or Medicare Care Number, or DVA Number, or any combination of them.
- AU Core Requesters **SHALL** accept Patient resource if `Patient.identifier` is present containing any valid value. A valid value may be an IHI, Medicare Care Number, or DVA Number identifier, or may be some other allowed identifier.

Systems **MAY** support populating and processing other identifiers, but this is not a requirement of AU Core.

##### Must Support - Choice of Profile Elements

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [AU Core Encounter](StructureDefinition-au-core-encounter.html). In such cases:
- AU Core Responders **SHALL** correctly populate at least one element choice if the value is known.
- AU Core Requesters **SHALL** accept resources without error if any element allowed by the profile is present and containing any valid value. 

The table below lists the applicable profiles and elements in AU Core.

AU Core Profile |Must Support Choice Elements
---|---
AU Core Encounter|Encounter.reasonCode, Encounter.reasonReference
AU Core Procedure|Procedure.reasonCode, Procedure.reasonReference
AU Core MedicationRequest|MedicationRequest.reasonCode, MedicationRequest.reasonReference
{:.grid}


##### Must Support - Choice of Terminology

In AU Core, elements that define support for more than one value set only apply to the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) part of the element and are not intended to prevent systems from supplying only a text value. In such cases:
- AU Core Responders **SHALL** correctly populate the element with concepts from each supported value set where the applicable concept is known.
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid value. 

The table below lists the applicable profiles and elements in AU Core that support multiple value sets.

AU Core Profile |Must Support Sub-Element|Terminology Choices
---|---
AU Core Immunization|Immunization.code.coding|[Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1), [Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1)
AU Core Medication|Medication.code.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
AU Core MedicationRequest|MedicationRequest.code.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
{:.grid}

For example, the profile [AU Core Medication](StructureDefinition-au-core-medication.html) requires support for the following terminology choices `Medication.code.coding` defined in [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html) to support [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) and [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html) as indicated by flagging *Must Support* on those two terminology slices.

When claiming conformance to the AU Core Medication profile: 
- AU Core Responders **SHALL** correctly populate `Medication.code.coding` with either a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, if a coded value is known.
- AU Core Requesters **SHALL** accept a Medication resource without error if `Medication.code.coding` is present and containing any valid value. A valid value may be text, or may be a code from [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1) or [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html), or both, or some other code.

Systems **MAY** populate and accept other code systems but this is not a requirement of AU Core.

### Missing Data

There are situations when information for a particular data element is missing and the source system does not know the reason for the absence of data. 

#### Missing Must Support and Optional Data

If the source system does not know the value for an optional element (minimum cardinality = 0), including elements labelled *Must Support*, the data element **SHALL** be omitted from the resource.  

#### Missing Must Support and Mandatory Data

If the data element is a mandatory element (minimum cardinality is > 0), the element **SHALL** be present *even if* the source system does not know the value or the reason the value is absent. The core specification provides guidance for what to do in this situation, which is summarised below.

1.  For *non-coded* data elements where the applicable AU Core profile does not mandate a sub-element
    - use the [DataAbsentReason extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html) 
    - use the code `unknown` _The value is expected to exist but is not known_
  
    Example: Patient resource where the patient's birthDate is not available.
    ~~~
    {
      "resourceType" : "Patient",
           ...
           "_birthDate" : {
                "extension" : [
                  {
                    "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
                    "valueCode" : "unknown"
                  }
                ]
              },
          ...
         }
    ~~~
      
2. For *non-coded* data elements where the applicable AU Core profile mandates a sub-element, e.g. in AU Core Practitioner, the sub-element `Practitioner.name.family` is mandatory, then the resource must contain the sub-element otherwise the resource will not be conformant.

3. For *coded* data elements:
    - *required* binding strength:
      - use the appropriate "unknown" concept code from the value set if available.
      - if the value set does not have the appropriate "unknown" concept code, you must use a concept from the value set anyway. Otherwise, the instance will not be conformant.
      - For AU Core profiles, the following status elements with required binding have no appropriate "unknown" concept code:
        - `AllergyIntolerance.clinicalStatus`&#42;
        - `Condition.clinicalStatus`&#42;
        - `Immunization.status`
        
      &#xa;&#xa;&#xa;&#xa;&#42;The clinicalStatus element is conditionally mandatory based on resource-specific constraints.
    - *example*, *preferred*, or *extensible* binding strengths:
      - when the system has text but no coded value, only the text sub-element is populated.
      - when there is neither text or coded value:
        - use the appropriate "unknown" concept code from the value set if available.
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
                    "display" : "Unknown"
                  }
                ]
              }
            ]
          }
        ]
        ...
        ~~~


### Suppressed Data
In some circumstances, specific pieces of data may be hidden due to security or privacy reasons. 

When an element definition is optional (minimum cardinality = 0), including elements labelled *Must Support*:
- AU Core Responder **SHALL NOT** populate the element in the resource when a value is suppressed.  

When an element definition is mandatory (minimum cardinality > 0), 
- AU Core Responders **SHALL** correctly populate the element but it may exceed the data requester's access rights to know that the data is suppressed:
  - where a requester does not have access rights to know that data is suppressed use the code `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).
  - where a requester may know that the data is suppressed use the code `masked` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).

