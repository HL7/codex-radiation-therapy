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
* identifier[+]
  * use = #official
  * system = "http://hl7.org.fhir/sid/us-npi"
  * value = "19941339108"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/practitionerUserName"
  * value = "aria\\user"
* name[+]
  * use = #usual
  * family = "Spengler"
  * given = "Egon"
* telecom[+]
  * system = #phone
  * value = "555-555-5555"
  * use = #work
