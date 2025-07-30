<div class="note-to-balloters" markdown="1">
**Upcoming NCTS ValueSet Availability**

<code>Medication.ingredient.item[x]</code> inherits preferred binding <a href="http://terminology.hl7.org.au/ValueSet/amt-mp-codes">AMT Medicinal Product and Substances</a> from AU Base. A request has been submitted to NCTS to publish an equivalent value set, but it is not yet available at the time of publication.

In the interim, the AU Base value set remains in use and is expected to be deprecated upon release of the NCTS value set.

Related JIRA issue with details is: <a href="https://jira.hl7.org/browse/FHIR-47076">AU Base: FHIR-47076</a>.
</div>

See [Comparison with other national and international IGs](comparison.html) for a comparison between AU Core profiles and profiles in other implementation guides.

### Usage Scenarios

The following are supported usage scenarios for this profile:

- Query medications associated with a patient referenced by another resource
- Record or update a medication associated with a patient referenced by another resource
- Read medications associated with a patient referenced by another resource

### Profile Specific Implementation Guidance
- See the [Medicine Information](medicine-information.html) page for guidance on how medicinal product identification can be structured in FHIR conformant to AU Core.


