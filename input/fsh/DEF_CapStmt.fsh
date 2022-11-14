//    1) SHALL support for all 9 profiles?
//    2) query support for what is needed by the IHRO XRTS use cases -- query by id for all profiles?   Actually, the query requirements are by Resource (e.g., Procedure, ServiceRequest, Device, etc).
//    3) write support for anything?
//    4) ANything else?

// I wouldn’t require that. Definitely for prescription only some levels of prescription, e.g. only Phase in the Varian case or only single plan prescription in Chuck’s case. Can we refer to the XRTS in this case? Maybe declare the most important ones for XRTS end of treatment and treatment progress as SHALL? Planned Phase, Treated Phase, Planned Course, Course Summary, Volume?
// We just reviewed on Wednesday in the XRTS calls my list of query parameters by resource that need to be supported. Current list below. Generally we said you should at least query with a patient or an identifier and servers don’t need to support general requests like give me all patients, or all patients with a certain family name. A server may support such broad queries, but not needed for the XRTS use cases. Tucker from Epic felt that even: find all Procedures for a patient (without category or code) would be to broad for performance reasons.
// That depends on the role. I know there are concepts under discussion that once could give requirements also in FHIR IG per role. But if possible we could just refer to XRTS.
// Don’t know yet. I would start small.

// Required search parameters for XRTS use cases:

// Patient
// Identifier OR
// (
// family:exact AND
// given:exact AND
// birthdate AND
// gender AND
// )
// BodyStructure
// Identifier (Value & System) OR
// patient
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
// optionally: intent (not used in XRTS yet, but will be needed to query only prescriptions (‘original-order’) or only plans (‘filler-order’)
// Procedure
// (
// Identifier (Value & System) OR
// subject:Patient (there is the equivalent parameter ‘patient’ but XRTS examples use subject:Patient)
// )
// AND
// (
// category OR
// code
// )
// Defines common operations for the server role


Alias: $exp = http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation

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


Instance: CodexRTServerCapabilityStatement
InstanceOf: CapabilityStatement
Title: "CodeX RT Server CapabilityStatement"
Usage: #definition
* name = "Example Capability Statement"
* rest.mode = #server
* status = #draft
* date = "2020-05-07"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json

// Procedure requirements
* insert SupportResource(Procedure, #SHALL)
* insert SupportProfile(RadiotherapyCourseSummary, #SHOULD)
* insert SupportProfile(RadiotherapyTreatedPhase, #SHOULD)
* insert SupportProfile(RadiotherapyTreatedPlan, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(name, http://hl7.org/fhir/SearchParameter/Location-name, #string, #SHALL)


 // ServiceRequest requirements
* insert SupportResource(ServiceRequest, #SHALL)
* insert SupportProfile(RadiotherapyCoursePrescription, #SHOULD)
* insert SupportProfile(RadiotherapyPhasePrescription, #SHOULD)
* insert SupportProfile(RadiotherapyPlanPrescription, #SHOULD)
* insert SupportProfile(RadiotherapyPlannedCourse, #SHOULD)
* insert SupportProfile(RadiotherapyPlannedPhase, #SHOULD)
* insert SupportProfile(RadiotherapyTreatmentPlan, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
// * insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
// * insert SupportSearchParam(date, http://hl7.org/fhir/SearchParameter/MeasureReport-date, #date, #SHALL)
// * insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/MeasureReport-subject, #reference, #SHALL)
// * insert SupportSearchParam(code, http://hl7.org/fhir/us/saner/SearchParameter/SearchParameter-code, #token, #SHOULD)

 // Device requirements
* insert SupportResource(Device, #SHALL)
* insert SupportProfile(RadiotherapySeedDevice, #SHOULD)
* insert SupportProfile(RadiotherapyTreatmentDevice, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// BodyStructure
* insert SupportResource(BodyStructure, #SHALL)
* insert SupportProfile(RadiotherapyVolume, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// Location
* insert SupportResource(Location, #SHALL)
* insert SupportProfile(TreatmentLocation, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// Observation
* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(RadiotherapyDiseaseStatus, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
