#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's allergies/adverse reactions
- Record or update a patient's allergies/adverse reactions


#### Relationship with national and international specifications

A resource conforming to this profile is conformant to:
- [IPA-AllergyIntolerance](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-allergyintolerance)
- [Allergy Intolerance (IPS)](http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips)
- [US Core AllergyIntolerance](http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance)

Conformance in reverse is not guaranteed, i.e. a resource conforming to (International Patient Access)[https://build.fhir.org/ig/HL7/fhir-ipa], (International Patient Summary)[http://build.fhir.org/ig/HL7/fhir-ips], or (US Core)[http://hl7.org/fhir/us/core] **MAY NOT** conform to AU Core.


#### Profile specific implementation guidance
- `AllergyIntolerance.verificationStatus` is "unconfirmed" where a sending system does not clearly have this element or "confirmed" depending on the level of certainty
- To represent that a patient does not have an allergy or category of allergies, an appropriate negation code (e.g. 716186003 \|No known allergy\| or 716184000 \|No known latex allergy\|) is used in `AllergyIntolerance.code`
- Refutation is not expected to be handled except as above - an appropriate negation code in `AllergyIntolerance.code` and `AllergyIntolerance.clinicalStatus` of "confirmed" or "unconfirmed"
- Where only substance is known (e.g. 111088007 \|Latex\|) and not a statement of allergy or intolerance (e.g. 300916003 \|Allergy to latex\|), the substance will be sent in `AllergyIntolerance.code` and optionally in `AllergyIntolerance.reaction.substance`




