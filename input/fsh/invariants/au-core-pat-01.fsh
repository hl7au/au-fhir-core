Invariant: au-core-pat-01
Description: "At least one patient identifier shall be valid"
Severity: #error
Expression: "identifier.where(system.count() + value.count() >1).exists()"
XPath: "exists(f:identifier/f:system)"