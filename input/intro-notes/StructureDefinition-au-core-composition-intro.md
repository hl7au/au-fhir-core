See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for a document for a patient
- Record or update a document for a patient

### Profile Specific Implementation Guidance
- A document may be constructed by a human or an automated process, regardless of whether the document contains some content of both kinds. In all instances, document level authorship information is required.
   - The authors recorded in the composition indicate whether the document is human-curated or software-assembled: the author will be a human (e.g. Practitioner) if the document is human-curated, or a device if the document is software-assembled. In the case of a software-assembled document that is then verified by a human, the author will be the device or system that constructed the document, and an additional attester identity will name the human who performed this check.
   - Additional provenance information below the document level is optional. AU Core does not currently define a Provenance profile.