Invariant: au-core-cond-02
Description: "If a coded body site is provided, at least one code shall be from SNOMED CT"
Severity: #error
Expression: "coding.exists() implies coding.where(system='http://snomed.info/sct').exists()"
XPath: "not(exists(f:coding/f:system)) or exists(f:coding/f:system[@value='http://snomed.info/sct'])"