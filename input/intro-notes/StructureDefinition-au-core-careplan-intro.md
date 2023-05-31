### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a care plan for a patient
- Record or update a patient's care plans


### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to [US Core CarePlan](http://build.fhir.org/ig/HL7/US-Core/StructureDefinition-us-core-careplan.html) if CarePlan.text is included and CarePlan.category supplies the US Core specific terminology

No equivalent International Patient Access or International Patient Summary profile, noting that International Patient Summary supports the core FHIR CarePlan resource unprofiled.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- a care plan can be
  - primarily narrative care plan supported using `CarePlan.text`
  - structured using `CarePlan.goal` and `CarePlan.activity`
- to tie a care plan to a specific condition, `CarePlan.addresses` can be used to reference a Condition resource.
- a Provenance resource can be used for detailed review information such as date of last review and who reviewed the care plan.

<p class="stu-note">Specific feedback is sought on appropriate category values for care plans.</p>
