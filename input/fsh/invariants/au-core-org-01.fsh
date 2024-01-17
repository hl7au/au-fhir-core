Invariant: au-core-org-01
Description: "A National Organisation Identifier (type=NOI) shall be an HPI-O or PAI-O"
Severity: #error
Expression: "where(type.coding.code = 'NOI').exists() implies (system='http://ns.electronichealth.net.au/id/hi/hpio/1.0') or (system='http://ns.electronichealth.net.au/id/pcehr/paio/1.0')"