### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for lists associated with a patient
- Record or update an list associated with a patient


### Comparison with other national and international specifications

No equivalent International Patient Access, International Patient Summary or US Core profile.


### Profile specific implementation guidance
- When a related person is the author of the list, the [Author as a RelatedPerson](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-author-related-person.html) extension is used and `List.source` is not included.
- When constructing a medicine list see the [AU Medicine List](https://build.fhir.org/ig/hl7au/au-fhir-base/StructureDefinition-au-medlist.html) profile in AU Base.

<p class="stu-note">Specific feedback is sought on the set of lists and associated codes to be supported in Australia.</p>

<p class="stu-note">Composition, DocumentReference, DiagnosticReport, and List resources support support the exchange of clinical notes. Specific feedback is sought on resource selection to form agreement on the clinical notes that SHOULD be exposed via List.</p>