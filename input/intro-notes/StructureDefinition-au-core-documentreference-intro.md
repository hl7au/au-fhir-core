### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for documents belonging to a patient
- Query for a specific document belonging to a patient
- Record or update a document belonging to a patient


### Comparison with other national and international specifications

A resource conforming to this profile:
- **MAY** be conformant to:
  - [IPA-DocumentReference](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-documentreference) if author is supplied as a reference to a PractitionerRole or a Patient resource
  - [US Core DocumentReference](http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference) if DocumentReference.code is supplied with a value from the US Core DocumentReference Type value set

No equivalent International Patient Summary profile.

Conformance in reverse is not guaranteed, i.e. a resource conforming to [International Patient Access](https://build.fhir.org/ig/HL7/fhir-ipa) or [US Core](http://hl7.org/fhir/us/core) **MAY NOT** conform to AU Core.


### Profile specific implementation guidance
- The DocumentReference resources can represent the referenced content using either an address where the document can be retrieved using `DocumentReference.content.attachment.url` or as inline base64 encoded data using `DocumentReference.content.attachment.data`.
    -  Although both are marked as must support, servers are not required to support an address and inline base64 encoded data, but **SHALL** support *at least one* of these elements.
    -  A client application **SHALL** support both elements.
    -  `DocumentReference.content.attachment.url` may refer to a FHIR Binary Resource (i.e. [base]/Binary/[id]), FHIR Document Bundle (i.e. [base]/Bundle/[id]), or another endpoint.

<p class="request-for-feedback">Composition, DocumentReference, and DiagnosticReport resources support support the exchange of clinical notes. Specific feedback is sought on resource selection.</p>

<p class="request-for-feedback">Specific feedback is sought on the set of clinical notes and associated codes to be supported in Australia.</p>

<p class="request-for-feedback">Specific feedback is sought on the defining the local requirements of $docref operation including <a href="http://hl7.org/fhir/uv/ipa/2022Jan/OperationDefinition-docref.html">IPAFetchDocumentReference</a>.</p>


