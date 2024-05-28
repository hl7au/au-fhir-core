### Declaring Conformance

Systems may declare conformance to AU Core as: 
- [Profile Only Support](general-requirements.html#profile-only-support) for a system declaring conformance to one or more AU Core profiles
- [Profile Support + Interaction Support](general-requirements.html#profile-support--interaction-support) for a system declaring conformance to one or both of the [AU Core Capability Statements](capability-statements.html)

FHIR Servers that implement AU Core declare conformance to one of these approaches as described in the relevant section below.

#### Profile Only Support

Servers that implement Profile Only Support to AU Core profiles declare conformance to each profile by hosting a [CapabilityStatement](http://hl7.org/fhir/capabilitystatement.html) resource at [server-base-url]/metadata that is available to both authenticated and unauthenticated clients. The capability statement declares Profile Only Support for a resource as either a base profile using [CapabilityStatement.rest.resource.profile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.profile) or supported profile using [CapabilityStatement.rest.resource.supportedProfile](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.rest.resource.supportedProfile).

Example: CapabilityStatement resource for a server supporting the AU Core Patient profile as a system-wide profile that is applied across all instances of the Patient resource:

    ```
    {
      "resourceType": "CapabilityStatement",
      ...
      "rest": [
        {
          "mode": "server",
        ...
            "resource": [
              ...
              {
                "type": "Patient",
                "profile": [
                  "http://hl7.org/fhir/us/core/StructureDefinition/au-core-patient"
                ],
                ...
              }
            ]
        }
      ] 
    }
    ```

Example: CapabilityStatement resource for a server supporting the AU Core Waist Circumference profile as a profile for supported use cases provided by the server:

    ```
    {
      "resourceType": "CapabilityStatement",
      ...
      "rest": [
        {
          "mode": "server",
        ...
            "resource": [
              ...
              {
                "type": "Observation",
                "supportedProfile": [
                  "http://hl7.org.au/fhir/core/StructureDefinition/au-core-waistcircum"
                ],
                ...
              }
            ]
        }
      ] 
    }
    ```


#### Profile Support + Interaction Support

Servers that implement Profile Support + Interaction Support declare conformance by hosting a [CapabilityStatement](http://hl7.org/fhir/capabilitystatement.html) at [server-base-url]/metadata, available to both authenticated and unauthenticated clients. The server's [CapabilityStatement instantiates](http://hl7.org/fhir/capabilitystatement-definitions.html#CapabilityStatement.instantiates) element references the [AU Core Responder Capability Statement](CapabilityStatement-au-core-responder.html#resourcesSummary1), as shown in the following fragment:

    ```
    {
      "resourceType": "CapabilityStatement",
      ...
      "instantiates": [
        "http://hl7.org.au/fhir/core/CapabilityStatement/au-core-responder"
      ],
      ...  
      "rest": [
        {
          "mode": "server",
        ...
        }
      ] 
    }
    ```