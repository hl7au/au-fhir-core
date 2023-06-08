
### Downloadable copy of entire specification

A downloadable version of the entire implementation guide is available so it can be hosted locally:

- [Downloadable Copy](full-ig.zip)

### Package file

The following package file includes an NPM package file used by many of the FHIR tools.  It contains all the value sets, profiles, extensions, list of pages and urls in the IG, etc defined as part of this version of the Implementation Guides. This file should be the first choice whenever generating any implementation artefacts since it contains all of the rules about what makes the profiles valid. Implementers will still need to be familiar with the content of the specification and profiles that apply in order to make a conformant implementation:

- [R4 Package](package.tgz){::download="true"}
- [R4B Package](package.r4b.tgz){::download="true"}

See the overview on [validating FHIR profiles and resources](http://hl7.org/fhir/R4/validation.html) for more information about validating profiles and how to use these artefacts

### Examples 

All examples included in this implementation guide are available for download:

- [XML](examples.xml.zip)
- [JSON](examples.json.zip)
- [TTL](examples.ttl.zip)

### Implementation Guide Details

The following link to the ImplementationGuide resource defines the technical details of this publication, including dependencies and publishing parameters:

- [AU Core ImplementationGuide Resource](ImplementationGuide-hl7.fhir.au.core.html)

### OpenAPI (a.k.a., Swagger) Definition Files

 The following [OpenAPI](https://www.openapis.org/) files are generated from the AU Core CapabilityStatements:

- [AU Core Server](au-core-server.openapi.json)
- [AU COre Client](au-core-client.openapi.json)
