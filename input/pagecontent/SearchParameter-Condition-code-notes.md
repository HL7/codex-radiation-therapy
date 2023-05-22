```
Instance: Condition-code
InstanceOf: SearchParameter
Title: "Search by code:in in Conditions"
Description: "This SearchParameter enables query of conditions by code with the `in` modifier."
Usage: #example
* url = "http://hl7.org/fhir/us/codex-radiation-therapy/SearchParameter/Condition-code"
* version = "1.0.0"
* name = "ConditionCodeSearchParameter"
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
* description = "This SearchParameter enables query of conditions by code with the `in` modifier."
* jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* code = #code
* base = #Condition
* type = #uri
* expression = "Condition.code"
* xpathUsage = #normal
* modifier = #in
```