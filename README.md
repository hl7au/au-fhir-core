# AU Core FHIR Implementation Guide

[AU Core](http://build.fhir.org/ig/hl7au/au-fhir-core/) is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

AU Core defines the Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information associated with a patient. Applications that conform to AU Core can access the following information about the patient:
- Basic patient details
- Problems / Conditions
- Medication orders, dispense, administration and usage
- Immunization history
- Allergies and intolerances
- Diagnostic orders, report, and results
- Vital signs, and other clinical observations
- Clinical notes & other patient documents

AU Core provides FHIR profiles to support conformance and implementation in systems. This uses AU Base representations as the basis of typical use for many purposes. 

AU Core uses AU Base representations as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined. It also documents the minimum FHIR RESTful interactions for each resource type to access patient data. AU Core promotes interoperability and adoption through common implementation and SHOULD be built on top of for standards development for specific use cases. There are two different ways to implement AU Core:
1.	Systems may support only AU Core Profiles to represent digital health information ([Profile Only Support](general-requirements.html#profile-only-support)).
1.	Systems may support both AU Core Profiles and the RESTful interactions defined for a resource ([Profile + Interaction Support](general-requirements.html#profile--interaction-support)).

In this regard it is similar in nature to other international FHIR specifications such as US Core FHIR Implementation Guide.

For a detailed description of these different usages of AU Core, see the [Conformance Requirements](general-requirements.html) and [Must Support](must-support.html) pages.

## Contributing to AU Core Development

AU Core is in currently in development.

### 1. Join the HL7 AU FHIR Working Group

Email fhirwglist@hl7.com.au to join the HL7 AU FHIR working group.

#### 1. Join the AU Core Technical Design Group

Not yet available

### 1. Discuss an issue in chat.fhir.org

If you have a question, feature request, or proposed change, the best place to start is Zulip e.g. the https://chat.fhir.org/#narrow/stream/179166-implementers stream. If what you want to discuss is specific to Australia you can post in the Australia stream https://chat.fhir.org/#narrow/stream/179173-australia.

### 1. Log a HL7 Jira issue

If you have a question, feature request, or proposed change, the best place to start is by logging a FHIR IG Jira issue on the HL7 AU Jira site directly or use the   option at the bottom of each page of the IG to submit a JIRA issue.

### 1. Create a pull request

When everyone has agreed on a course of action, IG changes should be submitted as a pull request for review in this repository.

### 2. Discuss with the mCODE team

Once the issue is logged, you should discuss with the team on [chat.fhir.org in the australia > AU Core topic]( https://chat.fhir.org/#narrow/stream/179173-australia/topic/AU.20Core) before attempting to make changes yourself. It's important to coordinate with the other people working on the project.

