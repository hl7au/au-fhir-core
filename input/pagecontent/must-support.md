### Must support requirements
Labelling an element [MustSupport]( https://www.hl7.org/fhir/conformance-rules.html#mustSupport) means that implementations that produce or consume resources **SHALL** provide "support" for the element in some meaningful way. AU Core profiles impose a core set of must support obligations on classes of implementations based on roles and data services. Some implementation contexts require additional support, e.g. ePrescribing. The publications and/or profiles that define a particular implementation context **SHOULD** make clear the required "support" for that context. 

A sending system:
- when making a request to an endpoint **SHALL** conform to the Conformance/CapabilityStatement for that endpoint and conform to all applicable AU Core conformance requirements 
- when responding to a request - TBD
- when constructing a resource:
   - **SHALL** ensure the resource conforms to the applicable AU Core profile
   - **SHALL** implement the guidance on extensibility if including “additional” elements according to section on [Extensibility – “additional” elements](general-guidance.html#extensibility--additional-elements)
   - **SHALL** implement the guidance on missing data if asserting a mandatory element is missing according to the section on [Missing Data](general-guidance.html#missing-data)
   - **SHALL** populate all elements labelled MustSupport where the sending system has that information unless:
      - there is a clinical reason why supplying the information would be unsafe, misleading, or otherwise clinically inappropriate
      - the data is suppressed due to a security or privacy reason 

A requesting system:
- **SHALL** be capable of meaningfully processing all elements labelled MustSupport where the resource has been constructed in accordance with AU Core conformance requirements; depending on local requirements this may mean display, persist, index, or action in an event or request workflow
- **MAY** choose to reject non-conformant resources 
- **SHALL** interpret missing data elements within resource instances as data not present in the source system
- **SHALL** be able to process resources containing “additional” elements according to section on [Extensibility – “additional” elements](general-guidance.html#extensibility--additional-elements)

A persisting system:
- **SHALL** reject any request to create or update a resource that is not supported by the Conformance/CapabilityStatement, contains a modifier extension that is not supported by the Conformance/CapabilityStatement, or is a supported type but does not conform to the Conformance/CapabilityStatement resource for that endpoint.  
- in circumstances other than those specified above (request to create or update a resource) **MAY** choose to reject non-conformant resources but is not required to do so
- **SHALL** be able to persist resources containing data elements asserting missing information according to the section on [Missing Data](general-guidance.html#missing-data)
- **SHALL** be able to persist resources containing "additional" elements according to section on [Extensibility – “additional” elements](general-guidance.html#extensibility--additional-elements)


#### Presentation of elements labelled MustSupport in profile views

When viewing the raw JSON of a profile, elements labelled *MustSupport* are flagged with a boolean element `mustSupport` set to "true". 

Example: AU Core AllergyIntolerance profile showing clinicalStatus and verificationStatus labelled MustSupport
~~~
{
    "resourceType" : "StructureDefinition",
    ...
    "url" : "http://hl7.org.au/fhir/core/StructureDefinition/au-core-allergyintolerance",
    ...
    "type" : "AllergyIntolerance",
    "baseDefinition" : "http://hl7.org.au/fhir/StructureDefinition/au-allergyintolerance",     
    ...
           {
              "id" : "AllergyIntolerance.clinicalStatus",
              "path" : "AllergyIntolerance.clinicalStatus",
              "mustSupport" : true
           },
           {
              "id" : "AllergyIntolerance.verificationStatus",
              "path" : "AllergyIntolerance.verificationStatus",
              "mustSupport" : true
           },
    ...
}
~~~

When rendered in an implementation publication each profile is presented in different formal views in a tree format under tabs labelled "Differential Table" and "Snapshot Table".

The elements labelled *MustSupport* in the "Differential Table" and "Snapshot Table" view are flagged with an <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" title="This element must be supported">S</span>. To see the full set of elements that must be supported a reader needs to view the "Snapshot Table". 
The "Snapshot Table" presents the elements labelled MustSupport in this profile (shown in the "Differential Table") and the elements labelled MustSupport inherited from a base profile (e.g. [AU Core Body Height](StructureDefinition-au-core-bodyheight.html) based on core [FHIR Body Height Profile](http://hl7.org/fhir/R4/bodyheight.html)). 

Implementers should take note that the full set of constraints (i.e. invariants) defined in a profile are only presented in the "Detailed Descriptions" tab or the raw representation (e.g. XML or JSON) of the profile. The "Differential Table" only presents constraints introduced in this profile in addition to the constraints present in the base profile and base resource. The "Snapshot Table" only presents the constraints visible in the "Differential Table" and additionally presents those constraints set in slices in the base profile.

#### Interpreting profile elements labelled Must Support

Profiles defined in this publication flag MustSupport on elements, there are no flags applied to parts of a data type. 
The explanation on how to interpret MustSupport for an element does not address rules defined in each profile - in implementation the rules defined in the profile must be applied and may limit or extend what is allowed for each element.

The allowed subelements for each supported element in a profile are defined by a combination of the data type from the core specification and any additional rules included in the profile. 
A profile may include rules that:
- limit what is considered 'valid'
- extend the potential subelements by including an extension

Typically AU Core profiles will extend the potential subelements by inheriting from a HL7 AU Base profile, e.g. the element `Medication.code` in profile [AU Core Medication](StructureDefinition-au-core-medication.html) is of type CodeableConcept and is extended by inheriting a medicine specific subelement `Medication.code.coding.extension` [Medication Type extension](http://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-medication-type.html) from [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html). 
The full set of subelements is visible in the "Snapshot Table" which shows the subelements defined in this profile (shown in the "Differential Table") and the subelements inherited from a base profile.


##### Must support elements of primitive type

- A sending system **SHALL** be capable of providing a meaningful, valid, value in the element
- A requesting system **SHALL** be capable of meaningfully processing the value in the element
- A persisting system **SHALL** be capable of persisting the value in the element
 

##### Must support elements of complex type

- A sending system **SHALL** be capable of providing a meaningful, valid, value in the element
- A requesting system **SHALL** be capable of meaningfully processing the value in all parts of the complex type (since the receiver cannot anticipate which subelements might be populated)
- A persisting system **SHALL** be capable of persisting the value in all parts of the complex type (since the persister cannot anticipate which subelements might be populated)


For some complex types a meaningful, valid, value can be populated with only one subelement, but usually more than one subelement is needed.


##### Must support elements of Reference type

- A sending system **SHALL** be capable of populating the element with a valid reference
- A requesting system **SHALL** be capable of meaningfully processing the element with a valid reference that conforms to the profile
- A persisting system **SHALL** be capable of persisting the element with a valid reference that conforms to the profile


##### Must support elements with a choice of data types or profiles
 
- A sending system **SHALL** be capable of populating the element with a value that conforms to at least one choice, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A requesting system **SHALL** be capable of meaningfully processing all choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all choices (since the persister cannot anticipate which data type or profile might be populated)

A profile may slice an element that has a choice of data types or profiles to constrain the set of choices to be supported. For example, the profile [AU Core Patient](StructureDefinition-au-core-patient.html) constrains the choices for `Patient.identifier` defined in [AU Base Patient](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-patient.html) to support Individual Healthcare Identifier (IHI), Medicare Card Number, Department of Veterans' Affairs (DVA) Number:
- A sending system **SHALL** be capable of populating the element with a value that conforms to at least one of those three identifier choices, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A requesting system **SHALL** be capable of meaningfully processing all supported identifier choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all supported identifier choices (since the persister cannot anticipate which data type or profile might be populated)


##### Must support between two elements that are a choice between CodeableConcept and Reference

A resource may support two elements that are used to indicate a reason, e.g. `Encounter.reasonCode` and `Encounter.reasonReference` in the profile [AU Core Encounter](StructureDefinition-au-core-encounter.html). Where both elements are optional and flagged with Must Support in a profile they **SHALL** be treated as a choice of data types:
- A sending system **SHALL** be capable of populating at least one choice, and **SHOULD** be capable of populating every choice for which the sending system might possess data
- A requesting system **SHALL** be capable of meaningfully processing all choices (since the receiver cannot anticipate which element might be populated) 
- A persisting system **SHALL** be capable of persisting all choices (since the persister cannot anticipate which element might be populated)


##### Must support elements with a choice of terminology bindings

A profile may slice an element that has a choice of terminology bindings to constrain the set of choices to be supported. For example, the profile [AU Core Medication](StructureDefinition-au-core-medication.html) constrains the optional terminology choices for `Medication.code` defined in [AU Base Medication](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medication.html) to support AMT and PBS:
- A sending system that supplies a coded value **SHALL** be capable of populating the element with a value that conforms to at least one of those two terminology choices, and **SHOULD** be capable of populating every choice for which the sending system might possess data
  - In this profile, a coded value is optional, a sending system that does not have the capability to supply a coded value from a terminology may supply a text value 
- A requesting system **SHALL** be capable of meaningfully processing all supported terminology choices (since the receiver cannot anticipate which data type or profile might be populated) 
- A persisting system **SHALL** be capable of persisting all supported terminology choices (since the persister cannot anticipate which data type or profile might be populated)









