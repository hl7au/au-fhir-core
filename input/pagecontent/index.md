

### Introduction
This implementation guide is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context.

AU Core provides FHIR profiles to support conformance and implementation in systems. This uses AU Base representations as the basis of typical use for many purposes. In this regard it is similar in nature to other international FHIR specifications such as US Core FHIR Implementation Guide.

This includes defining in profiles:

- Nomination of mandatory and 'must support' elements
- Setting terminology binding strength appropriately
- Nominating search parameter scope of support expectations
- Other FHIR server requirements

This specification can be implemented as: a) Data Requirement - profile, element and terminology support in systems b) Interaction Requirement - API support, system, search and operations

Systems may nominate to implement the Data Requirement only; however this limits the assumptions connecting software may make when interacting with their FHIR API.

AU Core is particularly useful in defining:

- A testable level of system conformance
- Assumed support by client applications
- As the basis of downstream implementation guides

Assuming capabilities defined in AU Core are implemented allow specifications, applications and business logic to be developed generally with confidence that systems can readily supply this capability.


### Dependencies

AU Core is dependent on:
- [FHIR R4](http://hl7.org/fhir/R4/)
- [HL7 Terminology](https://terminology.hl7.org/5.0.0/)
- [AU Base](http://build.fhir.org/ig/hl7au/au-fhir-base/)
- terminology published in Australia's [National Clinical Terminology Service](https://www.healthterminologies.gov.au/access-clinical-terminology/access-fhir-terminology-resources/)

In addition, the following FHIR implementation guides are referenced:
- [Bulk Data](https://hl7.org/fhir/uv/bulkdata)
- [SMART on FHIR](http://www.hl7.org/fhir/smart-app-launch)


### Usage

This document is a working specification that may be directly implemented by FHIR<sup>&reg;&copy;</sup> system producers.

FHIR<sup>&reg;&copy;</sup> connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian connectathon events.


### How to read this guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): This page describes the set of rules to claim conformance to this guide including the expectations for must support elements in AU Core profiles.
  - [General Requirements](general-requirements.html): This page defines requirements common to all actors and profiles used in this guide including how CapabilityStatements are used to claim conformance.
  - [Must Support](must-support.html): This page defines the expectations for mandatory and must support elements in AU Core Profiles.
- [Guidance](guidance.html):This set of pages lists the guidance for this guide.
  - [General Guidance](general-guidance.html)  This page provides guidance on using the profiles defined in this guide.
  - [Comparison with other national and international specifications](comparison.html): This page provides comparison between AU Core profiles and other national, or international implementation guides.
- [FHIR Artefacts](artifacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This set of pages describes the profiles and extensions that are defined in this guide to exchange quality data. Each profile page includes a narrative description and guidance, formal definition and a "Quick Start" guide which summarises the supported search transactions for each profile. Although the guidance typically focuses on the profiled elements, it may also may focus on un-profiled elements to aid with implementation.
  - [Search Parameters](search-parameters.html): This set of pages lists the search parameters extended for use in this guide for use in AU Core operations.
  - [Terminology](terminology.html): This set of pages lists the value sets and code systems defined in this guide.
  - [Capability Statements](capability-statements.html): This set of pages define the expected FHIR capabilities of AU Core Servers and Clients.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Downloads](downloads.html): This page provides links to downloadable artefacts including the AU Core FHIR NPM package.


### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* Australian FHIR Implementers Community
* HL7 Australia Working Groups
* Australian Digital Health Agency
* CSIRO Australian e-Health Research Centre 
* Secure Messaging Technical Working Group










