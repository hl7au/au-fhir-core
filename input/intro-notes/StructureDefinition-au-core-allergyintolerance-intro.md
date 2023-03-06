#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a patient's allergies/adverse reactions
- Record or update a patient's allergies/adverse reactions


#### Relationship with national and international specifications
- Conformant to [IPA-AllergyIntolerance](http://hl7.org/fhir/uv/ipa/StructureDefinition/ipa-allergyintolerance)
- Conformant to xxx
- Conformant to xxx


#### Profile specific implementation guidance
- `AllergyIntolerance.verificationStatus` is "unconfirmed" where a sending system does not clearly have this element or "confirmed" depending on the level of certainty
- To represent that a patient does not have an allergy or category of allergies, an appropriate negation code (e.g. 716186003 \|No known allergy\| or 716184000 \|No known latex allergy\|) is used in `AllergyIntolerance.code`
- Refutation is not expected to be handled except as above - an appropriate negation code in `AllergyIntolerance.code` and `AllergyIntolerance.clinicalStatus` of "confirmed" or "unconfirmed"
- Where only substance is known (e.g. 111088007 \|Latex\|) and not a statement of allergy or intolerance (e.g. 300916003 \|Allergy to latex\|), the substance will be sent in `AllergyIntolerance.code` and optionally in `AllergyIntolerance.reaction.substance`




