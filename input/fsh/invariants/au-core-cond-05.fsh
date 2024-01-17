Invariant: au-core-cond-05
Description: "Clinical status shall be present if verification status is not entered-in-error"
Severity: #error
Expression: "clinicalStatus.exists() or verificationStatus.coding.where(system='http://terminology.hl7.org/CodeSystem/condition-ver-status' and code = 'entered-in-error').exists()"