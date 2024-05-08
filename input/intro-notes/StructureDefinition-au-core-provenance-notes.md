{% include search_parameters_intro.md -%}

{% include prov-white-list.md -%}

#### Mandatory Search Parameters

The following search parameter combinations **SHALL** be supported:

1. **SHALL** support searching for all resources (that are one of the [resource types listed above](#prov-white-list)) for a patient and all the Provenance records for those resources using a combination of the **[`patient`](https://hl7.org/fhir/R4/provenance.html#search)** and **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** search parameters:

    `GET [base]/[Resource]?patient=[id]&_revinclude=Provenance:target`

    Example:

      1. GET [base]/AllergyIntolerance?patient=75&_revinclude=Provenance:target

    *Implementation Notes:* Fetches a bundle of all resources of a particular type for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference)) and any corresponding Provenance resources.

1. **SHALL** support searching for a particular resource (that are one of the [resource types listed above](#prov-white-list)) and all its Provenance resources using combination of the **[`_id`](https://hl7.org/fhir/R4/provenance.html#search)** and the **[`_revinclude`](http://hl7.org/fhir/R4/search.html#revinclude)** search parameters:

    `GET [base]/[Resource]?_id=[id]&_revinclude=Provenance:target`

    Example:

      1. GET [base]/AllergyIntolerance?_id=2425&_revinclude=Provenance:target

    *Implementation Notes:* Fetches a bundle of a resource of a particular type (within the requesters authorization scope) and any corresponding Provenance resources. ([how to search by token](http://hl7.org/fhir/R4/search.html#token))

#### Optional Search Parameters

No optional search parameters for this profile.
