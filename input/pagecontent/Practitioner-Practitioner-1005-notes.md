```
Instance: Practitioner-1005
InstanceOf: Practitioner
Title: "Example Practitioner"
Description: "An example practitioner to relate radiotherapy resources to."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[0]
  * use = #official
  * system = "http://hl7.org.fhir/sid/us-npi"
  * value = "19941339108"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/practitionerUserName"
  * value = "aria\\user"
* name
  * use = #usual
  * family = "Spengler"
  * given = "Egon"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #work
```