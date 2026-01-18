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

AU Core does not prohibit extensions or constrain them to 0..0, and downstream IGs can introduce additional extension requirements as needed for their use case.

#### Search Parameter Approach
AU Core does not define any new search parameters. All search parameters included in AU Core are defined in the [FHIR Search Parameter Registry](https://hl7.org/fhir/R4/searchparameter-registry.html) or [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/search-parameters.html).

AU Core profiles these search parameters to describe the additional minimum support requirements for AU Core actors including support for chaining, modifiers, and comparators, e.g. [AU Core clinical-patient](https://build.fhir.org/ig/hl7au/au-fhir-core/SearchParameter-au-core-clinical-patient.html) that defines support for chained identifiers.

#### Terminology Approach
AU Core does not define new terminology FHIR artefacts. Terminology supported in AU Core are are published in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), the FHIR standard, [HL7 Terminology (THO)](https://terminology.hl7.org/), or the [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/). 

As part of profiling, AU Core indicates the support expectations for terminology for that resource for an AU Core actor using _Must Support_ and Obligations. 

For a list of the terminology supported in AU Core refer to the [Terminology](terminology.html) page.

#### Resource Profile Approach
AU Core resource profiles set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. AU Core profiles are derived from AU Base resource profile, where available, and identify the additional mandatory core elements, extensions, vocabularies and value sets that SHALL be present in the resource when conforming to AU Core. These profiles define the minimum conformance requorements that downstream profiles are expected to comply with and can derive from.

If an appropriate AU Base profile does not yet exists, AU Core profile can temporarily include the profile until a coresponding AU Base profile is defined so that AU Core can derive from it.

AU Core profiles are only constrained (e.g. cardinality) where the constraint is agreed as applicable nationwide and across use cases to avoid limiting options for downstream use case decisions and business rules. These constraints are applied only to elements that form part of the minimum support requirements (i.e. elements labelled _Must Support_). In some special cases determined by the responsible work group a data quality requirement (e.g. invariant, terminology) is placed on an element that is not labelled _Must Support_ (e.g. Procedure.bodySite in [AU Core Procedure](StructureDefinition-au-core-procedure.html)). 

Types of AU Core profiles:
* generic profiles (e.g. [AU Core Patient](StructureDefinition-au-core-patient.html), [AU Core Condition](StructureDefinition-au-core-condition.html))
  * define the national minimum expectations for representing foundational administrative and clinical information
  * define the required identifiers, extensions, terminology, and structural expectations that all AU Core implementations SHALL support
  * provide the baseline from which downstream IGs may introduce additional constraints as required for their use cases
* Use case profiles (e.g. vital signs, laboratory results, smoking status) 
   * define the minimum elements, structure, and terminology expectations required to represent an agreed clinical concept consistently across implementations
   * describe the minimum elements, terminology, and structure required to represent the agreed concept consistently, while allowing downstream IGs to introduce additional constraints where required  
   * support the exchange of specific clinical measurements, assessments, and findings that are recognised as core digital health information in an Australian context  
   * All AU Core use case profiles are Observation profiles and AU Core
     * defines the agreed LOINC and SNOMED CT codes representing the concept in `Observation.code`. LOINC is included to align with international usage for representing Observation concepts. SNOMED CT is included because it is the preferred terminology for clinical use in Australia.
     * uses Observation.category to define nationally agreed categories requied to support consistent system interactions, such as search and filtering

##### Modelling AU Core resource profiles
The following principles describe how AU Core resource profiles are modelled to define national minimum expectations while preserving flexibility for downstream implementation guides and system-specific business rules.

* Open: profiles are defined as open, allowing additional elements and rules. This results in a more flexible template that can be used across wider contexts, but also means that the resource content is not closed, and applications have to decide how to handle content not described by the profile.
* Extensions: extensions are inherited from the underlying AU Base resource profile, and those agreed to form part of the minimum support requirements are marked with _Must Support_. Additional extensions are not added, unless there is no underlying AU Base resource profile is available. Extensions are not prohibited or constrained to 0..0.
* Cardinality: cardinality is only constrained where there is an agreed minimum data quality requirement for a supported element (e.g. reference to the patient is mandatory in all AU Core profiles).
  * AU Core does not prohibit elements (e.g. via 0..0), as removing elements restricts the opportunities for downstream IGs and applications to define their own business rules.
  * AU Core uses invariants instead of cardinality where conditional rules are required (e.g. "at least one of" or "an element is required if another element is present). AU Core defines several invariants including: 
   * One invariant on [AU Core Location](StructureDefinition-au-core-location.html) enforcing that a location has at least one identifying property - a valid identifier, an address, or a type.
   * One invariant on [AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html) requiring that authored on dates are precise to at least the day, or that a Data Absent Reason is supplied when this is not possible.
   * Invariants in [AU Core Observation use case profiles](profiles-and-extensions.html#observation) to ensure that either a value or a Data Absent Reason is present, and, where a coded body site is provided, that at least one coding comes from SNOMED CT. [AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html) also include additional invariants to ensure that components, hasMember, or values are populated appropriately, and that effective[x] dates meet the agreed level of precision.
     * Additional invariant in [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)requiring that a result is represented using at least a value, a component, or a hasMember reference.
   * One invariant in [AU Core Organization](StructureDefinition-au-core-organization.html) requiring that National Organisation Identifiers (NOI) are valid HPI-O or PAI-O identifiers.
   * Invariants in [AU Core Patient](StructureDefinition-au-core-patient.html) ensuring that at least one valid identifier is present or otherwise a Data Absent Reason where an identifier is not available, and that the patient name has at least text, family, or given populated, or a Data Absent Reason.
   * One invariant in  [AU Core PractitionerRole](StructureDefinition-au-core-practitionerrole.html) ensuring that practitioner details include at least a reference, identifier, or display value.
   * One invariant in  [AU Core Procedure](StructureDefinition-au-core-procedure.html) requiring that a bodySite element includes a value or Data Absent Reason.
   * One invariant in [AU Core RelatedPerson](StructureDefinition-au-core-procedure.html) requiring that at least a relationship or name is present, and that names include text, family, or given (or a Data Absent Reason).
* Terminology Binding: typically the underlying AU Base terminology is inherited and, where agreed, AU Core strengthens bindings on supported elements from [preferred](https://hl7.org/fhir/R4/terminologies.html#preferred) to [extensible](https://hl7.org/fhir/R4/terminologies.html#extensible). This strengthening is applied conservatively to avoid limiting opportunities for downstream IGs and applications to define their own business rules and is typically applied to clinical concepts such as `AllergyIntolerance.code`, `Condition.severity`, `Condition.code` - TBD
  * New terminologies are not added unless there is no underlying AU Base resource profile available.
  * [required]((https://hl7.org/fhir/R4/terminologies.html#required) bindings are inherited from the FHIR standard. AU Core does not strengthen bindings to required so that systems can supply text only where coded data is not available, and downstream IGs can introduce tighter terminology requirements appropriate to their use case. Where a stricter coding expectation is needed, AU Core uses invariants to require that if coded data is supplied, at last one coding uses agreed terminology for example the invariant applied to `Condition.bodySite` in [AU Core Condition](StructureDefinition-au-core-condition.html).
  * additional bindings: additional bindings are inherited from the underlying AU Base resource profile where they exist. AU Core only adds additional bindings to candidate value sets that are being considered as potential replacements for the current terminology (e.g. the additional bindings on `AllergyIntolerance.code` in [AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)). The additional bindings are represented using the [additional bindings extension](https://build.fhir.org/ig/FHIR/fhir-tools-ig/StructureDefinition-additional-binding.html) with the binding purpose set to [candidate](https://build.fhir.org/ig/FHIR/fhir-tools-ig/ValueSet-additional-binding-purpose.html). Candidate bindings do not introduce conformance requirements and are provided to support forward planning and terminology alignment.
  * multiple terminologies: where multiple terminologies are supported, these are modelled using slicing and are selected from the set of additional bindings defined in AU Base to indicate which of those are to be supported for AU Core actors. For a minimum approach, the slices are defined by value set as this allows to indicate obligations without limiting the set of codes that can be supplied.
* Slicing: slicing is avoided as much as possible to avoid limiting the opportunities for downstream IGs and applications to define their own business rules and is only used where needed to define specific rules to data patterns. In AU Core most slices are defined as open (i.e. `slicing.rules` is not `closed`) so that downstream IGs and applications can add additional patterns where required provided they still meet the overall profile constraints. Slicing in AU Core resource profiles is used to:
   * define support for mutiple terminologies, for example [AU Core Medication](StructureDefinition-au-core-medication.html) support for Australian Medicines Terminology (AMT) and PBS Item Codes
   * define support for specific identifiers, for example [AU Core Patient](StructureDefinition-au-core-patient.html) defines support for IHI, Medicare Card Number, DVA Number
   * define support for recognised clinical concepts, for example AU Core Observation profiles such as vital signs and smoking status use slicing on `Observation.code` to identify the agreed LOINC and SNOMED CT codes that represent the concept, and on 'Observation.category` to support system interactions such as restricting searches.
* References (target profiles and resources): references for supported elements are constrained to the AU Core profile, or where not available, the AU Base profile (where it exists) to support validation .
* Type choices: types for supported elements are restricted only where there is national agreement to restrict that usage in Australia. The types from the underlying AU Base profile are inherited, and no new data type profiles are added unless there is no underlying AU Base resource profile available. 
  * AU Core can mark a specific type within a choice element as _Must Support_  to indicate the agreed minimum system capability and population expectations for that type. For example, in [AU Core Condition](StructureDefinition-au-core-condition.html), `Condition.onset[x]` is labelled as _Must Support_ with a further obligation that the `onsetDateTime` TBD "The additional obligation for Condition.onsetDateTime for AU Core Responder is SHOULD:populate"
  * Identifier types are inherited from AU Base. AU Core indicates support for specific nationally recognised identifiers by marking the relevant identifier types as _Must Support_
  * AU Core removes a type from a choice element where only where there is a national agreement that the type is not used in Australian systems for example `onsetString` is removed in [AU Core AllergyIntolerance], and `onsetString` and `abatementString` are removed in [AU Core Condition](StructureDefinition-au-core-condition.html) because free text timing is not supported in national implementations.
  * tbd identifier types
  *  Where no national agreement exists to restrict a type choice, all inherited types remain allowed, e.g. in [AU Core Patient](StructureDefinition-au-core-patient.html), `Patient.address` supports both the generic Address and Australian Address types as defined in AU Base.
* Must Support and Obligations: _[Must Support](general-requirements.html#must-support-and-obligation)_ is used to indicate the elements or parts of elements that form the minimum requirements to support for systems. Obligations are used to describe those support requirements for each element for AU Core actors using the [obligation extension](https://hl7.org/fhir/extensions/StructureDefinition-obligation.html). 
* Invariants: AU Core defines invariants only where a data quality rule requires logic that cannot be represented through other constraints. Typically, invariants in AU Core are used to:
  * mandate data precision or provide structural alternative such as 'at least one` for example `au-core-obs-01` in AU Core Smoking Status
  * define precision rules, for example au-core-medreq-01 in AU Core MedicationRequest
  * enforce identifier integrity based on national standard, for example au-core-org-01 (TBD: list profiles that have au core invariants)
  * AU Core invariants are intentionally written to allow for missing data rules to be met
  * all AU Core invariants are set to `error` severity and are expressed in testable FHIRPath that can be validated using standard FHIR tooling
* Fixed Values vs Patterns: Patterns (`pattern[x]`) is the primary mechanism for constraining element values within AU Core, rather than using fixed values, to alllow additional data to be supplied (e.g. ensuring that Observation.category or Observation.code contains an agreed code while allowing additional codings).   
* Profile specific implementation guidance: AU Core profiles include profile specific implementation guidance where narrative context is required to describe expected behaviour or use that cannot be fully expressed in constraints. The guidance is intended to be read together with the profile itself, the actor obligations, conformance rules defined in capability statements and any other referenced/relevant AU Core and AU Base guidance pages. Profile specific implementatuon guidance in AU Core is typically used to:
  * clarify how Must Support applies in practice, for example stating an expectation for responders to support at least one of Observation.value[x], Observation.component.value, or Observation.hasMember, while requesters are expected to support all of them.
  * describe expected behavior for AU Core actors that cannot be expressed directly in the profile, for example responders obligations when populating `Patient.identifier` 
  * provide qualification of an obligation in narrative that is not present in the obligation. 
  * explain coding behaviour and handling of unknown codes, for examp
  * document conventions for common clinical patterns, for example AU Core Condition and AU Core Diagnostic Result Observation include guidance on how systems should populate and consume coded data when terminologies differ across systems, for example guidance on populating `code.text` and/or `coding.display` for responders and how these are handled by requesters 
    * representing body site, including laterality, using the guidance page
    * representing sex, gender, and related concepts using AU Core Sex and Gender guidance
    * representing no known condition for a patient using agreed SNOMED CT negation concepts in Condition.code 
   * clarify use of categories and classification fields in profiles that use classification element such as `Observation.category` 
   * clarify alternative structure representations allowed by the profile, for example representing addresses using either the Address data type or the AUstralian address data type profile, and when each is expected to be used
   * direct implementers to related AU Core and AU Base guidance, for example Identifier data type profiles and business identifiers in AU Base, representing communication preferences and languages, Observation grouping guidance in the core FHIR standard.
   * Profile specific implementation guidance is only included where it is needed to support consistent use of the profile across AU Core implementations. Downstream implementation guides may add further implementation guidance for their own use cases but are expected to remain consistent with the AU Core guidance for the underlying profile.

#### Actor Approach
AU Core Actors are defined to describe the specific sets of functionality supported by systems that play a role in AU Core data exchange. Each actor is defined by:
* an ActorDefiniition that includes reference to support expectations (narrative conformance requirements and capability statements)
* a capability statement that describes the requirements for the system and resource support

#### Capability Statement Approach
AU Core capability statements are defined to describe the specific capabilities of a system when playing a particular role (i.e. actor) and includes the complete list of FHIR profiles, RESTful operations, and search parameters supported by that actor.

AU Core capability statements are defined as open, allowing additional resources, profiles, operations, and search parameters to be defined.

AU Core capability statements include qualifying narrative where further clarification for _Must Support_  behaviour is required or where agreed relaxations apply. This narrative is used when actor behaviour caboot be represented through constraints or obligations. In Au Core, all current relaxations apply to responde actors and allow support for at least one of permitted structures. The current agreed relaxations allow a responder to support either `reasonCode` or `reasonReference` (rather than requiring both) in the following AU Core profiles:
* AU Core Encounter
* AU Core MedicationRequest
* AU Core MedicationStatement
* AU Core Procedure

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