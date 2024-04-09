The HL7 Australia FHIR Working Group has introduced a [Proposal: AU Base & AU Core Variance process](https://confluence.hl7.org/pages/viewpage.action?pageId=227217286). This proposal sets expectations for all HL7 AU FHIR implementation guides to 
- be compliant with AU Core profiles. Implementation guides that are unable to comply with AU Base Core profiles are expected to document these variances.
- to be compliant with AU Base profiles and extensions. Implementation guides that are unable to comply with AU Base profiles or reuse AU Base extensions are expected to document these variances.

To be compliant with an AU Core profile implies that the profiles within the downstream implementation guides satisfy the expectations established by AU Core profile. Instances that are valid against the downstream implementation guide profile are also automatically valid the AU Core profile. Compliance expectations are set at [profile only support](general-requirements.html#profile-only-support), ensuring systems build and conform to defined profiles for data representation without the requirement to implement AU Core interactions. It is important to note that stating compliance with AU Core profiles does not guarantee full conformance.  

### Variance from AU Base
A summary of variances from profiles defined in this implementation guide and profiles in AU Base FHIR Implementation Guide version 4.2.1-ci-build.

**Profiles**
- [AU Core AllergyIntolerance](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-allergyintolerance.html): No variance
- [AU Core Condition](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-condition.html): No variance
- [AU Core Encounter](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-encounter.html): No variance
- [AU Core Immunization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-immunization.html): No variance
- [AU Core Location](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-location.html): No variance
- [AU Core Medication](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-medication.html): No variance 
- [AU Core MedicationRequest](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-medicationrequest.html): No variance 
- [AU Core Blood Pressure](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-bloodpressure.html): Not in AU Base
- [AU Core Body Height](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-bodyheight.html): Not in AU Base
- [AU Core Body Temperature](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-bodytemp.html): Not in AU Base
- [AU Core Body Weight](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-bodyweight.html): Not in AU Base
- [AU Core Pathology Result Observation](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-diagnosticresult-path.html): No variance
- [AU Core Diagnostic Result Observation](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-diagnosticresult.html): 
- [AU Core Heart Rate](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-heartrate.html):  Not in AU Base
- [AU Core Respiration Rate](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-resprate.html): Not in AU Base
- [AU Core Smoking Status](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-smokingstatus.html): Not in AU Base
- [AU Core Waist Circumference](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-waistcircum.html): Not in AU Base
- [AU Core Organization](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-organization.html): No variance
- [AU Core Patient](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-patient.html): No variance
- [AU Core Practitioner](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitioner.html): No variance
- [AU Core PractitionerRole](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-practitionerrole.html): No variance
- [AU Core Procedure](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-procedure.html): No variance
- [AU Core Provenance ](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-provenance.html): Not in AU Base

**Extensions**
- [AU Core Sex Assigned At Birth](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-rsg-sexassignedab.html): No variance

**Terminology**
- n/a 