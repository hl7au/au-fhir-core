### Introduction
AU Core is provided to support the use of HL7<sup>&reg;</sup> FHIR<sup>&reg;&copy;</sup> in an Australian context. It sets the minimum expectations on FHIR resources to support conformance and implementation in systems.

AU Core defines the data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information. 

AU Core uses AU Base representations, where available, as the basis for profiles that define the FHIR resources to be supported, along with their elements, extensions, vocabularies, and value sets, and how they are used is defined. It also documents the minimum FHIR RESTful interactions for each resource type to access data. AU Core promotes interoperability and adoption through common implementation and provides the basis for further implementation guide development for specific use cases.

There are two different ways to implement AU Core:
1. Profile Only Support: systems support only the resources as profiled by AU Core to represent digital health information.
1. Profile Support + Interaction Support: systems support the resources as profiled by AU Core to represent digital health information (Profile Support) and the [RESTful FHIR API](http://hl7.org/fhir/R4/http.html) interactions defined for it (Interaction Support).

In this regard it is similar in nature to other national core specifications such as US Core FHIR Implementation Guide and international FHIR specifications such as International Patient Access FHIR Implementation Guide.

For a detailed description of the different ways to implement AU Core see the [Conformance Requirements](general-requirements.html) page.

### Project Background

This implementation guide is under development through the AU Core project as part of the [Sparked AU FHIR Accelerator](https://sparked.csiro.au/). The Sparked AU FHIR Accelerator is a community comprising government, technology vendors, provider organisations, peak bodies, practitioners, and domain experts, to accelerate the creation and use of national FHIR standards in health care information exchange.

The AU Core Sparked project includes:
- AUCDI - clinician focussed data requirements project.
- AU Core FHIR Implementation Guide - HL7 Australia technical data access and exchange specification.

[AUCDI](https://sparked.csiro.au/index.php/sparked-products-resources/aucdi/) aims to define requirements underlying the standardisation of the capture, structure, usage, and exchange of health data to counteract the current fragmentation of Australia’s health data systems. The AUCDI forms a basis for clinical data requirements for AU Core.

### Dependencies

{% include dependency-table.xhtml %}

### Usage

AU Core is particularly useful in defining:

- A testable level of system conformance
- Assumed support by client applications
- The basis of downstream implementation guides

Implementation of capabilities defined in AU Core enables specifications, applications and business logic to be developed with confidence.

This document is a working specification that may be directly implemented by FHIR<sup>&reg;&copy;</sup> system producers.

FHIR<sup>&reg;&copy;</sup> Connectathon events are key to the verification of the guide as being suitable for 
implementation. This implementation guide will be used as the basis for Australian Connectathon events.

### AU Core Actors

The following actors are part of AU Core:

**AU Core Requestor**

A system that creates and initiates a data access request to retrieve core digital health and administrative information. The AU Core Requestor is the client in a client-server interaction.  
<br/>

**AU Core Responder**

A system that responds to the data access request submitted by requesters, providing responses to requests for core digital health and administrative information. The AU Core Responder is the server in a client-server interaction.  
<br/>

### AU Core FHIR RESTful Interactions

For systems that support AU Core FHIR RESTful interactions ([Profile Support + Interaction Support](general-requirements.html#profile-support--interaction-support)), the interaction requirements, such as read and search operations, are detailed in the AU Core Requester and AU Core Responder [CapabilityStatements](capability-statements.html).

The following are simple examples of AU Core FHIR RESTful interactions between AU Core Requester and AU Core Responder actors:

**Example of a FHIR RESTful read interaction**

<div> 
  <img src="au-core-read-interaction-example.svg" alt="FHIR RESTful read interaction example" style="width:60%"/>
</div>
<br/>
*Figure 1: Read a Patient using the logical id*
<br/>
<br/>

**Example of a FHIR RESTful search interaction**

<div> 
  <img src="au-core-search-interaction-example.svg" alt="FHIR RESTful search interaction example" style="width:60%"/>
</div>
<br/>
*Figure 2: Search for patients that match a family name*
<br/>

### How to Read This Guide

This guide is divided into several pages which are listed at the top of each page in the menu bar.

- [Home](index.html): This page provides the introduction and scope for this guide.
- [Conformance](conformance.html): These pages describe the set of rules to claim conformance to this guide including the expectations for *Must Support*  elements in AU Core profiles.
  - [General Requirements](general-requirements.html): This page defines requirements common to all actors and profiles used in this guide including how CapabilityStatements are used to claim conformance. This page defines the expectations for mandatory and *Must Support*  elements in AU Core Profiles.
  - [Declaring Conformance](declaring-conformance.html): This page describes how to declare conformance to AU Core.
- [Guidance](guidance.html): These pages list the guidance for this guide.
  - [General Guidance](general-guidance.html): This page provides guidance on using the profiles defined in this guide.
  - [Medicine Information](medicine-information.html): This page provides guidance on constructing medication related resources.
  - [Sex and Gender](sex-and-gender.html): This page provides guidance on the representation of sex, gender, and related concepts.
  - [AUCDI](aucdi.html): This page maps AUCDI data groups and elements to FHIR artefacts in AU Core.
  - [Relationship With Other IGs](relationship.html): This page provides guidance on the relationship between AU Core, AUCDI, and other implementation guides.
  - [AU Variance Statement](variance.html): This page documents the variance from AU Base.
  - [Comparison With Other National and International IGs](comparison.html): This page provides comparison between AU Core profiles and other national, or international implementation guides.
  - [Future of AU Core](future.html): This page outlines the approach to developing AU Core and yearly update cycle.
- [Security and Privacy](security.html): This page documents the AU Core general security and privacy requirements and recommendations.
- [FHIR Artefacts](fhirartefacts.html): These pages provide detailed descriptions and formal definitions for all the FHIR artefacts defined in this guide.
  - [Artefacts Summary](artifacts.html): This page lists the FHIR artefacts defined in this guide.
  - [Profiles and Extensions](profiles-and-extensions.html): This page describes the profiles and extensions that are defined in this guide to exchange data. Each profile page includes a narrative description and guidance, formal definition and a "Notes" section that summarises the supported search transactions for each profile. Guidance typically focuses on the profiled elements but can include guidance on un-profiled elements to aid with implementation.
  - [Search Parameters](search-parameters.html): This page lists the search parameters extended for use in this guide for use in AU Core operations.
  - [Terminology](terminology.html): This page lists the value sets and code systems supported in this guide.
  - [Capability Statements](capability-statements.html): This page defines the expected FHIR capabilities of AU Core Responders and Requesters.
  - [Actor Definitions](actors.html): This page defines the AU Core actors, AU Core Responder and AU Core Requester.
- [Examples](examples.html): This page lists all the examples used in this guide.
- [Support](support.html): These pages provide supporting material for implementation of AU Core.    
  - [Downloads](downloads.html): This page provides links to downloadable artefacts.
  - [License and Legal](license.html): This page outlines the license and legal requirements for material in AU Core.
- [Change Log](changes.html): This page documents the changes across versions of this guide.

### Collaboration
This guide is the product of collaborative work undertaken with participants from:

* [Sparked HL7 Australia AU Core Technical Design Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+-+AU+Core+Technical+Design+Group+Home)
* [HL7 Australia FHIR Working Group](https://confluence.hl7.org/display/HAFWG/HL7+Australia+FHIR+Work+Group+Home)
* Australian FHIR Implementers Community  

Primary Editors: Brett Esler, Danielle Tavares-Rixon, Dusica Bojicic.