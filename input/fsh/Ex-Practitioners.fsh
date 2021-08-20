//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Instance:   Practitioner-1005
InstanceOf: Practitioner
Title: "Example Practitioner"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* id = "Practitioner-1005"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[0].use = #official
* identifier[0].system = "http://hl7.org.fhir/sid/us-npi"
* identifier[0].value = "19941339108"
* identifier[1].use = #usual
* identifier[1].system = "http://varian.com/fhir/identifier/practitionerUserName"
* identifier[1].value = "aria\\user"
* name[0].use = #usual
* name[0].family = "Spengler"
* name[0].given = "Egon"
* telecom.system = #phone
* telecom.value = "555-555-5555"
* telecom.use = #work
