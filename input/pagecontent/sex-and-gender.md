### Name to Use (NtU)​

AU Core supports representation and exchange of the Name to Use data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Name to Use is represented using ‘usual’ in `name.use`. In AU Core, `name.use` is a *Must Support* data element. It should be noted that, `name.period` is not a *Must Support* data element. See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) for further guidance.

### Pronouns​

AU Core supports representation and exchange of the Pronouns data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Pronouns is represented with the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension. In AU Core, the [Individual Pronouns](http://hl7.org/fhir/StructureDefinition/individual-pronouns) extension is a *Must Support* data element, and the value element of the extension is constrained to be [Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) for further guidance.


### Gender Identity (GI)
AU Core supports representation and exchange of the Gender Identity data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) and aligned to [Australian Bureau of Statics Standard for Sex, Gender, Variations of Sex Characteristics and Sexual Orientation Variables, 2020](https://www.abs.gov.au/statistics/standards/standard-sex-gender-variations-sex-characteristics-and-sexual-orientation-variables/latest-release#gender) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Gender Identity is represented with the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension. In AU Core, the [Individual Gender Identity](http://hl7.org/fhir/StructureDefinition/individual-genderIdentity) extension is a *Must Support* data element, and the value element of the extension is constrained to be [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1) ([extensible](http://hl7.org/fhir/R4/terminologies.html#extensible)).  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) for further guidance.

### Recorded Sex or Gender

AU Core supports representation and exchange of the Recorded Sex or Gender (RSG) data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

RSG is represented using the [Person Recorded Sex or Gender](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) extension.  It should be noted the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) is not marked as *Must Support* in AU Core.  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) for further guidance.

### Sex Assigned at Birth

AU Core supports representation and exchange of the Sex Assigned at Birth data element (as defined in the [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)) in:
- [AU Core Patient](StructureDefinition-au-core-patient.html)

Sex assigned at birth is represented using the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) as profiled by [AU Core Sex Assigned At Birth](StructureDefinition-au-core-rsg-sexassignedab.html). It should be noted the [Person Recorded Sex or Gender extension](https://hl7.org/fhir/extensions/StructureDefinition-individual-recordedSexOrGender.html) is not marked as *Must Support* in AU Core.  See [AU Base Sex and Gender](https://build.fhir.org/ig/hl7au/au-fhir-base/sexgender.html) for further guidance.