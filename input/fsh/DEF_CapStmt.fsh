//    1) SHALL support for all 9 profiles?
//    2) query support for what is needed by the IHRO XRTS use cases -- query by id for all profiles?   Actually, the query requirements are by Resource (e.g., Procedure, ServiceRequest, Device, etc).
//    3) write support for anything?
//    4) ANything else?

// I wouldn’t require that. Definitely for prescription only some levels of prescription, e.g. only Phase in the Varian case or only single plan prescription in Chuck’s case. Can we refer to the XRTS in this case? Maybe declare the most important ones for XRTS end of treatment and treatment progress as SHALL? Planned Phase, Treated Phase, Planned Course, Course Summary, Volume?
// We just reviewed on Wednesday in the XRTS calls my list of query parameters by resource that need to be supported. Current list below. Generally we said you should at least query with a patient or an identifier and servers don’t need to support general requests like give me all patients, or all patients with a certain family name. A server may support such broad queries, but not needed for the XRTS use cases. Tucker from Epic felt that even: find all Procedures for a patient (without category or code) would be to broad for performance reasons.
// That depends on the role. I know there are concepts under discussion that once could give requirements also in FHIR IG per role. But if possible we could just refer to XRTS.
// Don’t know yet. I would start small.

// Required search parameters for XRTS use cases:


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

RuleSet: SearchParameterCombinations
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Procedure-subject, #reference, #SHOULD)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHOULD)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHOULD)
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "subject"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "subject"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "code"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "subject"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"


