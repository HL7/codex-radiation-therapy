```
Instance: Patient-id
InstanceOf: SearchParameter
Title: "Search by _id in Patients with multipleOr"
Description: "This SearchParameter enables query of patients by `_id` with `mutlipleOr` enabled."
Usage: #example
* url = "http://hl7.org/fhir/us/codex-radiation-therapy/SearchParameter/Patient-id"
* version = "1.0.0"
* name = "PatientIdSearchParameter"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Resource-id"
* status = #draft
* experimental = false
* date = "2023-05-21T21:05:25-04:00"
* publisher = "HL7 Cross Group Projects Work Group"
* contact
  * name = "HL7 Cross Group Projects Work Group"
  * telecom[0]
    * system = #url
    * value = "https://www.hl7.org/Special/committees/cgp"
  * telecom[+]
    * system = #email
    * value = "cgplist@lists.HL7.org"
* description = "This SearchParameter enables query of patients by `_id` with `mutlipleOr` enabled."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = #_id
* base = #Patient
* type = #token
* expression = "Resource.id"
* xpathUsage = #normal
* multipleOr = true
```