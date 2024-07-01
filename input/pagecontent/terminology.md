This page lists all ValueSets and CodeSystems supported as part of AU Core. 

As well as terminology defined in FHIR, this specification supports terminology defined in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html) or [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/integration/R4/fhir) terminology resources. 

### Value Sets

This implementation guide does not define any unique value sets. The value sets used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the value sets bound to a supported element or element slice.

|ValueSet|Profile where used in|Published|
|---| ---| ---|
|[ActEncounterCode - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v3-ActEncounterCode-extended.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|AU Base|
|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|[AU Core Patient](StructureDefinition-au-core-patient.html)|FHIR|
|[Adverse Reaction Agent](https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|NCTS|
|[AllergyIntolerance Clinical Status Codes](https://hl7.org/fhir/R4/valueset-allergyintolerance-clinical.html)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|FHIR|
|[AllergyIntolerance Verification Status Codes](http://hl7.org/fhir/R4/valueset-allergyintolerance-verification.html)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|NCTS|
|[AllergyIntoleranceSeverity](http://hl7.org/fhir/R4/valueset-reaction-event-severity.html)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|NCTS|
|[Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1)|[AU Core Immunization](StructureDefinition-au-core-immunization.html)|NCTS|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|[AU Core Patient](StructureDefinition-au-core-patient.html)|NCTS|
|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html), [AU Core Medication](StructureDefinition-au-core-medication.html)|NCTS|
|[Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1)|[AU Core Immunization](StructureDefinition-au-core-immunization.html)|NCTS|
|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1)|[AU Core Patient](StructureDefinition-au-core-patient.html)|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|[AU Core Patient](StructureDefinition-au-core-patient.html), [AU Core Organization](StructureDefinition-au-core-organization.html), [AU Core Location](StructureDefinition-au-core-location.html)|NCTS|
|[Body Length Units](http://hl7.org/fhir/ValueSet/ucum-bodylength)|[AU Core BodyHeight](StructureDefinition-au-core-bodyheight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html)|FHIR|
|[Body Temperature Units](http://hl7.org/fhir/ValueSet/ucum-bodytemp)|[AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html)|FHIR|
|[Body Weight Units](http://hl7.org/fhir/ValueSet/ucum-bodyweight)|[AU Core Body Weight](StructureDefinition-au-core-bodyweight.html)|FHIR|
|[Clinical Condition](https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1)|[AU Core Condition](StructureDefinition-au-core-condition.html),|NCTS|
|[Clinical Finding](https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html), [AU Core Condition](StructureDefinition-au-core-condition.html),|NCTS|
|[Clinical Specialty](https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1)|[AU Core PractitionerRole](StructureDefinition-au-core-practitionerrole.html)|NCTS|
|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|[AU Core Patient](StructureDefinition-au-core-patient.html), [AU Core Practitioner](StructureDefinition-au-core-practitioner.html)|NCTS|
|[Condition/Diagnosis Severity](https://hl7.org/fhir/R4/valueset-condition-severity.html)|[AU Core Condition](StructureDefinition-au-core-condition.html),|FHIR|
|[ConditionCategoryCodes](https://hl7.org/fhir/R4/valueset-condition-category.html)|[AU Core Condition](StructureDefinition-au-core-condition.html),|FHIR|
|[ConditionClinicalStatusCodes](https://hl7.org/fhir/R4/valueset-condition-clinical.html)|[AU Core Condition](StructureDefinition-au-core-condition.html),|FHIR|
|[ConditionVerificationStatus](https://hl7.org/fhir/R4/valueset-condition-ver-status.html)|[AU Core Condition](StructureDefinition-au-core-condition.html),|FHIR|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), AU Core Heart Rate, [AU Core BodyHeight](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html),, AU Core Respiration Rate, [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html), [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|FHIR|
|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html)|[AU Core Patient](StructureDefinition-au-core-patient.html)|AU Base|
|[Encounter Reason Codes](https://hl7.org/fhir/R4/valueset-encounter-reason.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|FHIR|
|[EncounterStatus](https://hl7.org/fhir/R4/valueset-encounter-status.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|FHIR|
|[EventStatus](https://hl7.org/fhir/R4/valueset-event-status.html)|[AU Core Procedure](StructureDefinition-au-core-procedure.html)|FHIR|
|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|[AU Core Patient](StructureDefinition-au-core-patient.html)|NCTS|
|[Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1)|[AU Core Organization](StructureDefinition-au-core-organization.html)|NCTS|
|[hl7VS-degreeLicenseCertificate - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0360-extended.html)|[AU Core Practitioner](StructureDefinition-au-core-practitioner.html)|AU Base|
|[hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v2-0203-extended.html)|[AU Core Organization](StructureDefinition-au-core-organization.html)|AU Base|
|[hl7VS-providerRole - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v2-0443-extended.html)|[AU Core Immunization](StructureDefinition-au-core-immunization.html)|AU Base|
|[https://hl7.org/fhir/R4/valueset-identifier-use.html](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[AU Core Patient](StructureDefinition-au-core-patient.html)|FHIR|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|[AU Core Patient](StructureDefinition-au-core-patient.html)|FHIR|
|[Immunization Status Codes](https://hl7.org/fhir/R4/valueset-immunization-status.html)|[AU Core Immunization](StructureDefinition-au-core-immunization.html)|FHIR|
|[Indicator of Hypersensitivity or Intolerance to Substance](https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|NCTS
|[Individual Healthcare Identifier Record Status](https://healthterminologies.gov.au/fhir/ValueSet/ihi-record-status-1)|[AU Core Patient](StructureDefinition-au-core-patient.html)|NCTS|
|[Location Type (Physical) - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-location-physical-type-extended.html)|[AU Core Location](StructureDefinition-au-core-location.html)|AU Base|
|[LocationMode](https://hl7.org/fhir/R4/valueset-location-mode.html)|[AU Core Location](StructureDefinition-au-core-location.html)|FHIR|
|[LocationStatus](https://hl7.org/fhir/R4/valueset-location-status.html)|[AU Core Location](StructureDefinition-au-core-location.html)|FHIR|
|[Medication request intent](https://hl7.org/fhir/R4/valueset-medicationrequest-intent.html)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|FHIR|
|[Medicationrequest status](https://hl7.org/fhir/R4/valueset-medicationrequest-status.html)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|FHIR|
|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|[AU Core Patient](StructureDefinition-au-core-patient.html), [AU Core Practitioner](StructureDefinition-au-core-practitioner.html)|FHIR|
|[Observation Category Codes](https://hl7.org/fhir/R4/valueset-observation-category.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), AU Core Heart Rate, [AU Core BodyHeight](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html), AU Core Respiration Rate, [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html), [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|FHIR|
|[Observation Interpretation Codes](https://hl7.org/fhir/R4/valueset-observation-interpretation.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|FHIR
|[Observation Reference Range Meaning Codes](https://hl7.org/fhir/R4/valueset-referencerange-meaning.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|FHIR
|[ObservationStatus](http://hl7.org/fhir/R4/valueset-observation-status.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), AU Core Heart Rate, [AU Core Body Height](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html),, AU Core Respiration Rate, [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html), [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|FHIR|
|[Participant type](https://hl7.org/fhir/R4/valueset-encounter-participant-type.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|FHIR|
|[PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-pbs-item.html)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html), [AU Core Medication](StructureDefinition-au-core-medication.html)|AU Base|
|[Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1)|[AU Core PractitionerRole](StructureDefinition-au-core-practitionerrole.html)|NCTS|
|[Procedure](https://tx.ontoserver.csiro.au/fhir/ValueSet/procedure-1)|[AU Core Procedure](StructureDefinition-au-core-procedure.html)|NCTS|
|[RCPA SPIA Pathology Reporting](https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html)|NCTS|
|[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|NCTS|
|[Service Type](https://healthterminologies.gov.au/fhir/ValueSet/service-type-1)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|NCTS|
|[ServiceDeliveryLocationRoleType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.html)|[AU Core Location](StructureDefinition-au-core-location.html)|AU Base|
|[Smoking Status](https://healthterminologies.gov.au/fhir/ValueSet/smoking-status-1)|[AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|NCTS|
|[Vital Signs Units](https://hl7.org/fhir/R4/valueset-ucum-vitals-common.html)|AU Core Heart Rate, [AU Core Body Height](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html),, AU Core Respiration Rate, [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html)|FHIR|
|[VitalSigns](https://hl7.org/fhir/R4/valueset-observation-vitalsignresult.html)|AU Core Heart Rate, [AU Core Body Height](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html),, AU Core Respiration Rate, [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html)|FHIR|
{:.grid}



### Code systems

This implementation guide does not define any unique code systems. The code systems used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the code systems used in a value set that is bound to a supported element or element slice.

|CodeSystem|ValueSet where used|Published|
|---|---|---|---|
|[ActCode AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v3-ActCode.html)|ActEncounterCode - AU Extended|AU Base|
|[ActCode](https://terminology.hl7.org/5.3.0/CodeSystem-v3-ActCode.html)||FHIR|
|[AdministrativeGender](https://hl7.org/fhir/R4/codesystem-administrative-gender.html)|http://hl7.org/fhir/administrative-gender|AdministrativeGender|FHIR|
|[AllergyIntolerance Clinical Status Codes](https://hl7.org/fhir/R4/codesystem-allergyintolerance-clinical.html)|AllergyIntolerance Clinical Status Codes|FHIR|
|[AllergyIntolerance Verification Status](https://hl7.org/fhir/R4/codesystem-allergyintolerance-verification.html)|AllergyIntolerance Verification Status Codes|FHIR|
|[AllergyIntoleranceSeverity](https://hl7.org/fhir/R4/codesystem-reaction-event-severity.html)|AllergyIntoleranceSeverity|FHIR|
|[Australian Immunisation Register Vaccine](https://www.servicesaustralia.gov.au/air-vaccine-code-formats?context=20)|Australian Immunisation Register Vaccine|NCTS|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1)|Australian Indigenous Status|AU Base|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1)|Australian States and Territories|NCTS|
|[Condition Category Codes](https://hl7.org/fhir/R4/codesystem-condition-category.html)|Condition Category Codes|FHIR|
|[Condition Clinical Status Codes](https://hl7.org/fhir/R4/codesystem-condition-clinical.html)|Condition Clinical Status Codes|FHIR|
|[ConditionVerificationStatus](https://hl7.org/fhir/R4/valueset-allergyintolerance-verification.html)|ConditionVerificationStatus|FHIR|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|Australian Pronouns, Gender Identity Response, DataAbsentReason|FHIR|
|[DegreeLicenseCertificate AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v2-0360.html)|hl7VS-degreeLicenseCertificate - AU Extended|AU Base|
|[EncounterStatus](https://hl7.org/fhir/R4/codesystem-encounter-status.html)|EncounterStatus|FHIR|
|[EventStatus](https://hl7.org/fhir/R4/codesystem-event-status.html)|FHIR|
|[IdentifierType AU](https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html)|DVA Entitlement, ValueSet/v2-0203-extended|FHIR|
|[identifierType](htts://terminology.hl7.org/5.3.0/CodeSystem-v2-0203.html)|IdentifierType,ServiceDeliveryLocationRoleType - AU Extended|FHIR|
|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|IdentifierUse|FHIR|
|[Location Type (Physical) AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-location-physical-type.html)|Location Type (Physical) - AU Extended |AU Base|
|[Location Type AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-location-type.html)|ValueSet/au-v3-ServiceDeliveryLocationRoleType-extended|AU Base|
|[LocationMode](https://hl7.org/fhir/R4/codesystem-location-mode.html)|LocationMode|FHIR|
|[LocationStatus](https://hl7.org/fhir/R4/codesystem-location-status.html)|http://hl7.org/fhir/location-status|LocationStatus|FHIR|
|[LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc)|Australian Pronouns,RCPA SPIA Pathology Reporting,Vital Signs|NCTS|
|[Medication request intent](https://hl7.org/fhir/R4/codesystem-medicationrequest-intent.html)|Medication request intent|FHIR|
|[MedicationRequest status](https://hl7.org/fhir/R4/codesystem-medicationrequest-status.html)|Medicationrequest status|FHIR|
|[NameUse](https://hl7.org/fhir/R4/codesystem-name-use.html)|http://hl7.org/fhir/name-use|NameUse|FHIR|
|[Observation Category Codes](https://hl7.org/fhir/R4/valueset-observation-category.html)|Observation Category Codes|FHIR|
|[Observation Reference Range Meaning Codes](https://hl7.org/fhir/R4/codesystem-referencerange-meaning.html)|Observation Reference Range Meaning Codes|FHIR|
|[ObservationStatus](https://hl7.org/fhir/codesystem-observation-status.html)|ObservationStatus|FHIR|
|[Participant type](https://hl7.org/fhir/R4/valueset-encounter-participant-type.html)|ParticipantType|FHIR|
|[ParticipationType](https://hl7.org/fhir/R4/v3/ParticipationType/cs.html)|ParticipantType|FHIR|
|[PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-pbs-item-external.html)|PBS Item Codes|AU Base|
|[providerRole AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v2-0443.html)|hl7VS-providerRole - AU Extended|AU Base|
|[providerRole](https://terminology.hl7.org/5.3.0/CodeSystem-v2-0443.html)|hl7VS-providerRole - AU Extended|FHIR|
|[RoleCode](https://terminology.hl7.org/5.5.0/CodeSystem-v3-RoleCode.html)|ServiceDeliveryLocationRoleType - AU Extended|FHIR
|[SNOMED CT (SNOMED CT AU (Australian Medicines Terminology))](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=snomed)|Adverse Reaction Agent, AUstralian Medication, AUstralian Medicines Terminology (AMT) Vaccine,Clinical Condition,Clinical Finding,Clinical Specialty,Gender Identity Response,Healthcare Organisation Role Type, Indicator of Hypersensitivity or Intolerance to Substance, Practitioner Role, Procedure,Reason for Request, Service Type, Smoking Status, Encounter Reason Codes|NCTS|
|[Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html)|Common Languages in Australia|FHIR|
|[Unified Code for Units of Measure (UCUM)](https://terminology.hl7.org/CodeSystem-v3-ucum.html)|Vital Signs Units|FHIR|
|[v3 Code System ObservationInterpretation](https://hl7.org/fhir/R4/v3/ObservationInterpretation/cs.html)|Observation Interpretation Codes|FHIR|
|[v3 Code System ParticipationType](https://hl7.org/fhir/R4/v3/ParticipationType/cs.html)|Participant type|FHIR|
{:.grid}


### Concept Maps

See the [FHIR terminology section]({{site.data.fhir.path}}terminologies-conceptmaps.html) for a complete discussion on concept maps and a list of concept map names used in FHIR.  Most concept maps relevant to this guide are defined in the base FHIR specification or [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html). The following concept maps are unique to this guide.

**Concept maps published in the NCTS**
- [ObservationStatus Result Available to v2 OBSERVATION RESULT STATUS](https://healthterminologies.gov.au/fhir/ConceptMap/observstatus-result-avail-to-v2-obs-result-status-1)
- [v2 OBSERVATION RESULT STATUS to ObservationStatus Result Available](https://healthterminologies.gov.au/fhir/ConceptMap/v2-obs-result-status-to-observstatus-result-avail-1)
