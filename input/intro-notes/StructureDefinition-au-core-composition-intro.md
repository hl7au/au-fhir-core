See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.


### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for a document for a patient
- Record or update a document for a patient

### Profile Specific Implementation Guidance
- A Composition can be constructed by a human or an automated process, and can contain a mixture of human-curated and software-assembled content. In all instances, Composition authorship information is required.
   - The authors recorded in the Composition indicate whether it is human-curated or software-assembled: the author will be a human (e.g. Practitioner) if the Composition is human-curated, or a device if the Composition is software-assembled. In the case of a software-assembled Composition that is then verified by a human, the author will be the device or system that constructed the Composition, and an additional attester identity will name the human who performed this check.
   - Additional provenance information below the Composition level is optional. AU Core does not currently define a Provenance profile.