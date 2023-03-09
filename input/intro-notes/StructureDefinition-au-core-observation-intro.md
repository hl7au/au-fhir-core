#### AU Core Profiles for Observation
The following core profiles for the Observation resource have been defined. If implementations use an Observation resource when expressing profile-specific concepts as structured data, they **SHOULD** conform to the following profiles:

- [AU Core Assertion of No Relevant Finding](StructureDefinition-au-core-norelevantfinding.html).
- [AU Core Biological Sex Assigned at Birth](StructureDefinition-au-core-sexassignedatbirth.html).
- Diagnostics:
[AU Core Diagnostic Imaging Result Observation](StructureDefinition-au-core-diagnosticresult-imag.html),
[AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html),
[AU Core Lipid Result](StructureDefinition-au-core-lipid-result.html),
[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html).
- Pregnancy:
[AU Core Estimated Date of Delivery](StructureDefinition-au-core-estimateddateofdelivery.html),
[AU Core Gestational Age](StructureDefinition-au-core-gestationalage.html),
[AU Core Gravidity](StructureDefinition-au-core-gravidity.html),
[AU Core Last Menstrual Period](StructureDefinition-au-core-lastmenstrualperiod.html),
[AU Core Parity](StructureDefinition-au-core-parity.html),
[AU Core Pregnancy Status](StructureDefinition-au-core-pregnancystatus.html).
- Social history:
[AU Core Alcohol Status](StructureDefinition-au-core-alcoholstatus.html),
[AU Core Health Program Participation Summary](StructureDefinition-au-core-healthprogramparticipation.html),
[AU Core Smoking Cease Date](StructureDefinition-au-core-smokingceasedate.html),
[AU Core Smoking Start Date](StructureDefinition-au-core-smokingstartdate.html),
[AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html).
- Vital signs: 
[AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html),
[AU Core BMI](StructureDefinition-au-core-bmi.html),
[AU Core Body Height](StructureDefinition-au-core-bodyheight.html),
[AU Core Body Temperature](StructureDefinition-au-core-bodytemp.html),
[AU Core Body Weight](StructureDefinition-au-core-bodyweight.html),
[AU Core Head Circumference](StructureDefinition-au-core-headcircum.html),
[AU Core Heart Rate](StructureDefinition-au-core-heartrate.html),
[AU Core Oxygen Saturation](StructureDefinition-au-core-oxygensat.html),
[AU Core Respiration Rate](StructureDefinition-au-core-resprate.html),
[AU Core Vitals Panel](StructureDefinition-au-core-vitalspanel.html),
[AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html).


#### Comparison with other national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-Observation](https://build.fhir.org/ig/HL7/fhir-ipa/StructureDefinition-ipa-observation.html)
- [US Core Simple Observation](http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation)

No equivalent International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for observations about a associated with a patient
- Record or update an observation about a patient


#### Profile specific implementation guidance
TBD




