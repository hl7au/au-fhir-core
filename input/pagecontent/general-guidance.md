{::options toc_levels="1..4"/}

### Implementation Guide Approach
AU Core uses [AU Base representations as the base layer](relationship.html#relationship-to-hl7-au-base), where available, as the basis for the FHIR structures and describes the minimum expectations for support for systems in Australia across use cases. AU Core defines the data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information.

AU Core promotes interoperability and adoption through common implementation and provides the basis for further implementation guide development for specific use cases.

The approach to describing minimum requirements in AU Core means modelling in such a way that 'at least' what is to be supported is defined without limiting meaningful options for use cases and business rules. AU Core artefacts are therefore modelled as open templates allowing for additional content including elements, extensions, resources, search parameters, operations, and terminology whilst ensuring the minimum requirements are met.

Australian realm IGs and implementers are expected to comply with AU Base and AU Core and to define extensions, search parameters or operations (in order of precedence):
* in the FHIR standard (incl. FHIR Extensions Pack)
* in AU Base (this IG)
* in a downstream IG (e.g. AU eRequesting or AU Patient Summary)
* in a local IG only if necessary

#### Scope of AU Core FHIR Artefacts

AU Core profiles:
* [Extensions](general-guidance.html#extension-approach) to define minimum support expectations for local use concepts
* [Search parameters](general-guidance.html#search-parameter-approach) to define minimum support expectations for AU Core actors
* [Resources](general-guidance.html#resource-profile-approach) to define minimum support expectations for use in the Australian healthcare context

AU Core defines:
* [Actors](general-guidance.html#actor-approach) to define systems that play a role in AU Core data exchange
* [Capability statements](general-guidance.html#capability-statement-approach) to define minimum support expectations of FHIR capabilities of AU Core actors.

AU Core does not define new extensions, search parameters, operations or [terminology](general-guidance.html#terminology-approach); these artefacts are [defined in AU Base](generalguidance.html#implementation-guide-approach) and AU Core profiles these AU Base artefacts to describe minimum expectations for support in Australia. For more information on the definitional nature of AU Base see the guidance on [AU Base Implementation Guide Approach](https://build.fhir.org/ig/hl7au/au-fhir-base/branches/ft_profilingapproach/generalguidance.html#implementation-guide-approach).

#### Extension Approach
A limited set of extensions are indicated as _Must Support_ in AU Core resource profiles. All extensions included in AU Core are defined in the [FHIR Extensions Pack](https://hl7.org/fhir/extensions/) or [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/profiles-and-extensions.html#extensions).

AU Core profiles some complex extensions to define minimum support requirements, for example [AU Core Sex Assigned At Birth](http://hl7.org.au/fhir/core/StructureDefinition/au-core-rsg-sexassignedab) profiles the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) to indicate which parts of the extension are _Must Support_ and the Obligations for AU Core actors.

When modelling AU Core extension profiles, the [AU Core resource profile approach](general-guidance.html#resource-profile-approach) is followed.

#### Search Parameter Approach
AU Core does not define any new search parameters. All search parameters included in AU Core are defined in the [FHIR Search Parmeter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html) or [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/search-parameters.html).

AU Core profiles these search parameters to describe the additional minimum support requirements for AU Core actors including support for chaining, modifiers, and comparators, e.g. [AU Core clinical-patient](https://build.fhir.org/ig/hl7au/au-fhir-core/SearchParameter-au-core-clinical-patient.html) that defines support for chained identifiers.

#### Terminology Approach
AU Core does not define new terminology FHIR artefacts. Terminology supported in AU Core are are published in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), the FHIR standard, [HL7 Terminology (THO)](https://terminology.hl7.org/), or the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/). 

As part of profiling, AU Core indicates the support expectations for terminology for that resource for an AU Core actor using _Must Support_ and Obligations. 

For a list of the terminology supported in AU Core refer to the [Terminology](terminology.html) page.

#### Resource Profile Approach
AU Core resource profiles set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. These AU Core profiles are based on the AU Base resource profile, where available, and identify the additional mandatory core elements, extensions, vocabularies and value sets that SHALL be present in the resource when conforming to AU Core. These profiles provide the floor for standards development for specific uses cases in an Australian context.

AU Core profiles are only constrained (e.g. cardinality) where the constraint is agreed as applicable nationwide and across use cases to avoid limiting options for downstream use case decisions and business rules. When modelling minimum expectations, only elements that form part of the minimum support requirements (i.e. marked with _Must Support_) are further constrained in AU Core; in some special cases determined by the responsible work group a data quality requirement is placed on an element that is not marked with _Must Support_. 

Additionally, when modelling AU Core resource profiles:
* Open: profiles are defined as open, allowing additional elements and rules. This results in a more flexible template that can be used across wider contexts, but also means that the resource content is not closed, and applications have to decide how to handle content not described by the profile.
* Extensions: extensions are inherited from the underlying AU Base resource profile and those extensions agreed to form part of the minimum support requirements are marked with _Must Support_. Additional extensions are not added, unless there is no underlying AU Base resource profile is available.
* Cardinality: cardinality is only constrained where there is an agreed minimum data quality requirement for a supported element (e.g. reference to the patient is mandatory in all AU Core profiles).
* Terminology Binding: typically the underlying AU Base terminology is inherited and, where agreed, on supported elements the binding strength is strengthened from [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) to [extensible](https://hl7.org/fhir/R4/terminologies.html#extensible). This strengthening is applied conservatively to avoid limiting opportunities for downstream IGs and applications to define their own business rules. New terminologies are not added unless there is no underlying AU Base resource profile available.
  * additional bindings: AU Core inherits additional bindings from the underlying AU Base resource profile where they exist. AU Core may introduce an additional binding where it improves alignment with terminology  used in Australian systems and supports the minimum expectations for national interoperability. For example, [AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html) defines an additional binding on `AllergyIntolerance.code` to reflect the substance and product concept sets commonly implemented in Australian systems.
  * multiple terminologies: where multiple terminologies are supported these are modelled using slicing and are selected from the set of additional bindings defined in AU Base to indicate which of those are to be supported for AU Core actors. For a minimum approach, the intention is to slice by value set as this allows to indicate obligation but does not limit the set of codes that can be supplied.
* Slice Constraints: slicing is avoided as much as possible to avoid limiting the opportunities for downstream IGs and applications to define their own business rules. Slicing in AU Core resource profiles is used to:
   * define support for mutiple terminologies, for example [AU Core Medication](StructureDefinition-au-core-medication.html) support for Australian Medicines Terminology (AMT) and PBS Item Codes
   * define support for specific identifiers, for example [AU Core Patient](StructureDefinition-au-core-patient.html) defines support for IHI, Medicare Card Number, DVA Number
   * slices are open to allow for additional content to be supplied
* References (target profiles and resources): references for supported elements are constrained to the AU Core profile, or where not available, the AU Base profile (where it exists) to support validation 
* Type choices: types for supported elements are restricted only where there is national agreement to restrict that usage in Australia. The types from the underlying AU Base profile are inherited, and no new data type profiles are added unless there is no underlying AU Base resource profile available.
* Must Support and Obligations: _Must Support_ is used to indicate the elements or parts of elements that form the minimum requirements to support for systems. Obligations are used to describe those support requirements for each element for AU Core actors. The [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html) is used to describe the expectation for an actor. Where further qualification of how _Must Support_ requirement applies to that actor is needed, this is stated in the corresponding CapabilityStatement for example, in [AU Core MedicationStatement](StructureDefinition-au-core-medicationstatement.html), both `MedicationStatement.reasonCode` and `MedicationStatement.reasonReference` are labelled as _Must Support_ in the profile, but the CapabilityStatements clarify this by requiring a responder to support at least one of these elements, while a requester SHALL support both.
* Invariants: Invariants are inherited from AU Base or the FHIR standard where they exist. AU Core defines invariants where a data quality rule is agreed as applicable across all use cases and cannot be expressed through cardinality, terminology binding, _Must Support_ or actor obligations.

TBD: We have narrative relaxation of obligations - but its not in the StructureDefs though it is in the CapStats. Is that sufficient? The CapStats are the description of an actors capabilties. And if this is sufficient then what about AU PS that doesn't have CapStats?

#### Actor Approach
AU Core Actors are defined to describe the specific sets of functionality supported by systems that play a role in AU Core data exchange. Each actor is defined by:
* an ActorDefiniition that includes reference to support expectations (narrative conformance requirements and capability statements)
* a capability statement that describes the requirements for the system and resource support

#### Capability Statement Approach
AU Core Capability Statements are defined to describe the specific capabilities of a system when playing a particular role (i.e. actor) and includes the complete list of FHIR profiles, RESTful operations, and search parameters supported by that actor.

AU Core Capability Statements are defined as open, allowing additional resources, profiles, operations, and search parameters to be defined.

a Profile has a _Must Support_ target reference element to other profiles or resources. This list is provided to clarify where additional profiles or resources may need to be supported if a requester supports a particular resource.

### SNOMED CT Australian (SNOMED CT-AU) Edition
For guidance on SNOMED CT-AU in FHIR, see the guidance defined in AU Base [SNOMED CT Australian Edition](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#snomed-ct-australian-edition).

### Contained Resources
In some circumstances, the content referred to in the resource reference does not have an independent existence apart from the resource that contains it - it cannot be identified independently, and nor can it have its own independent transaction scope. For example, use of a Medication resource to represent medicinal product identification within the context of a MedicationRequest. In these circumstances the resource can be [contained](http://hl7.org/fhir/R4/references.html#contained). 

In AU Core profiles:
- Systems constructing a resource that represent medication information are encouraged to make use of contained resources within the context of a FHIR transaction. Operations on Medication resources are expected to be within the context of a referencing resource query such as an MedicationAdministration, MedicationDispense, MedicationRequest or MedicationStatement.
- If referencing a contained resource, both the contained resource and the referencing resource **SHALL** conform to the applicable AU Core profile.
- Otherwise, it is recommended that an AU Core Responder avoids the use of contained resources unless the referenced resource does not have an independent existence apart from the resource that contains it and cannot be identified independently.

Further guidance about the general use case for [contained resources](http://hl7.org/fhir/R4/references.html#contained) can be found in the FHIR standard.

### Extensibility – “Additional” Elements
A responder can send "additional" elements beyond those flagged with *Must Support* in an AU Core profile. Additional elements are often required by other profiles the system may conform to, allowing local requirements, including technical and workflow context for the resource, to be reflected and extending the health information supported in exchanges. For this reason, extensibility is generally encouraged and expected in AU Core profiles. Only in some exceptionally rare use case profiles are rules tightened to limit the nature of additional information that can be sent. Specification authors are encouraged to enable greater interoperability and software re-use by avoiding reductions in an element's cardinality.

Depending on local requirements, a requester (i.e. client application) may ignore these "additional" elements, may treat the data as for rendering only, or be capable of recognising and using the element. 

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
<<<<<<< HEAD
    -   base: The Service Root URL (e.g. "<https://fhir-open-api-dstu2.smarthealthit.org>”)
    -  Resource-type: The name of a resource type (e.g. "Patient")
    -  parameter: The search parameters as defined for the particular interaction (e.g."?patient=Patient/123")
=======
    -   base: The Service Root URL (e.g., "https://fhir-open-api-dstu2.smarthealthit.org”)
    -  Resource-type: The name of a resource type (e.g., "Patient")
    -  parameter: The search parameters as defined for the particular interaction (e.g.,"?patient=Patient/123")
>>>>>>> master
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