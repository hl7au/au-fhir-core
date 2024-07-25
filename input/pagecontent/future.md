### AU Core Yearly Updates
AU Core will be published yearly. Yearly AU Core updates reflect changes to:
 - Australian Core Data for Interoperability (AUCDI)
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
The approach to develop and mature AU Core is outlined below making reference to the [FHIR Maturity Level (FMM) levels](https://build.fhir.org/ig/hl7au/au-fhir-base/guidance.html#maturity-levels) is shown in the figure below.

 <div> 
    <img src="maturing.png" alt="Maturing the AU Core baseline" style="width:80%"/>
  </div>
*Figure 3: Maturing the AU Core baseline*
<br/>

### Future Candidate Requirements Under Consideration
The following items are under consideration to add to AU Core.

#### AU Core MedicationStatement 
Development and testing of AU Core MedicationStatement profile to support AUCDI Medication Use Statement is planned for the AU Core R2 scope.

#### Last Updated 
AUCDI element Last Updated is intended to to reflect when a data group was last updated, capturing clinical relevance and currency. A known and implemented solution in other jurisdictions for similar requirements is the use of the Provenance resource. An alternative to the use of Provenance may be the definition of custom extensions. Future versions of AU Core will develop and test approaches to addressing Last Updated.