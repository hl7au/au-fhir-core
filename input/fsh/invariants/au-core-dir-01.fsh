Invariant: au-core-dir-01
Description: "The report shall at least have a result or a presentedForm"
Severity: #error
Expression: "result.exists() or presentedForm.exists()"
XPath: "exists(f:result) or exists(f:presentedForm)"