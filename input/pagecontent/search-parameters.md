AU Core does not introduce new search parameters. AU Core SearchParameters are derived from existing [FHIR SearchParameters](https://hl7.org/fhir/R4/searchparameter-registry.html) or [AU Base SearchParameters](https://hl7.org.au/fhir/6.0.0/search-parameters.html) to specify additional requirements for requesters and responders for the following SearchParameter elements:​

- [multipleAnd](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)
- [multipleOr](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)
- [comparator](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.comparator)
- [modifier](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.modifier)
- [chain](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.chain) 

<div class="stu-note" markdown="1">
The set of AU Core SearchParameters defined in this release of AU Core include search parameters with support for chained search. Future releases of AU Core will define the complete list of search parameters supported by AU Core.
</div>

The complete list of search parameters supported by AU Core and the rules for use are defined in [AU Core CapabilityStatements](capability-statements.html).

The FHIR standard provides more information on the use of search parameters in the [FHIR RESTful search API](http://hl7.org/fhir/R4/http.html#search) and the [Search Parameter Registry](http://hl7.org/fhir/R4/searchparameter-registry.html).

### Common Search Parameters

- [clinical-patient](SearchParameter-au-core-clinical-patient.html)

### PractitionerRole Search Parameters

- [practitionerrole-practitioner](SearchParameter-au-core-practitionerrole-practitioner.html)