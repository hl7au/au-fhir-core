Invariant: au-core-mst-03
Description: "If present, the dosage shall at least have text or patient instructions"
Severity: #error
Expression: "text.exists() or patientInstruction.exists()"
XPath: "exists(f:text) or exists(f:patientInstruction)"