{::options toc_levels="1..4"/}

### Implementation Guide Approach
AU Core promotes interoperability and adoption through common implementation and provides the basis for further implementation guide development for specific use cases.

AU Core uses [AU Base representations as the base layer](relationship.html#relationship-to-hl7-au-base), where available, as the basis for AU Core FHIR structures and describes the minimum expectations for support for systems in Australia across use cases, jurisdictions, organisations, and digital health initiatives nationwide. 

AU Core defines the data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information.

The approach to describing the 'minimum' in AU Core means modelling in such a way that 'at least' what is to be supported is defined without limiting meaningful options for use cases and business rules. AU Core artefacts are therefore modelled as open templates allowing for additional content including elements, extensions, resources, search parameters, operations, and terminology whilst ensuring the minimum requirements are met.

Australian realm IGs and implementers are expected to comply with AU Base and AU Core and to define extensions, search parameters or operations (in order of precedence):
* in the FHIR standard (incl. FHIR Extensions Pack)
* in AU Base
* in a downstream IG (e.g. AU eRequesting or AU Patient Summary)
* in a local IG only if necessary

#### Scope of AU Core FHIR Artefacts

AU Core profiles:
* [Extensions](general-guidance.html#extension-approach) to define minimum support expectations for complex extensions.
* [Search parameters](general-guidance.html#search-parameter-approach) to define minimum support expectations (e.g. support for chaining) for supported search parameters.
* [Resources](general-guidance.html#resource-profile-approach) to define minimum support expectations for the use of FHIR resources.

AU Core defines:
* [Actors](general-guidance.html#actor-approach) to define systems that play a role in AU Core data exchange.
* [Capability statements](general-guidance.html#capability-statement-approach) to define the minimum capabilities (behaviours) to be supported for AU Core actors.

AU Core does not define new extensions, search parameters, operations or [terminology](general-guidance.html#terminology-approach); these artefacts are defined in AU Base. AU Core profiles these AU Base artefacts to describe minimum expectations for support in Australia. For more information on the definitional nature of AU Base see the guidance in [AU Base Implementation Guide Approach](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#implementation-guide-approach).

#### Extension Approach
AU Core does not define new extensions. All extensions included in AU Core are defined in the [FHIR Extensions Pack](https://hl7.org/fhir/extensions/) or [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/profiles-and-extensions.html#extensions). A limited set of extensions are indicated as _Must Support_ in AU Core resource profiles (see [Use of Extensions](general-guidance.html#use-of-extensions) in [Resource Profile Approach](general-guidance.html#resource-profile-approach)).

AU Core profiles some complex extensions to define minimum support expectations, for example [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html) profiles the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) to indicate which parts of the extension are _Must Support_ and the obligations for AU Core actors.

When modelling AU Core extension profiles, the [AU Core resource profile approach](general-guidance.html#resource-profile-approach) is followed.

#### Search Parameter Approach
AU Core does not define new search parameters. All search parameters included in AU Core are defined in the [FHIR Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html) or [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/search-parameters.html).

AU Core profiles these search parameters to describe the additional minimum support expectations for search parameters for AU Core actors including support for chaining, modifiers, and comparators, e.g. [AU Core profile of clinical-patient](SearchParameter-au-core-clinical-patient.html) that defines support for chained identifiers.

<div class="stu-note" markdown="1">
The set of AU Core SearchParameters defined in this release of AU Core include search parameters with support for chained search. Future releases of AU Core will define the complete list of search parameters supported by AU Core.
</div>

#### Terminology Approach
AU Core does not define new terminology FHIR artefacts (e.g. value sets or code systems). Terminology supported in AU Core are published in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), the FHIR standard, [HL7 Terminology (THO)](https://terminology.hl7.org/), or the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/). 

As part of profiling, AU Core indicates the support expectations for terminology for that resource using the terminology binding and _Must Support_ flag (see [Use of Terminology Bindings](general-guidance.html#use-of-terminology-bindings) in [Resource Profile Approach](general-guidance.html#resource-profile-approach)). 

For a list of the terminology supported in AU Core refer to the [Terminology](terminology.html) page. See AU Base for guidance on [Terminology Selection](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#terminology-selection) in HL7 AU implementation guides.

#### Resource Profile Approach
AU Core resource profiles set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information in Australia. AU Core profiles are derived from AU Base resource profiles, where available, and identify the additional mandatory core elements, extensions, vocabularies and value sets that are to be present in the resource when conforming to AU Core. These profiles define the minimum conformance requirements that downstream profiles are expected to comply with.

AU Core profiles:
* are derived from AU Base, where available, to inherit the nationally agreed localised terminology, identifiers, and extensions.
* are only constrained (e.g. cardinality) where the constraint is agreed to be a minimum requirement that is nationally relevant and applicable across use cases to avoid limiting options for downstream use case decisions and business rules. 
* elements and extensions that form the minimum requirements are labelled _Must Support_. 
* elements that are not labelled _Must Support_ are not part of the minimum requirements and are therefore not further constrained in AU Core.
  * an exception to this rule has been agreed for body site elements to ensure nationally agreed terminology. In AU Core profiles with a body site element, an invariant is present to enforce that if a coded body site is provided, at least one coding is from SNOMED CT.
* are defined as open, allowing additional elements, extensions, and rules. This results in a more flexible template that can be used across wider contexts, but also means that the resource content is not closed, and applications have to decide how to handle content not described by the profile.  

Some aspects of the approach to [profiling](https://hl7.org/fhir/R4/profiling.html) resources in AU Core are described in further detail in the subsections below:
* [Restricting Cardinality](general-guidance.html#restricting-cardinality)
* [Use of Extensions](general-guidance.html#use-of-extensions)
* [Use of Terminology Bindings](general-guidance.html#use-of-terminology-bindings)
* [Use of Invariants](general-guidance.html#use-of-invariants)
* [Use of Slicing, Pattern, and Fixed Value ](general-guidance.html#use-of-slicing-pattern-and-fixed-value)
* [Restricting References and Type Choices](general-guidance.html#restricting-references-and-type-choices)
* [Use of Must Support and Obligations](general-guidance.html#use-of-must-support-and-obligations)

##### Restricting Cardinality

Cardinality is only restricted where there is an agreed minimum data quality requirement for a supported element (i.e. element labelled _Must Support_). For example, in AU Core profiles of clinical resources the following are made mandatory (minimum cardinality is > 0):
* reference to the patient
* the core clinical concept e.g. `AllergyIntolerance.code`, `Procedure.code`, `Condition.code`

AU Core does not prohibit (cardinality 0..0) elements or extensions, as prohibition restricts the opportunities for downstream IGs and applications to define their own business rules.

AU Core profiles include conditional cardinality constraints (defined using [invariants](general-guidance.html#use-of-invariants)), which are:
* inherited from the FHIR standard e.g. [AU Core Condition](StructureDefinition-au-core-condition.html) inherits invariant **con-5:** Condition.clinicalStatus SHALL NOT be present if verification Status is entered-in-error.
* added in AU Core to apply minimum data quality requirements e.g. [AU Core Location](StructureDefinition-au-core-location.html) invariant **au-core-loc-01:** The location shall at least have a valid identifier or address or type.

##### Use of Extensions

Extensions are inherited from the underlying AU Base resource profile, where available, and the extensions that form part of the minimum support expectations for an AU Core profile are marked with _Must Support_. 

Additional extensions are not added directly to an AU Core profile, unless there is no underlying AU Base resource profile to derive from. Some FHIR resource types are not profiled in AU Base as the resource type is too abstract to support meaningful localisation across use cases in a base resource profile (e.g. Basic, Observation, or Device).

While the work to include a new extension in the underlying AU Base resource profile is progressing, extensions can be added (but not defined) temporarily in an AU Core profile to support development and testing in a release.

##### Use of Terminology Bindings
 Where the AU Core profile is derived, the underlying AU Base terminology binding is inherited. Terminology for a resource is [localised in AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#terminology-selection). In some cases that localised terminology is represented in the binding for a coded element, and in other cases it is represented as additional bindings that list the set of terminology recognised for use in Australia for that element.

New terminology bindings are not added in an AU Core profile unless there is no AU Base resource profile available to derive from (e.g. profiles of Observation, Device, Basic).

Terminology binding strength used in AU Core profiles:
* [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) bindings are commonly used on many elements to accommodate:
  * legacy systems and data
  * limited implementation of standardised terminology
  * significant downstream variation for different use cases
* [extensible](https://hl7.org/fhir/R4/terminologies.html#extensible) bindings are applied conservatively to avoid limiting opportunities for downstream IGs and applications to define their own business rules. In some cases, AU Core strengthens the inherited binding on supported elements (i.e. elements labelled _Must Support_) from [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) to [extensible](https://hl7.org/fhir/R4/terminologies.html#extensible) where there is national agreement across use cases (e.g. `AllergyIntolerance.code`, `Condition.code`).
* [required](https://hl7.org/fhir/R4/terminologies.html#required) bindings are inherited from the FHIR standard. AU Core does not strengthen bindings to required to allow for systems to supply text only values where coded data is not available. Downstream IGs can introduce tighter terminology requirements appropriate to their use case. 
 
New additional bindings are added to AU Core profiles when there is a candidate value set for consideration by the community that is stricter than the currently bound value set for an element (e.g. the value set [Metric Body Weight Units](https://healthterminologies.gov.au/fhir/ValueSet/metric-body-weight-units-1) is a candidate binding for `Observation.value.code` in [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html)). These candidate value sets are included in a profile using the [additional bindings extension](https://build.fhir.org/ig/FHIR/fhir-tools-ig/StructureDefinition-additional-binding.html) with the binding purpose set to [candidate](https://build.fhir.org/ig/FHIR/fhir-tools-ig/ValueSet-additional-binding-purpose.html).

Coded elements in AU Core profiles that define support for more than one value set include them in a profile by slicing the [Coding](http://hl7.org/fhir/R4/datatypes.html#Coding) part of the element and placing _Must Support_ on each value set slice. Modelling optional slices of Coding allows systems to supply a text only value. See [Use of Slicing, Pattern, and Fixed Value](general-guidance.html#use-of-slicing-pattern-and-fixed-value).

Additional terminology rules that cannot be represented using a binding are applied with the [use of invariants](general-guidance.html#use-of-invariants) (e.g. [AU Core Procedure](StructureDefinition-au-core-procedure.html) invariant **au-core-pro-01:** If a coded body site is provided, at least one coding shall be from SNOMED CT).

While the work to include a new terminology binding in the underlying AU Base resource profile is progressing, it can be added temporarily to an AU Core profile directly to support development and testing in a release.

##### Use of Invariants
AU Core profiles include invariants when a minimum data quality requirement requires logic that cannot be represented through other profiling techniques (e.g. cardinality or terminology binding). These invariants are formally defined using FHIRPath so that the constraint can be computationally evaluated.

Typically, invariants defined in AU Core are used to:
  * define data precision rules (e.g. [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html) invariant **au-core-obs-01:** Date shall be at least to day)
  * define conditional cardinality rules such as 'at least one of' (e.g. [AU Core Location](StructureDefinition-au-core-location.html) invariant **au-core-loc-01:** The location shall at least have a valid identifier or address or type)
  * define terminology rules (e.g. [AU Core Procedure](StructureDefinition-au-core-procedure.html) invariant **au-core-pro-01:** If a coded body site is provided, at least one coding shall be from SNOMED CT)

AU Core invariants are intentionally written to allow for the AU Core requirements on [Missing Data](general-requirements.html#missing-data) to be met (e.g. [AU Core Patient](StructureDefinition-au-core-patient.html) invariant **au-core-pat-01:** At least one patient identifier shall be valid, or if not available, the Data Absent Reason extension shall be present).

##### Use of Slicing, Pattern, and Fixed Value  

Slicing is avoided where possible to avoid limiting the opportunities for downstream IGs and applications to define their own business rules. Slicing is used to:
   * define support for multiple terminologies (e.g. [AU Core Medication](StructureDefinition-au-core-medication.html) `Medication.code.coding` is sliced to define support for Australian Medicines Terminology (AMT) and PBS Item Codes)
   * define support for specific identifiers, (e.g. [AU Core Patient](StructureDefinition-au-core-patient.html) `Patient.identifier` is sliced to define support for IHI, Medicare Card Number, and DVA Number)
   * define support for recognised clinical concepts, (e.g. [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html) `Observation.code` is sliced to identify the agreed LOINC and SNOMED CT codes that identify the concept)

Slices are defined as open (i.e. `slicing.rules` is `open`) so that downstream IGs and applications can add additional patterns where required, provided the AU Core profile constraints are met.

Patterns and fixed values are used to define support for recognised clinical concepts:
* Pattern is the preferred primary mechanism to represent 'at least the following' for coded repeating elements (e.g. [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html) applies pattern to specify that at least one instance of `Observation.code` needs to have `Observation.code.coding.code`="1747861000168109" and `Observation.code.coding.system`="http://snomed.info/sct").
* Fixed values are used in slices to define an additional recognised clinical concept (e.g. [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html) defines an optional slice of `Observation.code` as `Observation.code.coding.code`="72166-2" and `Observation.code.coding.system`="http://loinc.org"). 

<div class="stu-note" markdown="1">
Some AU Core profiles include slicing with a discriminator of type 'pattern' which is deprecated in R5+. For future compatibility, it is under consideration to use type=value with a pattern[x] instead.
</div>

##### Restricting References and Type Choices

To support validation, resource references for supported elements (i.e. elements labelled _Must Support_) are constrained to target AU Core profiles, or where not available, AU Base resource profiles (where they exist).

Types for supported elements (i.e. elements labelled _Must Support_) are restricted only where there is national agreement to restrict that usage. This is rare as AU Core profiles are modelled intentionally to not restrict meaningful use case options. Some examples where a restriction is applied are:
* [AU Core Condition](StructureDefinition-au-core-condition.html) `Condition.onset[x]` is constrained to not allow `onsetString`. 
* [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html) `Observation.value` is constrained to only allow `valueCodeableConcept`.

Where no national agreement exists to restrict a type choice, all inherited types are allowed. For example in [AU Core Patient](StructureDefinition-au-core-patient.html), `Patient.address` inherits the FHIR data type [Address](http://hl7.org/fhir/R4/datatypes.html#Address) and AU Base [Australian Address](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-address.html) data type profile from [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html).

New data type profiles are not added in AU Core to the set of allowed type choices unless there is no AU Base resource profile available to derive from (e.g. profiles of Observation, Device, Basic).

##### Use of Must Support and Obligations
_[Must Support](general-requirements.html#must-support-and-obligation)_ is used to indicate the elements and extensions that form the minimum requirements of AU Core. Labelling an element _Must Support_ means that systems that produce or consume resources are to provide support for the element in some meaningful way. The FHIR standard does not define exactly what 'meaningful' support for an element means, but indicates that a profile needs to make clear exactly what kind of support is required when an element is labelled as _Must Support_.

When defining the meaning of _Must Support_ in AU Core:
* [Profile Only Support](general-requirements.html#profile-only-support) is defined in narrative in the IG (e.g. [Missing Data](general-requirements.html#missing-data) requirements)
* [Profile Support + Interaction Support](general-requirements.html#profile-support--interaction-support) is defined in:
  * narrative in the IG (e.g. [Missing Data](general-requirements.html#missing-data) requirements)
  * the [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) on each supported element in a profile, identifying the support expectations for AU Core actors
  * narrative qualification of element obligations present in the profile specific implementation guidance

See [Must Support and Obligation](general-requirements.html#must-support-and-obligation) for a detailed description of how this is applied in AU Core. 

#### Actor Approach
AU Core actors are defined to describe the specific sets of functionality supported by systems that play a role in AU Core data exchange. Each actor is defined by:
* an actor definition that includes reference to support expectations (narrative conformance requirements and capability statements)
* a capability statement that describes the requirements for the system and resource support

#### Capability Statement Approach
AU Core capability statements are defined to describe the specific capabilities of a system when playing a particular role (i.e. actor) and includes the complete list of FHIR profiles, RESTful operations, and search parameters supported by that actor.

AU Core capability statements are defined as open, allowing additional resources, profiles, operations, and search parameters to be defined.

Every resource type that is the target of a _Must Support_ element in a profile is modelled, with the agreed support expectations (incl. base and supported profiles, operations, search parameters), to ensure a complete description of the requirements for implementation. 

AU Core capability statements include profile specific implementation guidance that provides qualifying narrative where further clarification for _Must Support_  behaviour is required or where agreed relaxations apply. 

### SNOMED CT Australian (SNOMED CT-AU) Edition
For guidance on SNOMED CT-AU in FHIR, see the guidance defined in AU Base [SNOMED CT Australian Edition](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#snomed-ct-australian-edition).

### Contained Resources
In some circumstances, the content referred to in the resource reference does not have an independent existence apart from the resource that contains it - it cannot be identified independently, and nor can it have its own independent transaction scope. For example, use of a Medication resource to represent medicinal product identification within the context of a MedicationRequest. In these circumstances the resource can be [contained](http://hl7.org/fhir/R4/references.html#contained). 

In AU Core profiles:
- Systems constructing a resource that represent medication information are encouraged to make use of contained resources within the context of a FHIR transaction. Operations on Medication resources are expected to be within the context of a referencing resource query such as an MedicationAdministration, MedicationDispense, MedicationRequest or MedicationStatement.
- If referencing a contained resource, both the contained resource and the referencing resource **SHALL** conform to the applicable AU Core profile.
- Otherwise, it is recommended that an AU Core Responder avoids the use of contained resources unless the referenced resource does not have an independent existence apart from the resource that contains it and cannot be identified independently.

Further guidance about the general use case for [contained resources](http://hl7.org/fhir/R4/references.html#contained) can be found in the FHIR standard.

### Extensibility – 'Additional' Elements
A responder can send 'additional' elements beyond those flagged with *Must Support* in an AU Core profile. Additional elements are often required by other profiles the system may conform to, allowing local requirements, including technical and workflow context for the resource, to be reflected and extending the health information supported in exchanges. For this reason, extensibility is generally encouraged and expected in AU Core profiles. Only in some exceptionally rare use case profiles are rules tightened to limit the nature of additional information that can be sent. Specification authors are encouraged to enable greater interoperability and software re-use by avoiding reductions in an element's cardinality.

Depending on local requirements, a requester (i.e. client application) may ignore these 'additional' elements, may treat the data as for rendering only, or be capable of recognising and using the element. 

### Representing Body Site, Which May Include Laterality
When exchanging `Procedure` and `Condition` resources using AU Core profiles there may be a need to represent a relevant body site and associated laterality using `CodeableConcept` elements. In FHIR, body site and associated laterality can be recorded in various ways and implementers are encouraged to consider the following points when implementing:

* The `bodySite` element is not *Must Support* in AU Core profiles, there is no expectation to fill or meaningfully consume this element.
* The `CodeableConcept.text` element is system populated and may reflect more specific detail than the `CodeableConcept.coding` concepts provided.

See the guidance in AU Base [Representing Body Site, Which May Include Laterality](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#representing-body-site-which-may-include-laterality) for what to do in each of the following scenarios:
1. Primary finding/procedure code with body site and laterality as a pre-coordinated code.
1. Primary finding/procedure code with body site (without laterality) as a pre-coordinated code, and a separate laterality coded qualifier.
1. Coded body site with laterality and separate primary finding/procedure code.
1. Coded body site without laterality and separate coded laterality qualifier and a primary finding/procedure code.


### Read/Search Syntax

Searching resources is defined by the [FHIR RESTful API](https://hl7.org/fhir/R4/http.html) and included here for informative purposes. The [AU Core CapabilityStatements](capability-statements.html) document the server and client rules for the RESTful interactions described in this guide.

All the search interaction examples in this guide use the HTTP GET method with the following syntax:

 **`GET [base]/[Resource-type]?[parameter1]{:m1|m2|...}={c1|c2|...}[value1{,value2,...}]{&[parameter2]{:m1|m2|...}={c1|c2|...}[value1{,value2,...}]&...}`**

-   GET is the HTTP verb used for fetching a resource
-   Variables surrounded by "\[\]" are mandatory *for the client* to supply and will be replaced by the string literal identified.
-   Variables surrounded by "\{\}" are optional *for the client* to supply and will be replaced by the string literal identified.
-   Variables:
    -  base: The Service Root URL (e.g., "https://fhir-open-api-dstu2.smarthealthit.org”)
    -  Resource-type: The name of a resource type (e.g., "Patient")
    -  parameter: The search parameters as defined for the particular interaction (e.g.,"?patient=Patient/123")
    -  value: The search parameter value for a particular search
       - When searching using the `token` type SearchParameter [(how to search by token)](https://hl7.org/fhir/R4/search.html#token), the syntax `{system|}[code]` means that the system value is optional *for the client* to supply.
       - When searching using the `reference` type SearchParameter [(how to search by reference)](https://hl7.org/fhir/R4/search.html#reference), the syntax `{Type/}[id]` means that the Type value is optional *for the client* to supply.
       - When searching using the `date` type SearchParameter [(how to search by date)](https://hl7.org/fhir/R4/search.html#date), the syntax `{gt|lt|ge|le}[date]` means the date comparators "gt", "lt", "ge", and "le" are optional.   Date type searches without a comparator prefix are equivalent to searches with the "eq" comparator *even if* a server does not support the comparator.
    - \{:m1&#124;m2&#124;...}: The list of supported search parameter modifiers
    - {c1&#124;c2&#124;...}: The list of supported search parameter comparators
    - {,value2,...}: Optional multiple 'OR' Values
    - {&parameter2={:m1&#124;m2&#124;...}={c1&#124;c2&#124;...}[value1{,value2,...}&...}: Optional multiple 'AND' search parameters


In the simplest case, a search is executed by performing a GET operation in the RESTful framework:

`GET [base]/[Resource-type]?name=value&...`

For this RESTful search, the parameters are a series of name=\[value\] pairs encoded in the URL. The search parameter names are defined for each resource. For example, the Observation resource has the name "code" for searching on the LOINC or SNOMED CT-AU code.  For more information, see the [FHIR RESTful Search API](https://hl7.org/fhir/R4/http.html#search).

Examples in AU Core do not demonstrate the url encoding [rules for special characters](https://hl7.org/fhir/R4/search.html#escaping) e.g. "\|".