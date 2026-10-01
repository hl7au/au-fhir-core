See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's document
- Record or update a patient's document

### Profile Specific Implementation Guidance
- `DocumentReference.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Multiple `DocumentReference.content` repetitions **SHALL NOT** represent different versions of the same document.
- A DocumentReference resource can represent the referenced content using either an address where the document can be retrieved using `DocumentReference.content.attachment.url` or the content as inline base64 encoded data using `DocumentReference.content.attachment.data`.  
    - Although both are marked as *Must Support*, responders are not required to support both an address and inline base64 encoded data, but they **SHALL** support *at least one* of these elements
    - A requester **SHALL** support both elements
