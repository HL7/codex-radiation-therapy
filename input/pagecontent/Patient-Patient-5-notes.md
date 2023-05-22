```
Instance: Patient-5
InstanceOf: Patient
Title: "Example Female Patient 5"
Description: "An example female  patient to relate radiotherapy resources to."
Usage: #example
* meta
  * profile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
  * profile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
  * security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "1032705"
* name
  * use = #usual
  * family = "Andersson"
  * given = "Alice"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #female
* birthDate = "1973-07-25"
* address
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
```