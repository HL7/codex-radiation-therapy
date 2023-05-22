```
Instance: Diagnosis-2-Prostate
InstanceOf: PrimaryCancerCondition
Title: "Example Diagnosis 2"
Description: "An example diagnosis for a prostate case."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://hl7.org/fhir/sid/icd-10-cm#C61 "Malignant neoplasm of prostate"
* subject = Reference(Patient-6)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner-1005)
```