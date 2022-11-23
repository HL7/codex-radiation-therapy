// Patient
// Identifier OR
// (
// family:exact AND
// given:exact AND
// birthdate AND
// gender AND
// )
Instance: Patient-id
InstanceOf: SearchParameter
Title: "Search by _id in Patients with multipleOr"
* url = "http://hl7.org/fhir/us/codex-radiation-therapy/SearchParameter/Patient-id"
* derivedFrom = "http://hl7.org/fhir/SearchParameter/Resource-id"
* name = "PatientIdSearchParameter"
* status = #draft
* experimental = false
* description = "This SearchParameter enables query of patients by `_id` with `mutlipleOr` enabled."
* code = #_id
* base[0] = #Patient
* type = #token
* multipleOr = true
* expression = "Resource.id"
* xpath = "f:Resource/f:id"
* xpathUsage = #normal

Instance: Condition-code
InstanceOf: SearchParameter
Title: "Search by code:in in Conditions"
* url = "http://hl7.org/fhir/us/codex-radiation-therapy/SearchParameter/Condition-code"
* name = "ConditionCodeSearchParameter"
* status = #draft
* experimental = false
* description = "This SearchParameter enables query of conditions by code with the `in` modifier."
* code = #code
* base[0] = #Condition
* type = #uri
* expression = "Condition.code"
* xpath = "f:Condition/f:code"
* xpathUsage = #normal
* modifier = #in