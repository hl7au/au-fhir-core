#### Usage scenarios

The following are supported usage scenarios for this profile:

- Query for a generic media observation associated with a patient
- Record or update a generic media observation associated with a patient

#### Profile specific implementation guidance
- When generated during a diagnostic examination a Media resource may contain the same identifier in `Media.identifier` as in the order or report connecting the resources that are related to a single request fulfilment workflow
