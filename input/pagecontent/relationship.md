### Relationship with other HL7 AU FHIR specifications

As illustrated in figure below, this guide is built on top of FHIR and AU Base.

  <div> 
    <img src="relationship.png" alt="Relationship with HL7 AU FHIR specifications" style="width:85%"/>
  </div>
<br/>


#### Base vs Core

AU Base: 
- defines Australian realm concepts (e.g. Medicare card number) as an additional set of options to what is available in the FHIR standard including extensions and terminology.
- provides ‘Base’ profiles to inform a reader of which added concepts are considered relevant to a particular resource type. 
- does not apply cardinality constraints or required binding strengths that enforce conformance to those concepts except in rare circumstances. Must support flags are not utilised in AU base profiles.
- does not recommend or mandate any particular resource, element, or interactions .


AU Core: 
- defines a set of conformance requirements that enforce a set of 'minimum requirements' on the Australian localised concepts from AU Base through cardinality constraints, must support flags, required/extensible binding strengths, and capability statements. 
- for use by Australian stakeholders when implementing FHIR to provide a common implementation and should be built on top of when creating further Australian profiles and implementation guides.
- conformance may become tied to regulatory and/or contractual agreements in order to necessitate adoption to this more prescriptive specification.

### Relationship to AUCDI and Other IGs

  <div> 
    <img src="context-colour.png" alt="Relationship to AUCDI and Other IGs" style="width:85%"/>
  </div>
<br/>


