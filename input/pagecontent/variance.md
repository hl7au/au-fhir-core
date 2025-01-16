This version of the AU Core FHIR IG complies with [Version 1.0 of the HL7 Australia FHIR Work Group AU Variance Requirements](https://hl7.org.au/fhir/HL7%20AU%20Variance%20Requirements%20v1.0.pdf). The variance statement identifies whether an HL7 Australia published FHIR implementation guide meets the expectations set by AU Base and/or AU Core. It also identifies resources not profiled in AU Base or AU Core, facilitating the FHIR Work Group’s assessment for potential further development.

HL7 Australia published FHIR implementation guides under the governance of the HL7 Australia FHIR Work Group are required to follow specific publishing requirements:
- **SHOULD** use AU Core profiles
- **SHOULD** use AU Base profiles and extensions

If an implementation guide cannot comply with an AU Base/Core profile or reuse an AU Base extension, the variance is documented on that guide's variance statement page. 

Variance statements undergo review and assessment as part of balloting and publication processes. For more details on the requirements of a variance statement, refer to [AU FHIR IG Variance Requirements](https://hl7.org.au/fhir/HL7%20AU%20Variance%20Requirements%20v1.0.pdf).

### Variance from AU Base
This implementation guide has no variance (i.e. fully compliant) from AU Base FHIR Implementation Guide version 4.2.2-ci-build ([current](https://build.fhir.org/ig/hl7au/au-fhir-base/)).

#### Additionally Profiled Resources

This implementation guide profiles the following resources that are not profiled in AU Base:

- Extension
  - [AU Core Sex Assigned At Birth](https://build.fhir.org/ig/hl7au/au-fhir-core/StructureDefinition-au-core-rsg-sexassignedab.html) profiles core FHIR extension [Person Recorded Sex Or Gender](http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender)