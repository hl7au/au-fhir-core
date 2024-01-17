Invariant: au-core-lipid-01
Description: "A lipid result value shall have unit, system and code if the test is not Cholesterol/HDL Cholesterol ratio"
Severity: #error
Expression: "(code.coding.code!='32309-7' and value.value.exists()) implies (value.unit.exists() and value.code.exists())"