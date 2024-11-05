The complete list of search parameters supported by AU Core and the rules for use are defined in the [AU Core CapabilityStatements](capability-statements.html).

AU Core does not introduce new search parameters but refines those from the [Base FHIR Specification](https://hl7.org/fhir/R4/searchparameter-registry.html) or [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/search-parameters.html). AU Core SearchParameters are derived from these existing definitions to specify additional requirements for the following SearchParameter elements:​

- [multipleAnd](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)
- [multipleOr](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)
- [comparator](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.comparator)
- [modifier](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.modifier)
- [chain](https://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.chain) 

<div class="stu-note" markdown="1">
The set of AU Core SearchParameters currently defined in AU Core include search parameters with support for chained search. Future releases of AU Core will define the complete list of search parameters supported by AU Core and the rules for use as a set of FHIR SearchParameters.
</div>

The [registry of standard search parameters]({{site.data.fhir.path}}searchparameter-registry.html) can be found in the FHIR specification and [AU defined search parameters](http://build.fhir.org/ig/hl7au/au-fhir-base/search-parameters.html) in AU Base.

### Common search parameters

- [clinical-patient](SearchParameter-au-core-clinical-patient.html)

### PractitionerRole search parameters

- [practitionerrole-practitioner](SearchParameter-au-core-practitionerrole-practitioner.html)