

Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation
Alias: $spexp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination

RuleSet: SupportResource (resource, expectation)
* rest.resource[+].type = #{resource}
* rest.resource[=].extension[0].url = $exp
* rest.resource[=].extension[0].valueCode = {expectation}

RuleSet: SupportProfile (profile, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].supportedProfile[+] = "{profile}"
* rest.resource[=].supportedProfile[=].extension[0].url = $exp
* rest.resource[=].supportedProfile[=].extension[0].valueCode = {expectation}

RuleSet: SupportInteraction (interaction, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].interaction[+].code = {interaction}
* rest.resource[=].interaction[=].extension[0].url = $exp
* rest.resource[=].interaction[=].extension[0].valueCode = {expectation}

RuleSet: SupportSearchParam (name, canonical, type, expectation)
// This rule set must follow a SupportResource rule set, and applies to that resource.
* rest.resource[=].searchParam[+].name = "{name}"
* rest.resource[=].searchParam[=].definition = "{canonical}"
* rest.resource[=].searchParam[=].type = {type}
* rest.resource[=].searchParam[=].extension[0].url = $exp
* rest.resource[=].searchParam[=].extension[0].valueCode = {expectation}

RuleSet: SearchParameterCombinations
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Procedure-subject, #reference, #SHOULD)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHOULD)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHOULD)
// * rest.resource[=].extension[+].extension[0].url = "$exp"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "identifier"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "code"
// * rest.resource[=].extension[=].url = "$spexp"
// * rest.resource[=].extension[+].extension[0].url = "$exp"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "subject"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "code"
// * rest.resource[=].extension[=].url = "$spexp"
// * rest.resource[=].extension[+].url = "$exp"
// * rest.resource[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[+].extension[0].url = "$exp"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "identifier"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "category"
// * rest.resource[=].extension[=].url = "$spexp"
// * rest.resource[=].extension[+].url = "$exp"
// * rest.resource[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[+].extension[0].url = "$exp"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "identifier"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "category"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "code"
// * rest.resource[=].extension[=].url = "$spexp"
// * rest.resource[=].extension[+].url = "$exp"
// * rest.resource[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[+].extension[0].url = "$exp"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "subject"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "category"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "code"
// * rest.resource[=].extension[=].url = "$spexp"
// * rest.resource[=].extension[+].extension[0].url = "$exp"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "subject"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "category"
// * rest.resource[=].extension[=].url = "$spexp"


Instance: CodexRTServerCapabilityStatement
InstanceOf: CapabilityStatement
Title: "CodeX RT Server CapabilityStatement"
Usage: #definition
* rest.documentation =  "A CodeX RT Server **SHALL**:\n\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json and xml source formats for all CodeX RT interactions.\n1. Identify the CodeX RT  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile individually and in combination.\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* name = "CodeXRTServerCapabilityStatement"
* description = "CodeX RT Server CapabilityStatement"
* rest.mode = #server
* status = #draft
* date = "2020-11-23"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json

// Patient requirements
// Search Parameters
// Identifier OR
// (
// family:exact AND
// given:exact AND
// birthdate AND
// gender AND
// )
* insert SupportResource(Patient, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-identifier, #token, #SHALL)
* insert SupportSearchParam(family, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family, #string, #SHOULD)
* insert SupportSearchParam(given, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given, #string, #SHOULD)
* insert SupportSearchParam(birthdate, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate, #date, #SHOULD)
* insert SupportSearchParam(gender, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender, #token, #SHOULD)
// * rest.resource[=].extension[+].url = "$exp"
// * rest.resource[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[+].extension[0].url = "$exp"
// * rest.resource[=].extension[=].extension[=].valueCode = #SHALL
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "family"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "given"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "birthdate"
// * rest.resource[=].extension[=].extension[+].url = "required"
// * rest.resource[=].extension[=].extension[=].valueString = "gender"
// * rest.resource[=].extension[=].url = "$spexp"

// Procedure requirements
* insert SupportResource(Procedure, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-phase, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-plan, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-fraction, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SearchParameterCombinations


// ServiceRequest (while the actual XRTS transactions get ServiceRequests from the references in Procedures, i.e. by id, it shall also be possible to find ServiceRequests separately).
// (
// Identifier (Value & System) OR
// subject:Patient (there is the equivalent parameter ‘patient’ but XRTS examples currenctly use subject:Patient)
// )
// AND
// (
// category OR
// code
// )

 // ServiceRequest requirements
* insert SupportResource(ServiceRequest, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-prescription, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-phase-prescription, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-course, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-phase, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
// * insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SearchParameterCombinations

// Encounter requirements
* insert SupportResource(Encounter,#SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-session, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/Encounter-patient, #reference, #SHALL)
* insert SupportSearchParam(based-on, http://hl7.org/fhir/SearchParameter/Encounter-based-on, #reference, #SHOULD)

 // Device requirements
* insert SupportResource(Device, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
//* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// BodyStructure
// Search Parameters
// Identifier (Value & System) OR
// patient
* insert SupportResource(BodyStructure, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/BodyStructure-identifier, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/BodyStructure-patient, #reference, #SHALL)

// Location
* insert SupportResource(Location, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/core/StructureDefinition/us-core-location, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
//* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// Observation
* insert SupportResource(Observation, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-status, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
//* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
