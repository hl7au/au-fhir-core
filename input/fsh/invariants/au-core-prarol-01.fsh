Invariant: au-core-prarol-01
Description: "At least a reference, identifier or display shall be present"
Severity: #error
Expression: "reference.exists() or identifier.exists() or display.exists()"
XPath: "exists(f:reference) or exists(f:display) or exists(f:identifier)"