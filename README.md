# AU Core FHIR Implementation Guide

[AU Core](http://build.fhir.org/ig/hl7au/au-fhir-core/) is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

AU Core defines the Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. Applications that conform to AU Core can access the following information about the patient:
- Basic patient details
- Problems / Conditions
- Medication orders, dispense, administration and usage
- Immunization history
- Allergies and intolerances
- Diagnostic orders, report, and results
- Vital signs, and other clinical observations
- Clinical notes & other patient documents

AU Core uses AU Base representations as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined. It also documents the minimum FHIR RESTful interactions for each resource type to access patient data. AU Core promotes interoperability and adoption through common implementation and SHOULD be built on top of for standards development for specific use cases. There are two different ways to implement AU Core:
1.	Systems may support only AU Core Profiles to represent digital health information ([Profile Only Support](http://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html#profile-only-support)).
1.	Systems may support both AU Core Profiles and the RESTful interactions defined for a resource ([Profile + Interaction Support](http://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html#profile--interaction-support)).

In this regard it is similar in nature to other international FHIR specifications such as US Core FHIR Implementation Guide.

For a detailed description of these different usages of AU Core, see the [Conformance Requirements](http://build.fhir.org/ig/hl7au/au-fhir-core/general-requirements.html) and [Must Support](http://build.fhir.org/ig/hl7au/au-fhir-core/must-support.html) pages.

## Did you find an error?
If it's a specification error please search the issues list in [Jira issue tracker](https://jira.hl7.org/issues/?filter=21325) to ensure the error was not already reported. You can use the ![Propose-a-change](https://github.com/hl7au/au-fhir-core/assets/116611317/642b45cb-c82e-4fb5-a24c-37b263289fac)
 option at the bottom of each page of the IG to trigger the creation of a Jira issue.

If you've found an issue with this repository or it's contents then you please [raise a GitHub issue](https://github.com/hl7au/au-fhir-core/issues/new).

## Contributing to AU Core Development

AU Core R1 is in currently in development. Ballot for Comment is scheduled for March 2023.

### 1. Join the AU Core Technical Design Group

See [How to Register - Participant Information](https://confluence.csiro.au/display/FHIR/How+to+Register+-+Participant+Information) for information on how to participate in the AU Core Technical Design Group and Clinical Design Group as part of Sparked, the Australian FHIR Accelerator. Visit the [HL7 Australia - AU Core Technical Design Group Home](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+Core+Technical+Design+Group+Home)

### 2. Discuss an issue in chat.fhir.org

If you have a question, feature request, or proposed change, the best place to start is Zulip e.g. the https://chat.fhir.org/#narrow/stream/179166-implementers stream. If what you want to discuss is specific to Australia you can post in the Australia stream https://chat.fhir.org/#narrow/stream/179173-australia.

### 3. Identify future work or raise discussion points

To identify future work or raise discussion points, you can post in the Australia stream https://chat.fhir.org/#narrow/stream/179173-australia or raise [specification feedback](https://confluence.hl7.org/display/HL7/Specification+Feedback) through a [Jira issue tracker](https://jira.hl7.org/issues/?filter=21325).

### 4. Discuss with the team

Once the issue is logged, you should discuss with the team on [chat.fhir.org in the australia > AU Core topic]( https://chat.fhir.org/#narrow/stream/179173-australia/topic/AU.20Core) before attempting to make changes yourself. It's important to coordinate with the other people working on the project.

### 5. Create a pull request

When everyone has agreed on a course of action, IG changes should be submitted as a pull request for review in this repository.



