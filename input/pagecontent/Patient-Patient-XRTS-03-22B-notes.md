```
Instance: Patient-XRTS-03-22B
InstanceOf: Patient
Title: "Example XRTS Patient 3"
Description: "An example patient, test case XRTS-03."
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
  * value = "XRTS-03_22B"
* name
  * use = #usual
  * family = "Brother-22B"
  * given = "Jonathan"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1960-02-03"
* deceasedBoolean = true
* address
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
```