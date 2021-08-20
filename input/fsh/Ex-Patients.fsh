//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Instance:   Patient-5
InstanceOf: Patient
Title: "Example Female Patient"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[0].use = #usual
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].system = "http://hospital.smarthealthit.org"
* identifier[0].value = "1032705"
* name[0].use = #usual
* name[0].family = "Andersson"
* name[0].given = "Alice"
* telecom.system = #phone
* telecom.value = "555-555-5555"
* telecom.use = #home
* gender = #female
* birthDate = "1973-07-25"
* address.state = "WI"
* address.country = "USA"
* address.line = "49 Meadow St"
* address.city = "Mounds"
* address.state = "OK"
* address.postalCode = "74047"
* address.country = "US"

Instance:   Patient-6
InstanceOf: Patient
Title: "Example Male Patient"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[0].use = #usual
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].system = "http://hospital.smarthealthit.org"
* identifier[0].value = "1032706"
* name[0].use = #usual
* name[0].family = "Venkman"
* name[0].given = "Peter"
* telecom.system = #phone
* telecom.value = "555-555-5555"
* telecom.use = #home
* gender = #male
* birthDate = "1973-07-25"
* address.state = "WI"
* address.country = "USA"
* address.line = "49 Meadow St"
* address.city = "Mounds"
* address.state = "OK"
* address.postalCode = "74047"
* address.country = "US"
