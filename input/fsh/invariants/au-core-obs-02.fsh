Invariant: au-core-obs-02
Description: "At least value or data absent reason shall be present"
Severity: #error
Expression: "dataAbsentReason.exists() or value.exists()"
XPath: "exists(f:*[starts-with(local-name(.), 'value')]) or exists(f:dataAbsentReason)"