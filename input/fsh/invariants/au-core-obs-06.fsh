Invariant: au-core-obs-06
Description: "The component shall at least have a value or a data absent reason"
Severity: #error
Expression: "value.exists() or dataAbsentReason.exists()"