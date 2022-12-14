- `Observation.category` provides an efficient way of supporting system interactions, e.g. restricting searches. Implementers need to understand that data categorisation is somewhat subjective. The categorisation applied by the source may not align with a receiver’s expectations.
- The observations **MAY** have additional codes that translate or map to the Observation code or category codes. For example:
   -  providing a local code
   -  providing a more specific code
- The Observation resource can represent a result using one or both of a single value with `Observation.value`, or set of results using either `Observation.component.value` or `Observation.hasMember`.
  - Although all are marked as must support, sending systems are not required to support all choices, but they **SHALL** support *at least one* of these elements
  - A receiving or persisting system **SHALL** support both elements
- `Observation.identifier` may contain the same identifier as in the order or report connecting the resources that are related to a single request fulfilment workflow
