```
Instance: Patient-XRTS-02-22B
InstanceOf: Patient
Title: "Example XRTS Patient 2"
Description: "An example patient, test case XRTS-02."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
  * profile[+] = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
* extension
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
  * valueCode = #M
* identifier
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-02_22B"
* name
  * use = #usual
  * family = "Cousin-22B"
  * given = "James"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1960-02-02"
* address
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
```