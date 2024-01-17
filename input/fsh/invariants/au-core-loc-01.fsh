Invariant: au-core-loc-01
Description: "The location shall at least have a valid identifier or address or type"
Severity: #error
Expression: "address.exists() or type.exists() or identifier.where(system.count() + value.count() >1).exists()"
XPath: "exists(f:address) or exists(f:type) or exists(f:identifier)"