{::options toc_levels="1..4"/}

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

HL7 AU Core profiles:
* Extensions to define 'minimum' support expectations for local use concepts e.g. Sex Assigned at Birth
* Search parameters to define 'minimum' support expectations for AU Core actors
* Core resource profiles to define 'minimum' support expectations for use in the Australian healthcare context
* Actors to define systems that play a role in AU Core data exchange
* Capability statements to define 'minimum' support expectations of FHIR capabilities of AU Core actors.

#### Extension Approach
All extensions used in AU Core are defined in the FHIR Extensions Pack or [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/profiles-and-extensions.html#extensions).

AU Core profiles some extensions to define minimum support requirements e.g. [AU Core Sex Assigned At Birth](http://hl7.org.au/fhir/core/StructureDefinition/au-core-rsg-sexassignedab) which profiles the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html).

Therefore, when modelling AU Core extension profiles:
* Open: profiles are defined as open, i.e. allowing additional extensions and rules which makes for a much for flexible template - it's open for use in wider contexts, but also means that the content of the resource is not closed, and applications have to decide how to handle content not described by the profile. 
* Cardinality: cardinality is only constrained where there is an  expectation of a minimum data quality requirement e.g. the patient is made mandatory in all AU Core profiles
* Terminology Binding: where possible, elements are bound to the nationally recognised value set inherited from AU Base. which is either inherited from the FHIR specification or a localised value set. Localisation occurs through a number of mechanisms including nationally maintained clinical reference sets in the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/), terminology published by government agencies such as the [Australian Bureau of Statistics](https://www.abs.gov.au/), [Australian Institute of Health and Welfare](https://www.aihw.gov.au/), [Services Australia](https://www.servicesaustralia.gov.au/), and use case projects that dcontribute additional concepts as needed for use in implementation.

#### Search Parameter Approach
AU Core does not define any new search parameters. AU Core SearchParameters are derived from existing FHIR SearchParameters or AU Base SearchParameters to specify additional minimum support requirements for AU Core actors including support for chaining, modifiers, and comparators.

#### Terminology Approach
AU Core does not define any new terminology FHIR artefacts. Terminology supported in AU Core are published in AU Base, the base FHIR specification, HL7 Terminology (THO), or the National Clinical Terminology Service (NCTS). As part of profiling, AU Core indicates the support expectations for terminology for that resource for an AU Core actor using _Must Support_ and Obligations. 

#### Profile Approach
AU Base Resource Profiles define FHIR structures that localises core concepts, including terminology, for use in an Australian context. AU Core Resource Profiles set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. These AU Core profiles are based on the AU Base resource profile, where available, and identify the additional mandatory core elements, extensions, vocabularies and value sets that SHALL be present in the resource when conforming to AU Core. These profiles provide the floor for standards development for specific uses cases in an Australian context.

Therefore, when modelling AU Core resource profiles:
* Open: profiles are defined as open, i.e. allowing additional elements and rules which makes for a much for flexible template - it's open for use in wider contexts, but also means that the content of the resource is not closed, and applications have to decide how to handle content not described by the profile. 
* Extensions: extensions are inherited from the underlying AU Base resource profile and those extensions agreed to form part of the 'minimum' support requirements are marked with Must Support and the applicable Obligations. 
* Cardinality: cardinality is only constrained where there is an agreed minimum data quality requirement e.g. the patient is made mandatory in all AU Core profiles
* Terminology Binding: typically underlying AU Base terminology is inherited and, where agreed, the binding strength is strengthened. This strengthening is applied conservatively to avoid limiting opportunities for downstream IGs and applications to define their own business rules.
  ** while AU Core inherits but does not define additional bindings, where multiple terminologies have support expectatations slicing is used. 
* Slice Constraints: slicing is avoided as much as possible to avoid limiting the opportunities for downstream IGs and applications to define their own business rules. Slicing in AU Core resource profiles are used to:
   * define support for mutiple terminologies e.g. [AU Core Medication](StructureDefinition-au-core-medication.html) support for Australian Medicines Terminology (AMT) and PBS Item Codes
   * define support for business identifiers e.g. [AU Core Patient](StructureDefinition-au-core-patient.html) defines support for IHI, Medicare Card Number, DVA Number
* Type choices: types are restricted only where there is national agreement to restrict that usage in Australia. Unlike in AU Base, no additional Additionally, AU Base data type profiles suitable for usage for that particular element are added. 
* Must Support and Obligations: _Must Support_ or Obligation is not present as there is no assertion of required support for any of the elements profiled in this guide for a particular usage.
* References: references are constrained to support validation in the following order of precedence:
  * AU Core profile where available
  * AU Base profile
  * core FHIR resource

#### Actor Approach


#### Capability Statement Approach


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