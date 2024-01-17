Invariant: au-core-pat-04
Description: "At least text, family name, or given name shall be present"
Severity: #error
Expression: "text.exists() or family.exists() or given.exists()"
XPath: "exists(f:text) or exists(f:family) or exists(f:given)"