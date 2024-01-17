Invariant: au-core-medreq-03
Description: "Date shall be at least to day"
Severity: #error
Expression: "toString().length() >= 10"
XPath: "f:matches(effectiveDateTime,/\\d{4}-[01]\\d-[0-3]\\dT[0-2]\\d:[0-5]\\d([+-][0-2]\\d:[0-5]\\d|Z)/)"