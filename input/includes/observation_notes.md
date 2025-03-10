#### Mandatory Search Parameters:

The following search parameters and search parameter combinations **SHALL** be supported:

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/observation.html#search)** and **[`category`](https://hl7.org/fhir/R4/observation.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)


    `GET [base]/Observation?patient={Type/}[id]&category={system|}[code]`

    Example:
    
      1. GET [base]/Observation?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/observation-category\|survey

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and category ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/observation.html#search)** and **[`code`](https://hl7.org/fhir/R4/observation.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)


    `GET [base]/Observation?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Observation?patient=5678&amp;code={{ code_system }}\|{{ code_code }},http://loinc.org\|9279-1,http://loinc.org\|85354-9

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and observation code(s). The Observation `code` parameter searches `Observation.code` only. ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHALL** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/observation.html#search)** and **[`category`](https://hl7.org/fhir/R4/observation.html#search)** and **[`date`](https://hl7.org/fhir/R4/observation.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`)


    `GET [base]/Observation?patient={Type/}[id]&category={system|}[code]&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Observation?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/observation-category\|survey&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and date and a category code = `survey` ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))


#### Optional Search Parameters:

The following search parameters and search parameter combinations **SHOULD** be supported:

1. **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)


    `GET [base]/Observation?patient.identifier=[system|][code]`

    Example:
    
      1. GET [base]/Observation?patient.identifier=http://ns.electronichealth.net.au/id/medicare-number\|32788511952
      1. GET [base]/Observation?patient.identifier=http://ns.electronichealth.net.au/id/hi/ihi/1.0\|8003608833357361 

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/observation.html#search)** and **[`category`](https://hl7.org/fhir/R4/observation.html#search)** and **[`status`](https://hl7.org/fhir/R4/observation.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHALL** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `status` (e.g.`status={system|}[code],{system|}[code],...`)


    `GET [base]/Observation?patient={Type/}[id]&category={system|}[code]&status={system|}[code]{,{system|}[code],...}`

    Example:
    
      1. GET [base]/Observation?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/observation-category\|survey&amp;status=final
      1. GET [base]/Observation?patient=5678&amp;category=http://terminology.hl7.org/CodeSystem/observation-category\|survey&amp;status=final

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and category and status ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token))

1. **SHOULD** support searching using the combination of the **[`patient`](https://hl7.org/fhir/R4/observation.html#search)** and **[`code`](https://hl7.org/fhir/R4/observation.html#search)** and **[`date`](https://hl7.org/fhir/R4/observation.html#search)** search parameters:
    - **SHOULD** support chained searching of patient canonical identifier `patient.identifier` (e.g. `patient.identifier=[system|][code]`)
    - **SHOULD** support *[multipleOr](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleOr)* search on `code` (e.g.`code={system|}[code],{system|}[code],...`)
    - **SHALL** support these `date` comparators: `gt,lt,ge,le`
    - **SHOULD** support *[multipleAnd](http://hl7.org/fhir/R4/searchparameter-definitions.html#SearchParameter.multipleAnd)* search on `date` (e.g.`date=[date]&date=[date]]&...`)


    `GET [base]/Observation?patient={Type/}[id]&code={system|}[code]{,{system|}[code],...}&date={gt|lt|ge|le}[date]{&date={gt|lt|ge|le}[date]&...}`

    Example:
    
      1. GET [base]/Observation?patient=5678&amp;code={{ code_system }}\|{{ code_code }},http://loinc.org\|9279-1,http://loinc.org\|85354-9&amp;date=ge2020-01-01T00:00:00Z
      1. GET [base]/Observation?patient.identifier=http://example.org/fhir/mrn\|12345&amp;code={{ code_system }}\|{{ code_code }},http://loinc.org\|9279-1,http://loinc.org\|85354-9&amp;date=ge2020-01-01T00:00:00Z

    *Implementation Notes:* Fetches a bundle of all Observation resources for the specified patient and date and report code(s) ([how to search by reference](http://hl7.org/fhir/R4/search.html#reference) and [how to search by token](http://hl7.org/fhir/R4/search.html#token) and [how to search by date](http://hl7.org/fhir/R4/search.html#date))