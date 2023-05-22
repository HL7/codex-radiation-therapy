```
Instance: Patient-XRTS-04-22B
InstanceOf: Patient
Title: "Example XRTS Patient 4"
Description: "An example patient, test case XRTS-04."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
  * profile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* extension
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
  * valueCode = #F
* identifier
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-04_22B"
* name
  * use = #usual
  * family = "Sister-22B"
  * given = "Jane"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #female
* birthDate = "1980-03-04"
* address
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
```