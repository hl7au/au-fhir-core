This page lists all ValueSets and CodeSystems supported as part of AU Core. 

As well as terminology defined in FHIR, this specification supports terminology defined in [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html) or [National Clinical Terminology Service (NCTS)](https://www.healthterminologies.gov.au/integration/R4/fhir) terminology resources. 

### Value Sets

This implementation guide does not define any unique value sets. The value sets used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the value sets bound to a supported element or element slice.

|ValueSet|Profile where used|Published|
|---| ---| ---|
|[ActEncounterCode - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v3-ActEncounterCode-extended.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|AU Base|
|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|[AU Core Patient](StructureDefinition-au-core-patient.html)|FHIR|
|[Adverse Reaction Agent](https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|NCTS|
|[AllergyIntolerance Clinical Status Codes](https://hl7.org/fhir/R4/valueset-allergyintolerance-clinical.html)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|FHIR|
|[AllergyIntolerance Verification Status Codes](http://hl7.org/fhir/R4/valueset-allergyintolerance-verification.html)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|FHIR|
|[AllergyIntoleranceSeverity](http://hl7.org/fhir/R4/valueset-reaction-event-severity.html)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html)|FHIR|
|[Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1)|[AU Core Immunization](StructureDefinition-au-core-immunization.html)|NCTS|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|[AU Core Patient](StructureDefinition-au-core-patient.html)|NCTS|
|[Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html), [AU Core Medication](StructureDefinition-au-core-medication.html)|NCTS|
|[Australian Medicines Terminology Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1)|[AU Core Immunization](StructureDefinition-au-core-immunization.html)|NCTS|
|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1)|[AU Core Patient](StructureDefinition-au-core-patient.html)|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|[AU Core Patient](StructureDefinition-au-core-patient.html), [AU Core Organization](StructureDefinition-au-core-organization.html), [AU Core Location](StructureDefinition-au-core-location.html)|NCTS|
|[Body Length Units](http://hl7.org/fhir/ValueSet/ucum-bodylength)|[AU Core BodyHeight](StructureDefinition-au-core-bodyheight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html)|FHIR|
|[Body Temperature Units](http://hl7.org/fhir/ValueSet/ucum-bodytemp)|[AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html)|FHIR|
|[Body Weight Units](http://hl7.org/fhir/ValueSet/ucum-bodyweight)|[AU Core Body Weight](StructureDefinition-au-core-bodyweight.html)|FHIR|
|[Clinical Condition](https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1)|[AU Core Condition](StructureDefinition-au-core-condition.html)|NCTS|
|[Clinical Finding](https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1)|[AU Core AllergyIntolerance](StructureDefinition-au-core-allergyintolerance.html), [AU Core Condition](StructureDefinition-au-core-condition.html)|NCTS|
|[Clinical Specialty](https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1)|[AU Core PractitionerRole](StructureDefinition-au-core-practitionerrole.html)|NCTS|
|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|[AU Core Patient](StructureDefinition-au-core-patient.html), [AU Core Practitioner](StructureDefinition-au-core-practitioner.html)|NCTS|
|[Condition/Diagnosis Severity](https://hl7.org/fhir/R4/valueset-condition-severity.html)|[AU Core Condition](StructureDefinition-au-core-condition.html)|FHIR|
|[ConditionCategoryCodes](https://hl7.org/fhir/R4/valueset-condition-category.html)|[AU Core Condition](StructureDefinition-au-core-condition.html)|FHIR|
|[ConditionClinicalStatusCodes](https://hl7.org/fhir/R4/valueset-condition-clinical.html)|[AU Core Condition](StructureDefinition-au-core-condition.html)|FHIR|
|[ConditionVerificationStatus](https://hl7.org/fhir/R4/valueset-condition-ver-status.html)|[AU Core Condition](StructureDefinition-au-core-condition.html)|FHIR|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), [AU Core Heart Rate](StructureDefinition-au-core-heartrate.html), [AU Core BodyHeight](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html), [AU Core Respiration Rate](StructureDefinition-au-core-resprate.html), [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html), [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|FHIR|
|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html)|[AU Core Patient](StructureDefinition-au-core-patient.html)|AU Base|
|[Encounter Reason Codes](https://hl7.org/fhir/R4/valueset-encounter-reason.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|FHIR|
|[EncounterStatus](https://hl7.org/fhir/R4/valueset-encounter-status.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|FHIR|
|[EventStatus](https://hl7.org/fhir/R4/valueset-event-status.html)|[AU Core Procedure](StructureDefinition-au-core-procedure.html)|FHIR|
|[Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1)|[AU Core Patient](StructureDefinition-au-core-patient.html)|NCTS|
|[Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1)|[AU Core Organization](StructureDefinition-au-core-organization.html)|NCTS|
|[hl7VS-degreeLicenseCertificate - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0360-extended.html)|[AU Core Practitioner](StructureDefinition-au-core-practitioner.html)|AU Base|
|[hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v2-0203-extended.html)|[AU Core Organization](StructureDefinition-au-core-organization.html)|AU Base|
|[hl7VS-providerRole - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v2-0443-extended.html)|[AU Core Immunization](StructureDefinition-au-core-immunization.html)|AU Base|
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
|[Observation Category Codes](https://hl7.org/fhir/R4/valueset-observation-category.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), [AU Core Heart Rate](StructureDefinition-au-core-heartrate.html), [AU Core BodyHeight](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html), [AU Core Respiration Rate](StructureDefinition-au-core-resprate.html), [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html), [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|FHIR|
|[Observation Interpretation Codes](https://hl7.org/fhir/R4/valueset-observation-interpretation.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|FHIR
|[Observation Reference Range Meaning Codes](https://hl7.org/fhir/R4/valueset-referencerange-meaning.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html)|FHIR
|[ObservationStatus](http://hl7.org/fhir/R4/valueset-observation-status.html)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html), [AU Core Heart Rate](StructureDefinition-au-core-heartrate.html), [AU Core Body Height](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html), [AU Core Respiration Rate](StructureDefinition-au-core-resprate.html), [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html), [AU Core Diagnostic Result Observation](StructureDefinition-au-core-diagnosticresult.html), [AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|FHIR|
|[Participant type](https://hl7.org/fhir/R4/valueset-encounter-participant-type.html)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|FHIR|
|[PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-pbs-item.html)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html), [AU Core Medication](StructureDefinition-au-core-medication.html)|AU Base|
|[Practitioner Role](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1)|[AU Core PractitionerRole](StructureDefinition-au-core-practitionerrole.html)|NCTS|
|[Procedure](https://healthterminologies.gov.au/fhir/ValueSet/procedure-1)|[AU Core Procedure](StructureDefinition-au-core-procedure.html)|NCTS|
|[RCPA SPIA Pathology Reporting](https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1)|[AU Core Pathology Result Observation](StructureDefinition-au-core-diagnosticresult-path.html)|NCTS|
|[Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1)|[AU Core MedicationRequest](StructureDefinition-au-core-medicationrequest.html)|NCTS|
|[Service Type](https://healthterminologies.gov.au/fhir/ValueSet/service-type-1)|[AU Core Encounter](StructureDefinition-au-core-encounter.html)|NCTS|
|[ServiceDeliveryLocationRoleType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base//ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.html)|[AU Core Location](StructureDefinition-au-core-location.html)|AU Base|
|[Smoking Status](https://healthterminologies.gov.au/fhir/ValueSet/smoking-status-1)|[AU Core Smoking Status](StructureDefinition-au-core-smokingstatus.html)|NCTS|
|[Vital Signs Units](https://hl7.org/fhir/R4/valueset-ucum-vitals-common.html)|[AU Core Heart Rate](StructureDefinition-au-core-heartrate.html), [AU Core Body Height](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html), [AU Core Respiration Rate](StructureDefinition-au-core-resprate.html), [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html)|FHIR|
|[VitalSigns](https://hl7.org/fhir/R4/valueset-observation-vitalsignresult.html)|[AU Core Heart Rate](StructureDefinition-au-core-heartrate.html), [AU Core Body Height](StructureDefinition-au-core-bodyheight.html), [AU Core Blood Pressure](StructureDefinition-au-core-bloodpressure.html), [AU Core Respiration Rate](StructureDefinition-au-core-resprate.html), [AU Core Body Weight](StructureDefinition-au-core-bodyweight.html), [AU Core Waist Circumference](StructureDefinition-au-core-waistcircum.html), [AU Core BodyTemperature](StructureDefinition-au-core-bodytemp.html)|FHIR|
{:.grid}



### Code systems

This implementation guide does not define any unique code systems. The code systems used in this guide are defined in the base FHIR specification, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html), or [NCTS](https://www.healthterminologies.gov.au/integration/R4/fhir/metadata).  

The list below shows the code systems used in a value set that is bound to a supported element or element slice.

|CodeSystem|ValueSet where used|Published|
|---|---|---|---|
|[ActCode AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v3-ActCode.html)|[ActEncounterCode - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v3-ActEncounterCode-extended.html)|AU Base|
|[ActCode](https://terminology.hl7.org/5.3.0/CodeSystem-v3-ActCode.html)|[ActEncounterCode](https://terminology.hl7.org/5.5.0/ValueSet-v3-ActEncounterCode.html)|FHIR|
|[AdministrativeGender](https://hl7.org/fhir/R4/codesystem-administrative-gender.html)|[AdministrativeGender](https://hl7.org/fhir/R4/valueset-administrative-gender.html)|FHIR|
|[AllergyIntolerance Clinical Status Codes](https://hl7.org/fhir/R4/valueset-allergyintolerance-clinical.html)|[AllergyIntolerance Clinical Status Codes](https://hl7.org/fhir/R4/valueset-allergyintolerance-clinical.html)|FHIR|
|[AllergyIntolerance Verification Status](https://hl7.org/fhir/R4/codesystem-allergyintolerance-verification.html)|[AllergyIntolerance Verification Status Codes](http://hl7.org/fhir/R4/valueset-allergyintolerance-verification.html)|FHIR|
|[AllergyIntoleranceSeverity](https://hl7.org/fhir/R4/codesystem-reaction-event-severity.html)|[AllergyIntoleranceSeverity](https://hl7.org/fhir/R4/valueset-reaction-event-severity.html)|FHIR|
|[Australian Immunisation Register Vaccine](https://www.servicesaustralia.gov.au/air-vaccine-code-formats?context=20)|[Australian Immunisation Register Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/australian-immunisation-register-vaccine-1)|NCTS|
|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/CodeSystem/australian-indigenous-status-1)|[Australian Indigenous Status](https://healthterminologies.gov.au/fhir/ValueSet/australian-indigenous-status-1)|NCTS|
|[Australian States and Territories](https://healthterminologies.gov.au/fhir/CodeSystem/australian-states-territories-1)|[Australian States and Territories](https://healthterminologies.gov.au/fhir/ValueSet/australian-states-territories-2)|NCTS|
|[Condition Category Codes](https://hl7.org/fhir/R4/codesystem-condition-category.html)|[Condition Category Codes](https://hl7.org/fhir/R4/valueset-condition-category.html)|FHIR|
|[Condition Clinical Status Codes](https://hl7.org/fhir/R4/codesystem-condition-clinical.html)|[Condition Clinical Status Codes](https://hl7.org/fhir/R4/valueset-condition-clinical.html)|FHIR|
|[ConditionVerificationStatus](https://hl7.org/fhir/R4/valueset-allergyintolerance-verification.html)|[ConditionVerificationStatus](https://hl7.org/fhir/R4/valueset-condition-ver-status.html)|FHIR|
|[DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|[Australian Pronouns](https://www.healthterminologies.gov.au/integration/R4/fhir/ValueSet/australian-pronouns-1), [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1), [DataAbsentReason](https://hl7.org/fhir/R4/valueset-data-absent-reason.html)|FHIR|
|[DegreeLicenseCertificate AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v2-0360.html)|[hl7VS-degreeLicenseCertificate - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0360-extended.html)|AU Base|
|[EncounterStatus](https://hl7.org/fhir/R4/codesystem-encounter-status.html)|[EncounterStatus](https://hl7.org/fhir/R4/valueset-encounter-status.html)|FHIR|
|[EventStatus](https://hl7.org/fhir/R4/codesystem-event-status.html)|[EventStatus](https://hl7.org/fhir/R4/valueset-event-status.html)|FHIR|
|[IdentifierType AU](https://build.fhir.org/ig/hl7au/au-fhir-base//CodeSystem-au-v2-0203.html)|[DVA Entitlement](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-dva-entitlement.html), [hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0203-extended.html)|AU Base|
|[identifierType]( http://terminology.hl7.org/CodeSystem/v2-0203)|[hl7VS-identifierType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0203-extended.html)|FHIR|
|[IdentifierUse](https://hl7.org/fhir/R4/codesystem-identifier-use.html)|[IdentifierUse](https://hl7.org/fhir/R4/valueset-identifier-use.html)|FHIR|
|[Location Type (Physical) AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-location-physical-type.html)|[Location Type (Physical) - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-location-physical-type-extended.html)|AU Base|
|[Location Type AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-location-type.html)|[ServiceDeliveryLocationRoleType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.html)|AU Base|
|[LocationMode](https://hl7.org/fhir/R4/codesystem-location-mode.html)|[LocationMode](https://hl7.org/fhir/R4/valueset-location-mode.html)|FHIR|
|[LocationStatus](https://hl7.org/fhir/R4/codesystem-location-status.html)|[LocationStatus](https://hl7.org/fhir/R4/valueset-location-status.html)|FHIR|
|[LOINC](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=loinc)|[Australian Pronouns](https://healthterminologies.gov.au/fhir/ValueSet/australian-pronouns-1), [RCPA SPIA Pathology Reporting](https://healthterminologies.gov.au/fhir/ValueSet/spia-pathology-reporting-1), [Vital Signs](http://hl7.org/fhir/R4/valueset-observation-vitalsignresult.html)|NCTS, FHIR|
|[Medication request intent](https://hl7.org/fhir/R4/codesystem-medicationrequest-intent.html)|[Medication request intent](https://hl7.org/fhir/R4/valueset-medicationrequest-intent.html)|FHIR|
|[MedicationRequest status](https://hl7.org/fhir/R4/codesystem-medicationrequest-status.html)|[Medicationrequest status](https://hl7.org/fhir/R4/valueset-medicationrequest-status.html)|FHIR|
|[NameUse](https://hl7.org/fhir/R4/codesystem-name-use.html)|[NameUse](https://hl7.org/fhir/R4/valueset-name-use.html)|FHIR|
|[Observation Category Codes](https://hl7.org/fhir/R4/valueset-observation-category.html)|[Observation Category Codes](https://hl7.org/fhir/R4/valueset-observation-category.html)|FHIR|
|[Observation Reference Range Meaning Codes](https://hl7.org/fhir/R4/codesystem-referencerange-meaning.html)|[Observation Reference Range Meaning Codes](https://hl7.org/fhir/R4/valueset-referencerange-meaning.html)|FHIR|
|[ObservationStatus](https://hl7.org/fhir/codesystem-observation-status.html)|[ObservationStatus](http://hl7.org/fhir/R4/valueset-observation-status.html)|FHIR|
|[ParticipationType](https://hl7.org/fhir/R4/v3/ParticipationType/cs.html)|[Participant type](https://hl7.org/fhir/R4/valueset-encounter-participant-type.html)|FHIR|
|[PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-pbs-item-external.html)|[PBS Item Codes](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-pbs-item.html)|AU Base|
|[providerRole AU](https://build.fhir.org/ig/hl7au/au-fhir-base/CodeSystem-au-v2-0443.html)|[hl7VS-providerRole - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0443-extended.html)|AU Base|
|[providerRole](https://terminology.hl7.org/5.3.0/CodeSystem-v2-0443.html)|[hl7VS-providerRole - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v2-0443-extended.html)|FHIR|
|[RoleCode](https://terminology.hl7.org/5.5.0/CodeSystem-v3-RoleCode.html)|[ServiceDeliveryLocationRoleType - AU Extended](https://build.fhir.org/ig/hl7au/au-fhir-base/ValueSet-au-v3-ServiceDeliveryLocationRoleType-extended.html)|FHIR
|[SNOMED CT (SNOMED CT AU (Australian Medicines Terminology))](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/code-systems/?ui:filter=snomed)|[Adverse Reaction Agent](https://healthterminologies.gov.au/fhir/ValueSet/adverse-reaction-agent-1), [Australian Medication](https://healthterminologies.gov.au/fhir/ValueSet/australian-medication-1), [Australian Medicines Terminology (AMT) Vaccine](https://healthterminologies.gov.au/fhir/ValueSet/amt-vaccine-1), [Clinical Condition](https://healthterminologies.gov.au/fhir/ValueSet/clinical-condition-1), [Clinical Finding](https://healthterminologies.gov.au/fhir/ValueSet/clinical-finding-1), [Clinical Specialty](https://healthterminologies.gov.au/fhir/ValueSet/clinical-specialty-1), [Gender Identity Response](https://healthterminologies.gov.au/fhir/ValueSet/gender-identity-response-1), [Healthcare Organisation Role Type](https://healthterminologies.gov.au/fhir/ValueSet/healthcare-organisation-role-type-1), [Indicator of Hypersensitivity or Intolerance to Substance](https://healthterminologies.gov.au/fhir/ValueSet/indicator-hypersensitivity-intolerance-to-substance-2), [PractitionerRole](https://healthterminologies.gov.au/fhir/ValueSet/practitioner-role-1), [Procedure](https://healthterminologies.gov.au/fhir/ValueSet/procedure-1), [Reason for Request](https://healthterminologies.gov.au/fhir/ValueSet/reason-for-request-1), [Service Type](https://healthterminologies.gov.au/fhir/ValueSet/service-type-1), [Smoking Status](https://healthterminologies.gov.au/fhir/ValueSet/smoking-status-1), [Encounter Reason Codes](http://hl7.org/fhir/R4/valueset-encounter-reason.html)|NCTS, FHIR|
|[Tags for the Identification of Languages](https://terminology.hl7.org/CodeSystem-v3-ietf3066.html)|[Common Languages in Australia](https://healthterminologies.gov.au/fhir/ValueSet/common-languages-australia-2)|FHIR|
|[Unified Code for Units of Measure (UCUM)](https://terminology.hl7.org/CodeSystem-v3-ucum.html)|[BodyLengthUnits](http://hl7.org/fhir/R4/valueset-ucum-bodylength.html), [BodyWeightUnits](http://hl7.org/fhir/R4/valueset-ucum-bodyweight.html)|FHIR|
|[v3 Code System ObservationInterpretation](https://hl7.org/fhir/R4/v3/ObservationInterpretation/cs.html)|[Observation Category Codes](https://hl7.org/fhir/R4/valueset-observation-interpretation.html)|FHIR|
|[v3 Code System ParticipationType](https://hl7.org/fhir/R4/v3/ParticipationType/cs.html)|[Participant type](https://hl7.org/fhir/R4/valueset-encounter-participant-type.html)|FHIR|
{:.grid}


### Concept Maps

See the [FHIR terminology section]({{site.data.fhir.path}}terminologies-conceptmaps.html) for a complete discussion on concept maps and a list of concept map names used in FHIR.  Most concept maps relevant to this guide are defined in the base FHIR specification or [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/terminology.html). The following concept maps are unique to this guide.

**Concept maps published in the NCTS**
- [ObservationStatus Result Available to v2 OBSERVATION RESULT STATUS](https://healthterminologies.gov.au/fhir/ConceptMap/observstatus-result-avail-to-v2-obs-result-status-1)
- [v2 OBSERVATION RESULT STATUS to ObservationStatus Result Available](https://healthterminologies.gov.au/fhir/ConceptMap/v2-obs-result-status-to-observstatus-result-avail-1)
