```
Instance: Diagnosis-101-Breast
InstanceOf: Condition
Title: "Example Diagnosis 101 Breast"
Description: "An example diagnosis for a breast case for Patient-101."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active "Active"
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "Confirmed"
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(Patient-101)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner-1005)
```