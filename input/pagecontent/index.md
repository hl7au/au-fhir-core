### Introduction
AU Core is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

AU Core defines the Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. 

AU Core uses AU Base representations as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined. It also documents the minimum FHIR RESTful interactions for each resource type to access data. AU Core promotes interoperability and adoption through common implementation and SHOULD be built on top of for standards development for specific use cases. 

There are two different ways to implement AU Core:
1. Profile Only Support: systems support only the resources as profiled by AU Core to represent digital health information.
1. Profile Support + Interaction Support: systems support the resources as profiled by AU Core to represent digital health information (Profile Support) and [the RESTful FHIR API](http://hl7.org/fhir/R4/http.html) interactions defined for it (Interaction Support).

In this regard it is similar in nature to other national core specifications such as US Core FHIR Implementation Guide and international FHIR specifications such as International Patient Access FHIR Implementation Guide.

For a detailed description of the different ways to implement AU Core see the [Conformance Requirements](general-requirements.html) page.

### Project background

This implementation guide is under development through the AU Core project as part of the [Sparked AU FHIR Accelerator](https://confluence.hl7.org/display/HA/Sparked+FHIR+Accelerator). The Sparked AU FHIR Accelerator is a community comprising government, technology vendors, provider organisations, peak bodies, practitioners, and domain experts, to accelerate the creation and use of national FHIR standards in health care information exchange.

The AU Core project includes:
- Australian Core Data for Interoperability
- AU Core FHIR Implementation Guide

The [Australian Core Data for Interoperability (AUCDI)](https://confluence.csiro.au/display/FHIR/AUCDI+Release+1) aims to standardise the capture, structure, usage, and exchange of health data to counteract the current fragmentation of Australia’s health data systems. The AUCDI forms a basis for clinical data requirements for AU Core.

#### Contributing to AU Core Development
AU Core R1 is in currently in development. Ballot for Comment is scheduled for March 2024.

##### Join the AU Core Technical Design Group

See [How to Register - Participant Information](https://confluence.csiro.au/display/FHIR/How+to+Register+-+Participant+Information) for information on how to participate in the AU Core Technical Design Group and Clinical Design Group as part of Sparked, the Australian FHIR Accelerator. 

Visit the [HL7 Australia - AU Core Technical Design Group Home](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+Core+Technical+Design+Group+Home)

##### Discuss an issue in chat.fhir.org

If you have a question, feature request, or proposed change, the best place to start is Zulip e.g. the Australia stream https://chat.fhir.org/#narrow/stream/179173-australia.

##### Identify future work or raise discussion points

To identify future work or raise discussion points, you can post in the Australia stream https://chat.fhir.org/#narrow/stream/179173-australia or raise [specification feedback](https://confluence.hl7.org/display/HL7/Specification+Feedback) through a [Jira issue tracker](https://jira.hl7.org/issues/?filter=21325).


###### Discuss with the team

Once the issue is logged, you should discuss with the team on [chat.fhir.org in the australia > AU Core topic]( https://chat.fhir.org/#narrow/stream/179173-australia/topic/AU.20Core) before attempting to make changes yourself. It's important to coordinate with the other people working on the project. When everyone has agreed on a course of action, IG changes should be submitted as a pull request for review in the [AU Core repository](https://github.com/hl7au/au-fhir-core).


### Dependencies

{% include dependency-table.xhtml %}

In addition, the following FHIR implementation guides are referenced:
- [Bulk Data Access](https://hl7.org/fhir/uv/bulkdata)
- [International Patient Access](https://hl7.org/fhir/uv/ipa)
- [SMART Application Launch Framework](http://www.hl7.org/fhir/smart-app-launch)

### Usage

AU Core is particularly useful in defining:

- A testable level of system conformance
- Assumed support by client applications
- As the basis of downstream implementation guides

Assuming capabilities defined in AU Core are implemented allow specifications, applications and business logic to be developed generally with confidence that systems can readily supply this capability.

This document is a working specification that may be directly implemented by FHIR<sup>&reg;&copy;</sup> system producers.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.

### AU Core Actors

The following actors are part of the AU Core IG:

**AU Core Requestor**

An application that initiates a data access request to retrieve patient data. The AU Core Requestor is the client in a client-server interaction. The terms "requester", "client", and "app" are used interchangeably throughout this guide and are not meant to limit this actor to patient and provider apps. Payers and other users can use the same technology. Consider these terms a short-hand notation for a "user application".
<br/><br/>

**AU Core Responder**

A system that responds to the data access request providing patient data. The AU Core Responder is the server in a client-server interaction. The terms "server", "AU Core FHIR server", "FHIR server" and "EHR" are used interchangeably throughout this guide and are not meant to limit this actor to electronic health record systems. HIEs, care coordination platforms, population health systems, etc., can use the same technology. Consider these terms a short-hand notation for an "interoperable healthcare platform".
<br/><br/>


### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): This page describes the set of rules to claim conformance to this guide including the expectations for must support elements in AU Core profiles.
  - [General Requirements](general-requirements.html): This page defines requirements common to all actors and profiles used in this guide including how CapabilityStatements are used to claim conformance. This page defines the expectations for mandatory and must support elements in AU Core Profiles.
- [Guidance](guidance.html): This set of pages lists the guidance for this guide.
  - [General Guidance](general-guidance.html): This page provides guidance on using the profiles defined in this guide.
  - [AUCDI](aucdi.html): This page maps the AU Core resources and elements to AUCDI data classes and data elements.
  - [Relationship with other IGs](relationship.html): This page provides guidance on the relationship between AU Core and other implementation guides.
  - [Comparison with other national and international specifications](comparison.html): This page provides comparison between AU Core profiles and other national, or international implementation guides.
  - [Future of AU Core](future.html): This page outlines the approach to developing AU Core and yearly update cycle.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This set of pages describes the profiles and extensions that are defined in this guide to exchange quality data. Each profile page includes a narrative description and guidance, formal definition and a "Quick Start" guide which summarises the supported search transactions for each profile. Although the guidance typically focuses on the profiled elements, it may also may focus on un-profiled elements to aid with implementation.
  - [Search Parameters](search-parameters.html): This set of pages lists the search parameters extended for use in this guide for use in AU Core operations.
  - [Terminology](terminology.html): This set of pages lists the value sets and code systems defined in this guide.
  - [Capability Statements](capability-statements.html): This set of pages define the expected FHIR capabilities of AU Core Servers and Clients.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Downloads](downloads.html): This page provides links to downloadable artefacts that developers can use to help them implement this guide.
- [Change Log](changes.html): This page documents the changes across versions of this guide.

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Sparked HL7 AU Technical Design Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+Core+Technical+Design+Group+Home)
* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community

Primary Editors: Brett Esler, Danielle Tavares-Rixon, Dusica Bojicic.









