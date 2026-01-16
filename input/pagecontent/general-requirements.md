{::options toc_levels="1..4"/}

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

AU Core profile elements include mandatory and *Must Support* requirements. [Mandatory Elements](#mandatory-elements) are required and have a minimum cardinality > 0. [Must Support](#must-support-and-obligation) elements have defined conformance obligations in AU Core based on actor roles.

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

In AU Core, the meaning of *Must Support* is specified in terms of [Obligation Codes](https://hl7.org/fhir/extensions/CodeSystem-obligation.html) in [obligation extensions](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition. These obligations can also be applied at more granular levels, such as individual data type choices, terminology bindings, identifiers, or sub-elements. The obligation codes used to define the minimum obligations of *Must Support* elements in this implementation guide are reiterated below.

Actor | Code | Display | Definition | Notes
--- | --- | --- | --- | ---
[AU Core Responder](ActorDefinition-au-core-actor-responder.html) | [SHALL:populate-if-known](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58populate-if-known) | SHALL populate if known | Conformant applications producing resources SHALL correctly populate this element if they know a value for the element, but it is acceptable if the system is unable to ever know a value for the element. | This obligation does not impose a requirement to be able to know a value, unlike populate and able-to-populate which do. 'Knowing' an element means that a value for the element is available in memory, persistent store, or is otherwise available within the system claiming conformance.
[AU Core Responder](ActorDefinition-au-core-actor-responder.html) | [SHOULD:populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate) | SHOULD populate | Conformant applications producing resources SHOULD include this element if a value is known and allowed to be shared.| This implementation obligation means that whenever the producer knows the correct value for an element, it should populate it.
[AU Core Requester](ActorDefinition-au-core-actor-requester.html) | [SHALL:no-error](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHALL.58no-error) | SHALL not error if present | Conformant applications SHALL accept resources containing any valid value for the element without error. | Applications are still able to inform the user that a value cannot be processed correctly and may ignore the data, but applications aren't able to reject an instance merely because the element is present (which would be allowed for elements that do not have this obligation). A system MAY raise an error if the value provided is not valid or violates specific business rules. This obligation also applies to elements that only contain an extension in place of a value where (or equivalent), should either of these be allowed on the consumer obligations

*Must Support* elements are treated differently between [AU Core Responder](ActorDefinition-au-core-actor-responder.html) and [AU Core Requester](ActorDefinition-au-core-actor-requester.html) actors. *Must Support* on a profile element **SHALL** be interpreted as follows.

#### AU Core Responder
An AU Core Responder:
- **SHALL** correctly populate all *Must Support* elements for which a value is known.
- **SHALL** implement the requirements on [Suppressed Data](general-requirements.html#suppressed-data) when an element is NOT allowed to be shared.
- **SHALL** implement the requirements on [Missing Data](general-requirements.html#missing-data) when an element value is not known.

When a *Must Support* element requires additional or stronger obligation, this obligation is specified in the AU Core Responder [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

#### AU Core Requester
An AU Core Requester:
- **SHALL** accept resources containing any valid value for *Must Support* elements without error.
- **SHALL** accept resources containing *Must Support* elements with [Missing Data](#missing-data) or [Suppressed Data](#suppressed-data) without error.

How the system processes the resource depends on local requirements that could align with obligation terms such as [reject invalid](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-reject-invalid), [correctly handle](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-handle), [persist](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-persist), [display](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-display), or [ignore](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-ignore).

When a *Must Support* element requires additional or stronger obligation, this obligation is specified in the AU Core Requester [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on the element definition.

#### Presentation of Must Support and Obligation in Profiles

All elements with *Must Support* in AU Core are accompanied by an explicit obligation that identifies the expectations for one or more actors. When rendered in an implementation guide, each profile is presented in different formal views under tabs labelled "Differential Table", "Key Elements Table", and "Snapshot Table". Elements flagged with *Must Support* and stated obligations in these views are represented by <span style="padding-left: 1px; padding-right: 1px; color: white; background-color: red" title="This element must be supported">S</span><span style="padding-left: 1px; padding-right: 1px; color: white; background-color: red" title="This element has obligations">O</span> as shown below. 

<div> 
    <img src="allergyintolerance-keyelementstable.png" alt="AU Core AllergyIntolerance Key Elements Table" style="width:100%"/>
  </div>
*Figure 1: Key Elements Table View*
<br/>

Implementers need to refer to the "Key Elements Table" to see the full set of elements that are mandatory or *Must Support* with obligations, and the full set of terminology requirements.  Implementers need to be aware that the full set of constraints (i.e. invariants) are only presented in the "Detailed Descriptions" tab or the raw representation (e.g. XML or JSON) of the profile.

##### Presentation of Must Support and Obligation in Raw Representations

When viewing the raw representation (e.g. XML or JSON) of a profile, elements with *Must Support* are denoted by `mustSupport` set to "true", and obligations are defined in the [Obligation Extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) as shown in the example below.

Example: AU Core AllergyIntolerance profile with *Must Support* and obligations on clinicalStatus.

~~~
{
    "resourceType" : "StructureDefinition",
    ...
    "url" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-allergyintolerance",
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
            "path" : "AllergyIntolerance.clinicalStatus",
            "mustSupport" : true,
           },
    ...
}
~~~

#### Interpreting Profile Elements Labelled Must Support

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

For example, the AU Core AllergyIntolerance Profile `note` element is labelled *Must Support* and has no *Must Support* sub-elements. When claiming conformance to this profile:
- AU Core Responders **SHALL** correctly populate a value in any valid `AllergyIntolerance.note` sub-element if a value is known e.g. `AllergyIntolerance.note.text`.
- AU Core Requesters **SHALL** accept the AllergyIntolerance resource without error if `AllergyIntolerance.note` is present and containing any valid sub-elements.

If a sub-element is labelled as *Must Support*: 
- AU Core Responders **SHALL** correctly populate the element with all *Must Support* sub-elements for which a value is known. 
- AU Core Requesters **SHALL** accept resources without error if *Must Support* sub-elements are present and containing any valid value.

For example, in the AU Core Practitioner Profile, the `name` element is labelled *Must Support* and has *Must Support* sub-elements `family` and `given`. When claiming conformance to this profile:
- AU Core Responders **SHALL** correctly populate a value in `Practitioner.name.family` and `Practitioner.name.given` if the value for those sub-elements is known.
- AU Core Requesters **SHALL** accept a Practitioner resource without error if `Practitioner.name` is present and contains valid values in `Practitioner.name.family` and `Practitioner.name.given` sub-elements.

##### Must Support - Resource References
Some elements labelled as *Must Support* reference multiple resource types or profiles such as `Observation.performer`. In such cases: 
- AU Core Responders **SHALL** correctly populate the element with at least one referenced resource or allowed profile if the value is known. 
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid referenced resource or profiles.

The table below provides a list of AU Core profile elements that allow multiple referenced resource types or profiles.

AU Core Profile |Must Support Element|Reference
---|---|---
[AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Core RelatedPerson
[AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|Observation.hasMember|AU Base Diagnostic Imaging Result, AU Core Diagnostic Result Observation, AU Core Pathology Result Observation
[AU Core Encounter](StructureDefinition-au-core-encounter.html)|Encounter.participant.individual|AU Core Practitioner, AU Core PractitionerRole, AU Core RelatedPerson
[AU Core Encounter](StructureDefinition-au-core-encounter.html)|Encounter.reasonReference|AU Core Condition, Observation, AU Core Procedure
[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|MedicationRequest.requester|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Core RelatedPerson
[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|MedicationRequest.reasonReference|AU Core Condition, Observation
[AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html)|MedicationStatement.reasonReference|AU Core Condition, Observation, AU Base Diagnostic Report
[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html)|Observation.performer|AU Core Practitioner, AU Core PractitionerRole, AU Core Organization, AU Core Patient, AU Core RelatedPerson
[AU Core Procedure](StructureDefinition-au-core-procedure.html)|Procedure.reasonReference|AU Core Condition, Observation, AU Core Procedure, DocumentReference
{:.grid}


##### Must Support - Choice of Data Types
Some elements labelled as *Must Support* allow different data types such as `Observation.effective[x]`. In such cases:
- AU Core Responders **SHALL** correctly populate the element with at least one data type allowed by the element definition if the value is known.
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid data type allowed by the element definition.

The table below provides a list of AU Core profile elements that allow multiple data types.

AU Core Profile |Must Support Element|Data Types
---|---|---
[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|AllergyIntolerance.onset[x]|dateTime, age, Period, Range
[AU Core Condition](StructureDefinition-au-core-condition.html)|Condition.onset[x]|dateTime, age, Period, Range
[AU Core Condition](StructureDefinition-au-core-condition.html)|Condition.abatement[x]|dateTime, age, Period, Range
[AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|Observation.effective[x]|dateTime, Period, Timing, instant
[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html)|Observation.effective[x]|dateTime, Period, Timing, instant
[AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|Observation.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html)|Observation.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Immunization](StructureDefinition-au-core-immunization.html)|Immunization.occurrence[x]|dateTime, string
[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|MedicationRequest.medication[x]|CodeableConcept, Reference
[AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html)|MedicationStatement.medication[x]|CodeableConcept, Reference
[AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html)|MedicationStatement.effective[x]|dateTime, Period
[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Procedure](StructureDefinition-au-core-procedure.html)|Procedure.performed[x]|dateTime, Period, string, Age, Range
[AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Body Height](StructureDefinition-au-core-bodyheight.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Body Temperature](StructureDefinition-au-core-bodytemp.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Body Weight](StructureDefinition-au-core-bodyweight.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Heart Rate](StructureDefinition-au-core-heartrate.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Respiration Rate](StructureDefinition-au-core-resprate.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
[AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html)|Observation.component.value[x]|Quantity, CodeableConcept, string, boolean, integer, Range, Ratio, SampledData, time, dateTime, Period
{:.grid}

In addition, some data type choices are labelled as *Must Support* and apply an additional obligation of [SHOULD:populate](https://hl7.org/fhir/extensions/CodeSystem-obligation.html#obligation-SHOULD.58populate) for AU Core Responders. In such cases:
- AU Core Responders **SHALL** populate the element when the value is known and **SHOULD** be capable of correctly populating the element using this data type. Typically, this means that an application should demonstrate during some conformance testing process that there are some conditions under which it populates the element with a correct value of that data type.

The table below provides a list of AU Core profile elements where a data type choice is labelled as *Must Support*.

Profile | Must Support Data Type
---|---
[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|AllergyIntolerance.onsetDateTime
[AU Core Condition](StructureDefinition-au-core-condition.html)|Condition.onsetDateTime
[AU Core Immunization](StructureDefinition-au-core-immunization.html)|Immunization.occurrenceDateTime
[AU Core Procedure](StructureDefinition-au-core-procedure.html)|Procedure.performedDateTime
{:.grid}

##### Must Support - Choice of Multiple Identifiers
A profile may support one or more than one identifier type and will include the supported identifier(s) in a profile by slicing the element and placing *Must Support* on each identifier slice. In such cases:
- AU Core Responders **SHALL** correctly populate the element with identifiers from *at least one* supported identifier type where an identifier of that type is known, or any known identifier when no supported identifier type is known.
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any identifier type allowed by the element definition.

The table below provides a list of AU Core profile elements with one or more supported identifier types.

AU Core Profile |Must Support Element|Supported Identifiers
---|---|---
[AU Core Organization](StructureDefinition-au-core-organization.html)|Organization.identifier|HPI-O, Australian Business Number
[AU Core Patient](StructureDefinition-au-core-patient.html)|Patient.identifier|IHI, Medicare Card Number, DVA Number
[AU Core Practitioner](StructureDefinition-au-core-practitioner.html)|Practitioner.identifier|HPI-I
[AU Core PractitionerRole](StructureDefinition-au-core-practitionerrole.html)|PractitionerRole.identifier|Medicare Provider Number
{:.grid}

For example, the profile [AU Core Organization](StructureDefinition-au-core-organization.html) requires support for the following choices `Organization.identifier` defined in [AU Base Organization](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-organization.html) to support Healthcare Provider Identifier - Organisation (HPI-O) and Australian Business Number (ABN). When claiming conformance to the AU Core Organization Profile:
- AU Core Responders **SHALL** correctly populate `Organization.identifier` with *at least one* of HPI-O or ABN if an identifier of either of those types is known, or any other identifier (e.g. NATA Accredication Number) when neither HPI-O or ABN are known.
- AU Core Requesters **SHALL** accept Patient resource if `Patient.identifier` is present containing any valid value. A valid value may be an HPI-O or ABN, or may be any other allowed identifier (e.g. NATA Accredication Number).

Systems **MAY** support populating and accepting other identifiers, but this is not a requirement of AU Core.

##### Must Support - Choice of Profile Elements

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [AU Core Encounter](StructureDefinition-au-core-encounter.html). In such cases:
- AU Core Responders **SHALL** correctly populate at least one element choice if the value is known.
- AU Core Requesters **SHALL** accept resources without error if any element allowed by the profile is present and containing any valid value. 

The table below lists the applicable profiles and elements in AU Core.

AU Core Profile |Must Support Choice Elements
---|---
[AU Core Encounter](StructureDefinition-au-core-encounter.html)|Encounter.reasonCode, Encounter.reasonReference
[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|MedicationRequest.reasonCode, MedicationRequest.reasonReference
[AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html)|MedicationStatement.reasonCode, MedicationStatement.reasonReference
[AU Core Procedure](StructureDefinition-au-core-procedure.html)|Procedure.reasonCode, Procedure.reasonReference
{:.grid}


##### Must Support - Choice of Multiple Terminology

In AU Core, elements that define support for more than one value set only apply to the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) part of the element and are not intended to prevent systems from supplying only a text value. In such cases:
- AU Core Responders **SHALL** correctly populate the element with concepts from both supported value sets if the applicable concept is known.
- AU Core Requesters **SHALL** accept resources without error if the element is present and containing any valid value. 

The table below lists the applicable profiles and elements in AU Core that support multiple value sets.

AU Core Profile |Must Support Sub-Element|Terminology Choices
---|---
[AU Core Immunization](StructureDefinition-au-core-immunization.html)|Immunization.vaccineCode.coding|[Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1), [Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1)
[AU Core Medication](StructureDefinition-au-core-medication.html)|Medication.code.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|MedicationRequest.medicationCodeableConcept.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
[AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html)|MedicationStatement.medicationCodeableConcept.coding|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-pbs-item.html)
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

If the data element is a mandatory element (minimum cardinality is > 0), the element **SHALL** be present *even if* the source system does not know the value or the reason the value is absent.

1.  For *non-coded* data elements where the applicable AU Core profile does not mandate a sub-element
    - use the [DataAbsentReason extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html) 
    - use the code `unknown` _The value is expected to exist but is not known_
    - For some AU Core Observation profiles the `Observation.value` element is conditionally mandatory, e.g. AU Core Body Height.  In this case the `Observation.dataAbsentReason` element is used with the code `unknown` rather than the [DataAbsentReason extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html). Requesters are advised that other meaningful values can be captured in `Observation.dataAbsentReason` beyond missing or suppressed.
  
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
    - For some AU Core Observation profiles the `Observation.value` element is conditionally mandatory, e.g. AU Core Smoking Status.  In this case the `Observation.dataAbsentReason` element is used with the code `unknown` rather than the [DataAbsentReason extension](http://hl7.org/fhir/R4/extension-data-absent-reason.html). Requesters are advised that other meaningful values can be captured in `Observation.dataAbsentReason` beyond missing or suppressed.


### Suppressed Data
In some circumstances, specific pieces of data may be hidden due to security or privacy reasons. 

When an element definition is optional (minimum cardinality = 0), including elements labelled *Must Support*:
- AU Core Responder **SHALL NOT** populate the element in the resource when a value is suppressed.  

When an element definition is mandatory (minimum cardinality > 0), 
- AU Core Responders **SHALL** correctly populate the element but it may exceed the data requester's access rights to know that the data is suppressed:
  - where a requester does not have access rights to know that data is suppressed use the code `unknown` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).
  - where a requester may know that the data is suppressed use the code `masked` from the [DataAbsentReason Code System](http://terminology.hl7.org/CodeSystem/data-absent-reason) following the section on [Missing Data](#missing-data).

