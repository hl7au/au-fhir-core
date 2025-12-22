### Approach of this Implementation Guide
TBD - do we put in principles for inclusion in AU Core? Sort of mimic intent content of AU Base?

Some repeat of AU Base with wording change.

Australian realm IGs and implementers are expected to use the AU Base recognised/defined concept where one exists instead of redefining locally. AU Core introduces a required level of element support for local usage on top of AU Base that gives a core set of capability that can be implemented and assumed. 

When implementing FHIR in AU implementers are recommended to:
* something something the use case IG
* implement AU Core
* where a concept is unavailable look to AU Base

There's actually wider implication stuffs here - look to your slidepack, i.e. that IGs are encouraged to depend on AU Base so that the universe of AU concepts is 'recognised'. Do we say that somewhere? Both in AU Base and in AU Core? This is the big driver of why AU Base is a SHALL support in capability statements.

#### Scope of AU Core FHIR Artefacts

HL7 AU Core, as the ...,hnn profiles (but does not define)..:
* Extensions that define 'minimum' support expectations for local use concepts e.g. Sex Assigned at Birth
* Search parameters that define support expectations for AU Core profiles
* Core profiles for use in an Australian context:
  * Definitional data type profiles e.g. Australian address, Australian time zone, Identifier such as National patient and provider identifiers
  * Base resource profiles e.g. AU Base Patient, AU Base MedicationStatement
  * Generic use case profiles, where there is no existing project to undertake the work e.g. AU Medicines List, AU Base Diagnostic Imaging Result (definitional constraints; no conformance or support obligations)

TBD - what / how do we mention interactions... is there a way to write this without having to talk about them?

#### Profile Approach


#### Extension Approach

Repeat with slight wording change the AU Base content.

any extension intended for use in an Australian healthcare context that is not restricted to one IG is to be defined in AU Base. 

Practically this means for example that AU Core will not define extensions - AU Core profiles are intended for multiple use cases so all extensions for use in AU Core are defined in AU Base.

As part of profiling, AU Core: profiles indicate the minimum support:
* for individual extensions in AU Core resource profiles
* for individual elements in complext extensions e.g. Sex Assigned at Birth

#### Search Parameter Approach

Repeat with slight wording change the AU Base content.

any search parameter intended for use in an Australian healthcare context that is not restricted to one IG is to be defined in AU Base. 

Practically this means for example that AU Core will not define new search parameters. Definition of search parameters for native FHIR elements or extensions is to be done in AU Base, and AU Core will 'profile' the search parameter to describe additional constraints relevant for that context such as mandating support for chaining. 

#### Terminology Approach

AU Core will not define new terminology resources - as part of profiling AU Core indicates the support expectations for terminology. For example in AU Core medication profiles, slicing is used to indicate Must Support for two terminologies that are defined as additional bindings in the underlying AU Base profile.


### SNOMED CT Australian (SNOMED CT-AU) Edition
For guidance on SNOMED CT-AU in FHIR, see the guidance defined in AU Base [SNOMED CT Australian Edition](https://build.fhir.org/ig/hl7au/au-fhir-base/generalguidance.html#snomed-ct-australian-edition).

### Contained Resources
In some circumstances, the content referred to in the resource reference does not have an independent existence apart from the resource that contains it - it cannot be identified independently, and nor can it have its own independent transaction scope. For example, use of a Medication resource to represent medicinal product identification within the context of a MedicationRequest. In these circumstances the resource can be [contained](http://hl7.org/fhir/R4/references.html#contained). 

In AU Core profiles:
- Systems constructing a resource that represent medication information are encouraged to make use of contained resources within the context of a FHIR transaction. Operations on Medication resources are expected to be within the context of a referencing resource query such as an MedicationAdministration, MedicationDispense, MedicationRequest or MedicationStatement.
- If referencing a contained resource, both the contained resource and the referencing resource **SHALL** conform to the applicable AU Core profile.
- Otherwise, it is recommended that an AU Core Responder avoids the use of contained resources unless the referenced resource does not have an independent existence apart from the resource that contains it and cannot be identified independently.

Further guidance about the general use case for [contained resources](http://hl7.org/fhir/R4/references.html#contained) can be found in the base FHIR specification.

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
    -   base: The Service Root URL (e.g., "<https://fhir-open-api-dstu2.smarthealthit.org>”)
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