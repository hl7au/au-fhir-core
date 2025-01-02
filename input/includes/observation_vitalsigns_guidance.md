- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- Observations **MAY** have additional codes that translate or map to the Observation code or category codes. For example:
   -  providing a local code
   -  providing a more specific codes such as 8306-3 - *Body height - lying* in addition to 8302-2 - *Body height*.  Several additional observation codes are provided in the FHIR core specification [vital signs table](http://hl7.org/fhir/R4/observation-vitalsigns.html#vitals-table).
- Observations **MAY** have [component] observations to qualify the vital sign observation. For example, 8478-0 - *Mean blood pressure*, 8887-2 - *Heart rate device type*, 8326-1 - *Type of body temperature device*. Several of these are provided in the FHIR core specification [vital signs table](http://hl7.org/fhir/R4/observation-vitalsigns.html#vitals-table).

