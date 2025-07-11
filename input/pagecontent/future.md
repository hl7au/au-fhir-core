### AU Core Yearly Updates
AU Core will be published yearly. Yearly AU Core updates reflect changes to:
 - AUCDI
 - requests from the AU FHIR community. 
 
 The approach is outlined in the figure below:

 <div> 
    <img src="yearlyupdate.png" alt="Yearly update of AU Core" style="width:90%"/>
  </div>
*Figure 1: Yearly update of AU Core*
<br/>


### AU Core R1 Development process
The first release of AU Core is an 18 month process from HL7 AU proposal to publication of the first release, outlined in the figure below:


 <div> 
    <img src="R1Process.png" alt="AU Core R1 Development process" style="width:100%"/>
  </div>
*Figure 2: AU Core R1 Development process*
<br/>

#### Maturing the Baseline
The approach to develop and mature AU Core is outlined below making reference to the [Australian FHIR Maturity Level (AFMM) levels](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#maturity-levels) is shown in the figure below.

 <div> 
    <img src="maturing.png" alt="Maturing the AU Core baseline" style="width:80%"/>
  </div>
*Figure 3: Maturing the AU Core baseline*
<br/>

### Future Candidate Requirements Under Consideration
The following items are under consideration to add to AU Core.

* **Last Updated**: AUCDI element Last Updated is intended to reflect when a data group was last updated, capturing clinical relevance and currency. A known and implemented solution in other jurisdictions for similar requirements is the use of the Provenance resource. An alternative to the use of Provenance may be the definition of custom extensions or `meta.lastUpdated`. Future versions of AU Core will develop and test approaches to addressing Last Updated.
* **Dosage**: The Dosage data type is complex, and the requirements in AU Base Dosage are not sufficient to provide clarity on the minimum requirements for supporting dosage and timing in Australia. Future versions of AU Core may develop and test an AU Core Dosage profile to support common implementation of medicine information. 
* **Composition**: Future versions of AU Core will develop and test AU Core Composition profile to support approaches to sharing clinical documents across multiple use cases.
* **DocumentReference**: Future versions of AU Core will develop and test an AU Core DocumentReference profile to support sharing of clinical notes across multiple use cases to support common implementation.
* **Device**: Use of the Device resource for medical devices, and devices that perform, observe, or author clinical data, are required to support multiple downstream use cases including eRequesting and patient summary. Future versions of AU Core will develop and test profiles to support common implementation of Device information.
* **Coverage**: Use of the Coverage resource is required to support multiple downstream use cases including eRequesting. Future versions of AU Core will develop and test minimum requirements for coverage across multiple use cases to support common implementation.
* **ServiceRequest**: Use of the ServiceRequest resource is required to support multiple downstream use cases including eRequesting. Future versions of AU Core will develop and test minimum requirements for requests across multiple use cases to support common implementation.
* **Additional Diagnostic Results**: Additional AU Core profiles to support common implementation of additional aspects of diagnostic results including imaging, specimen, and reports are expected to be developed and tested in future versions of AU Core.
* **Additional Medicinal Information**: Additional AU Core profiles to support common implementation of additional aspects of medicinal information and workflow including administration and dispense are expected to be developed and tested in future versions of AU Core.
* **Pregnancy Information**: Additional AU Core profiles to support common implementation of widely shared pregnancy information used in multiple use cases including pregnancy assertion (sometimes referred to as pregnancy status), last menstrual period and estimated date of delivery, may be developed and tested in future versions of AU Core.
* **Key clinical elements and Missing Data requirements**: It is not clear at this point whether there is a case for prohibiting 'missing data' on resource.code e.g. AllergyInterolance.code, Condition.code, or Medication.code. At this time it is not clear how prohibition could be structured in AU Core noting there is no equivalent obligation code for 'don't allow missing data' and as the data type for these elements is CodeableConcept, preadoption of R5 mustHaveValue is not applicable (only for primitive types). 
* **Record or Update Data**: Systems may use operations that create and update resources for any of the profiles in this IG. However, more guidance and minimum requirements need to be developed and tested on writing and updating data in the context of AU Core implementations.
* **Profile Only implementation clarity**: Additional clarification on how to implement AU Core as Profile Only may be useful as a Profile Only Server CapabilityStatement.
* **Guidance on downstream implementation of AU Core**: Future versions of AU Core will provide further detail on how to address implementation of AU Core through adoption of AU Core in other FHIR Specifications.
* **Search Parameter Definitions**: AU Core SearchParameters currently defined in AU Core include search parameters with support for chained search. Future versions of AU Core will include the complete list of search parameters supported by AU Core and the rules for use as a set of FHIR SearchParameters as specified in AU Core CapabilityStatements.
