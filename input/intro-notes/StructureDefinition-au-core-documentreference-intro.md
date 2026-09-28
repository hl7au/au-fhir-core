See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's document
- Record or update a patient's document

### Profile Specific Implementation Guidance
- `DocumentReference.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Multiple `DocumentReference.content` repetitions can represent the same document in different formats or attachment metadata, and **SHALL NOT** represent different versions of the same document.
- A DocumentReference resource can represent content using either a url using `DocumentReference.content.attachment.url` or as inline base64 encoded data using `DocumentReference.content.attachment.data`.  
    - A responder is not required to support both `DocumentReference.content.attachment.url` and `DocumentReference.content.attachment.data`, but **SHALL** support at least one of these elements. A requester **SHALL** support both.
