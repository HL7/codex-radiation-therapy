```
Instance: Diagnosis-1-Breast
InstanceOf: PrimaryCancerCondition
Title: "Example Diagnosis 1"
Description: "An example diagnosis for a breast case."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(Patient-5)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner-1005)
```