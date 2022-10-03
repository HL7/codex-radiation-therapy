Instance: Diagnosis-1-Breast
InstanceOf: $mCODEPrimaryCancerCondition
Title: "Example Diagnosis 1"
Description: "An example diagnosis for a breast case."
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
InstanceOf: $mCODEPrimaryCancerCondition
Title: "Example Diagnosis 2"
Description: "An example diagnosis for a prostate case."
Usage: #example
* id = "Diagnosis-2-Prostate"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = ICD10#C61 "Malignant neoplasm of prostate"
* subject = Reference(Patient/Patient-6)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner-1005)
