AU Core is a comprehensive framework designed to standardise and enhance the interoperability of digital health information systems in Australia. It serves as an implementable standard for FHIR based interfaces, focusing on the exchange and management of core patient and provider information.

Key features of AU Core include:

- Provides a set of guidelines and data structures for FHIR-based interfaces, focusing on how healthcare systems should exchange data. This includes how systems record, update, search, and retrieve core digital health and administrative information.
- It specifies how systems should interact with each other using RESTful APIs, setting the minimum requirements for systems to manage, update, search, and retrieve core digital health and administrative information.
- Introduces a collection of profiles and capability statements that specify essential resources, elements, and interactions, labelled as MustSupport . This serves as a computable consensus of the minimum requirements that any system implementing AU Core shall support, ensuring a baseline level of interoperability. 
- Should be used by AU stakeholders when implementing FHIR to provide a common implementation
- Should be built on top of when creating further AU profiles and implementation guides 

### HL7 AU FHIR specification architecture

The figure below shows the hierarchical structure and relationships within the FHIR standards as applied in the Australian healthcare context:

  <div> 
    <img src="architecture.png" alt="HL7 AU FHIR specification architecture" style="width:85%"/>
  </div>
<br/>


#### AU Core relationship with AU Base
At the foundation, we have the FHIR standard, which creates a common platform on which a variety of different solutions are implemented.

AU Base adapts FHIR to for use in an Australian context introducing relevant concepts and extensions. AU Base establishes a set of standards and definitions: 
- Extensions 
- Base profiles
- Identifier profiles
- CodeSystems
- Search parameters 

AU Core builds on AU Base to set specific operational standards and profiles for common use within the Australian context. It does so bt deriving profiles either directly from AU Base or from the FHIR standard itself, without introducing any new concepts independently; all foundational elements are inherited from AU Base. AU Core establishes which FHIR resources, key elements, extensions, and vocabularies are required to set a baseline requirement for system implementations. AU Core describes how these elements are to be applied to ensure consistency across implementations,and it further outlines the basic FHIR RESTful interactions for each resource type.

### AU Core relationship with other HL7 AU implementation guides

AU Core serves as the fundamental building block for the development of use case-specific implementation guides within the Australian healthcare system. It provides the common baseline from which more specialised implementation guides can be derived, ensuring consistency and interoperability across various healthcare applications. By defining a set of core FHIR profiles and interactions, AU Core enables other IGs to reuse and extend these components to meet the unique requirements of specific use cases. 

The figure below shows the re-use of AU Core and the central role it plays in shaping implementation guides tailored to address specific needs or scenarios within the Australian context. 

<div> 
  <img src="reuse.png" alt="AU Core context" style="width:85%"/>
</div>

