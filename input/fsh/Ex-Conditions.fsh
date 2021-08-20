//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Instance: Diagnosis-1-Breast
InstanceOf: Condition
Title: "Example Diagnosis"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* id = "Diagnosis-1-Breast"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(Patient/Patient-5)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner/Practitioner-1005)

Instance: Diagnosis-2-Prostate
InstanceOf: Condition
Title: "Example Diagnosis"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* id = "Diagnosis-2-Prostate"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = ICD10#C61.0 "Malignant neoplasm of prostate"
* subject = Reference(Patient/Patient-6)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner/Practitioner-1005)
