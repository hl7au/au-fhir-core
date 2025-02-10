### Security and Privacy

When implementing AU Core, implementers need to be aware of [FHIR security considerations](https://hl7.org/fhir/R4/security.html) and implement measures to protect information privacy and prevent exploitation by malicious actors.

Those implementing AU Core are also advised to review the [FHIR Implementer Safety Checklist](https://hl7.org/fhir/R4/safety.html) for important considerations in secure and safe system implementation.

Implementers of AU Core need to be aware of their obligations regarding security, privacy, and consent in Australia.

For AU Core, specific security requirements include:
- Systems **SHOULD** conform to [FHIR Communications Security](https://hl7.org/fhir/R4/security.html#http) requirements.
- Systems **SHOULD** support [SMART App Launch](https://hl7.org/fhir/smart-app-launch/) for client authentication and authorisation.
- Systems **SHALL** use TLS version 1.2 or higher for data exchange.
- Systems **SHOULD** use TLS version 1.3 for data exchange.
- Systems **SHOULD** use the Australian Cyber Security Centre (ACSC) [TLS configuration guidelines](https://www.cyber.gov.au/resources-business-and-government/maintaining-devices-and-systems/system-hardening-and-administration/web-hardening/implementing-certificates-tls-https-and-opportunistic-tls) that include recommendations for configuring protocol features and acceptable cipher suites when implementing TLS.