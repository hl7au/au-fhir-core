# au-fhir-core
FHIR core implementable standard for Australia. Continuous integration build viewable from [here](http://build.fhir.org/ig/hl7au/au-fhir-core/branches/main/index.html).

AU Core provides FHIR profiles to support conformance and implementation in systems.
This uses AU Base representations as the basis of typical use for many purposes. In this regard it is similar in nature to other international FHIR specifications such as US Core FHIR Implementation Guide. 

This includes defining in profiles:
* Nomination of mandatory and 'must support' elements
* Setting terminology binding strength appropriately
* Nominating search parameter scope of support expectations
* Other FHIR server requirements

This specification can be implemented as:
a) Data Requirement - profile, element and terminology support in systems
b) Interaction Requirement - API support, system, search and operations 

Systems may nominate to implement the Data Requirement only; however this limits the assumptions connecting software may make when interacting with ther FHIR API.

AU Core is particularly useful in defining:
* A testable level of system conformance
* Assumed support by client applications 
* As the basis of downstream implementation guides

Assuming capabilities defined in AU Core are implemented allow specifications, applications and business logic to be developed generally with confidence that systems can readily supply this capability.