Instance: CodexRTServerCapabilityStatement
InstanceOf: CapabilityStatement
Title: "CodeX RT Server CapabilityStatement"
Usage: #definition
* rest.documentation =  "A CodeXRT Server **SHALL**:\n\n1.  Implement the RESTful behavior according to the FHIR specification.\n1. Return the following response classes:\n   - (Status 400): invalid parameter\n   - (Status 401/4xx): unauthorized request\n   - (Status 403): insufficient scope\n   - (Status 404): unknown resource\n   - (Status 410): deleted resource.\n1. Support json and xml source formats for all CodexRT interactions.\n1. Identify the CodexRT  profiles supported as part of the FHIR `meta.profile` attribute for each instance.\n1. Support the searchParameters on each profile individually and in combination.\n"
* rest.security.description = "1. See the [General Security Considerations](https://www.hl7.org/fhir/security.html#general) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` unauthorized response code."
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">None</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/codex-radiation-therapy/CapabilityStatement/CodexRTServerCapabilityStatement</code></li><li><b>Implementation Guide Version:</b> 1.0.0-ballot</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    XML, JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2020-11-23</li><li><b>Published by:</b> HL7 Cross Group Projects Work Group</li><li><b>Status:</b> Draft</li></ul><p>CodeXRT Server CapabilityStatement</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><p>A CodeXRT Server <strong>SHALL</strong>:</p><ol><li>Implement the RESTful behavior according to the FHIR specification.</li><li>Return the following response classes:\n<ul><li>(Status 400): invalid parameter</li><li>(Status 401/4xx): unauthorized request</li><li>(Status 403): insufficient scope</li><li>(Status 404): unknown resource</li><li>(Status 410): deleted resource.</li></ul>\n</li><li>Support json and xml source formats for all CodexRT interactions.</li><li>Identify the CodexRT  profiles supported as part of the FHIR <code>meta.profile</code> attribute for each instance.</li><li>Support the searchParameters on each profile individually and in combination.</li></ol><p id=\"security\"><strong>Security:</strong></p><ol><li>See the <a href=\"https://www.hl7.org/fhir/security.html#general\">General Security Considerations</a> section for requirements and recommendations.</li><li>A server <strong>SHALL</strong> reject any unauthorized requests by returning an <code>HTTP 401</code> unauthorized response code.</li></ol><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#patient\">Patient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\tidentifier, family, given, birthdate, gender, family+given+birthdate+gender\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#procedure\">Procedure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary\">Radiotherapy Course Summary</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-phase\">Radiotherapy Treated Phase</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-plan\">Radiotherapy Treated Plan</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\tidentifier, subject, category, code, identifier+code, subject+code, identifier+category, identifier+category+code, subject+category+code, subject+category\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#servicerequest\">ServiceRequest</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-prescription\">Radiotherapy Course Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-phase-prescription\">Radiotherapy Phase Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription\">Radiotherapy Plan Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-course\">Radiotherapy Planned Course</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-phase\">Radiotherapy Planned Phase</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan\">Radiotherapy Treatment Plan</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\tidentifier, subject, category, code, identifier+code, subject+code, identifier+category, identifier+category+code, subject+category+code, subject+category\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#device\">Device</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device\">Radiotherapy Seed Device</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device\">Radiotherapy Treatment Device</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#bodystructure\">BodyStructure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume\">Radiotherapy Volume</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\tidentifier, patient\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#location\">Location</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-location\">Treatment Location</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#observation\">Observation</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-status\">Radiotherapy Disease Status</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"patient\">Patient</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Patient resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfamily</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?family=[family]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tgiven</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?given=[given]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tbirthdate</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?birthdate=[birthdate]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tgender</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?gender=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family\">family</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given\">given</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate\">birthdate</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender\">gender</a></td><td>string+string+date+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?family=[family]&amp;given=[given]&amp;birthdate=[birthdate]&amp;gender=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"procedure\">Procedure</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary\">Radiotherapy Course Summary</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-phase\">Radiotherapy Treated Phase</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-plan\">Radiotherapy Treated Plan</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Procedure resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Procedure/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Procedure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsubject</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?subject=[type]/[id]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcategory</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?category=[system]|[code]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/clinical-identifier\">identifier</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?identifier=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/Procedure-subject\">subject</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?subject=[type]/[id]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/clinical-identifier\">identifier</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a></td><td>token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?identifier=[system]|[code]&amp;category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/clinical-identifier\">identifier</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>token+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?identifier=[system]|[code]&amp;category=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/Procedure-subject\">subject</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>reference+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?subject=[type]/[id]&amp;category=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/Procedure-subject\">subject</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a></td><td>reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?subject=[type]/[id]&amp;category=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"servicerequest\">ServiceRequest</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-prescription\">Radiotherapy Course Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-phase-prescription\">Radiotherapy Phase Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription\">Radiotherapy Plan Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-course\">Radiotherapy Planned Course</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-phase\">Radiotherapy Planned Phase</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan\">Radiotherapy Treatment Plan</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a ServiceRequest resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ServiceRequest/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ServiceRequest/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsubject</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?subject=[type]/[id]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcategory</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?category=[system]|[code]</code></td></tr><tr><td><strong>SHOULD</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/clinical-identifier\">identifier</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?identifier=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/Procedure-subject\">subject</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?subject=[type]/[id]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/clinical-identifier\">identifier</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a></td><td>token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?identifier=[system]|[code]&amp;category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/clinical-identifier\">identifier</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>token+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?identifier=[system]|[code]&amp;category=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/Procedure-subject\">subject</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>reference+token+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?subject=[type]/[id]&amp;category=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/SearchParameter/Procedure-subject\">subject</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a></td><td>reference+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?subject=[type]/[id]&amp;category=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"device\">Device</h4><p>Conformance Expectation:\t<strong>SHOULD</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device\">Radiotherapy Seed Device</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device\">Radiotherapy Treatment Device</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Device resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Device/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><h4 class=\"no_toc\" id=\"bodystructure\">BodyStructure</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume\">Radiotherapy Volume</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a BodyStructure resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/BodyStructure/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/BodyStructure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/bodystructure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/BodyStructure?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/bodystructure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/BodyStructure?patient=[type]/[id]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"location\">Location</h4><p>Conformance Expectation:\t<strong>SHOULD</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-location\">Treatment Location</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Location resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Location/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><h4 class=\"no_toc\" id=\"observation\">Observation</h4><p>Conformance Expectation:\t<strong>SHOULD</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-status\">Radiotherapy Disease Status</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning an Observation resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Observation/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li></ul></div>"
* text.status = #generated
* name = "CodeXRTServerCapabilityStatement"
* description = "CodeXRT Server CapabilityStatement"
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
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "family"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "given"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "birthdate"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "gender"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"

// Procedure requirements
* insert SupportResource(Procedure, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-phase, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-plan, #SHOULD)
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
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-location, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
//* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// Observation
* insert SupportResource(Observation, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-status, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
//* insert SupportInteraction(#search-type, #SHALL)
//* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
