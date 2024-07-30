
### Relationship to HL7 AU Base

This guide is built on top of the FHIR standard and, where available, [AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/).

  <div> 
    <img src="relationship.png" alt="Relationship with HL7 AU Base" style="width:70%"/>
  </div>
*Figure 1: Relationship with HL7 AU Base*
<br/>

**AU Base:**
- defines Australian realm concepts (e.g. Medicare card number) as an additional set of options to what is available in the FHIR standard including extensions and terminology.
- provides ‘Base’ profiles to inform a reader of which added concepts are considered relevant to a particular resource type. 
- does not apply cardinality constraints or required binding strengths that enforce conformance to those concepts except in rare circumstances. Must support flags are not utilised in AU Base profiles.
- does not recommend or mandate any particular resource, element, or interactions.


**AU Core:**
- defines a set of conformance requirements that enforce a set of 'minimum requirements' on the Australian localised concepts from AU Base, specifying the elements, extensions, vocabularies, and value sets that SHALL be present and how they SHALL be used, along with the RESTful API interactions. 
- for use by Australian stakeholders when implementing FHIR to provide a common implementation and should be built on top of when creating further Australian profiles and implementation guides.
- conformance may become tied to regulatory and/or contractual agreements in order to necessitate adoption to this more prescriptive specification.

The context of AU Core within the set of HL7 AU standards is shown in the figure below.
  <div> 
    <img src="architecture.png" alt="Context of AU Core within the set of HL7 AU standards" style="width:70%"/>
  </div>
*Figure 2: Context of AU Core within the set of HL7 AU standards*
<br/>

### Relationship to AUCDI and other IGs
The primary intent of the [Australian Core Data for Interoperability (AUCDI)](https://sparked.csiro.au/index.php/sparked-products-resources/australian-core-data-for-interoperability/aucdi-release-1/) is to design and govern a collection of coherent, reusable building blocks known as ‘data groups’. These data groups specify “what” the clinical requirements of the clinical information that should be included for data entry, data use, and sharing of information supporting healthcare delivery. However, it does not specify “how” the data is exchanged; this is the
role fulfilled by the FHIR standard. AUCDI is not required to be implemented as a whole single product. Parts can be
implemented as required for specific use cases.

AUCDI Release 1 (R1) is focused on an agreement of “the core of the core” common data elements; minimum data required to support standardised clinical information capture at the point of care as well as enable the safe and meaningful exchange of information to other care providers. 

AU Core is intended to provide an implementable standard for FHIR based interfaces for provider and patient information systems in Australia​ providing:
- an exchange standard for AUCDI (the underpinning clinical data model)
- Data model and RESTful API interactions that set minimum expectations for a system to record, update, search, and retrieve core digital health and administrative information​
- be built on top of for standards development for specific use cases

With AUCDI defining clinical data requirements and FHIR AU Core providing detailed FHIR-based profiles for meeting clinical data requirements and administrative data requirements, an interpretation of AUCDI is necessary which is undertaken through the community.

Updates to AU Core depend upon community input and we encourage our audience to submit questions and feedback to AU Core specifications by clicking on the Propose a change link in the footer of every page. In addition, we encourage requesting any necessary clarifications to AUCDI through the <a href="https://sparked.csiro.au/index.php/sparked-products-resources/australian-core-data-for-interoperability/">AUCDI process</a> that helps inform future updates to FHIR AU Core.

See [AUCDI](aucdi.html) for the relationship between the AUCDI data groups, elements, and AU Core profiles.

AU Core aligns to, and leverages, international standards and other national standards. Corresponding profiles included in relevant FHIR implementation guides were reviewed and considered during the development process to ensure alignment and to facilitate adoption of this standard. These implementation guides include:
- [HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation, Edition 1](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)
- [International Patient Access 1.0.0](https://hl7.org/fhir/uv/ipa/STU1/)
- [International Patient Summary Implementation Guide 1.1.0](https://hl7.org/fhir/uv/ips/STU1.1/)
- [US Core Implementation Guide 7.0.0](https://hl7.org/fhir/us/core/2024Jan/)

The relationship of AU Core to AUCDI and other implementation guides is shown in the figure below.

 <div> 
    <img src="context-colour.png" alt="Relationship to AUCDI and Other IGs" style="width:70%"/>
  </div>
*Figure 3: Relationship to AUCDI and Other IGs*
<br/>

Implementation Guide |Relationship
---|---
[AU Base](https://build.fhir.org/ig/hl7au/au-fhir-base/)|This IG defines Australian realm concepts including terminology, identifiers, and extensions. AU Core uses AU Base, where available, as the basis for profiles that define the FHIR resources to be supported, and the elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined.
[HL7 Cross Paradigm Implementation Guide: Gender Harmony - Sex and Gender Representation](https://hl7.org/xprod/ig/uv/gender-harmony/informative1/)|This IG provides definitive guidance on how to exchange clinical sex and gender affirming information using HL7 models. Sex and gender concepts from this IG have been reviewed for the potential for adoption in Australia. Where adopted, these concepts are included by reference in AU Base and are available for use in AU Core via AU Base.
[International Patient Access](https://hl7.org/fhir/uv/ipa/STU1/)|This IG describes how an application acting on behalf of a patient can access information about the patient from a clinical records system using a FHIR based API. The REST API and profiles in this IG were reviewed and considered during development of AU Core. AU Core is designed to be compatible with IPA, e.g. AU Core conformant data can be accessed by an IPA conformant client.
[International Patient Summary Implementation Guide](https://hl7.org/fhir/uv/ips/STU1.1/)|This IG describes specify how to represent in HL7 FHIR the International Patient Summary (IPS). An International Patient Summary (IPS) document is an electronic health record extract containing essential healthcare information about a subject of care. The profiles in this IG were reviewed and considered during development of AU Core. AU Core is designed to be compatible with IPS, e.g. AU Core conformant data can be used to generate a patient summary that is conformant to IPS.
[US Core Implementation Guide](https://hl7.org/fhir/us/core/STU7/)|This IG is the foundation for US Realm FHIR implementation guides. It defines the minimum constraints on the FHIR resources to create the US Core Profiles. The elements, extensions, vocabularies, and value sets that SHALL be present are identified, and how they are used is defined. It also documents the minimum FHIR RESTful interactions for each US Core Profiles to access patient data. The REST API and profiles in this IG were reviewed and considered during development of AU Core. AU Core is compatible where possible.
{:.grid}

See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.
