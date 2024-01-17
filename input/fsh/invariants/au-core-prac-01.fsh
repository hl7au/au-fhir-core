Invariant: au-core-prac-01
Description: "At least text or family name shall be present"
Severity: #error
Expression: "text.exists() or family.exists()"
XPath: "exists(f:text) or exists(f:family)"