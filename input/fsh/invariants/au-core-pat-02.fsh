Invariant: au-core-pat-02
Description: "At least one patient name shall have a family name"
Severity: #error
Expression: "name.family.exists()"
XPath: "exists(f:name/f:family)"