AU Realm FHIR implementation guide projects are required to follow specific publishing guidelines:
- **SHOULD** use AU Core profiles
- **SHOULD** use AU Base profiles and extensions

If a FHIR implementation guide cannot comply with an AU Core profile or reuse an AU Base extension, or fails to comply with an AU Base profile, it must document the variance.

The Variance Statement identifies where an AU Realm FHIR implementation guide does not meet the expectations set by AU Base and/or AU Core. It also identifies resources not profiled in AU Base or AU Core, facilitating the FHIR Work Group's assessment for potential further development. Additionally, the Variance Statement page indicates where the AU Realm FHIR IG fully complies with AU Base or AU Core.

The Variance Statement undergoes review and assessment by the FHIR Work Group as part of the FHIR IG balloting process. For more details on the requirements of a Variance Statement, refer to [AU FHIR IG Variance Requirements](https://confluence.hl7.org/display/HA/Process%3A++AU+FHIR+IG+Variance+Requirements).


### Variance from AU Base
This implementation guide has no variance (i.e. fully compliant) from AU Base FHIR Implementation Guide version 4.2.1-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-base/)).

#### Additionally Profiled Resources

This implementation guide profiles the following resources that are not profiled in AU Base: 

For FHIR implementation guides that introduce profiles not present in AU Base or AU Core Implementation Guides, the HL7 FHIRWG recommends listing all of these profiles. This will assists in identifying  potential profiles for the FHIRWG to develop further.


- Extension
  - [AU Core Sex Assigned At Birth](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-rsg-sexassignedab.html) profiles core FHIR extension [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender)   
