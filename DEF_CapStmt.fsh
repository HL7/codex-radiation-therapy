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


Instance: CodexRTServerCapabilityStatement
InstanceOf: CapabilityStatement
Title: "CodeX RT Server CapabilityStatement"
Usage: #definition
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><h2 id=\"title\">None</h2><ul><li><b>Official URL:</b><code>http://hl7.org/fhir/us/codex-radiation-therapy/CapabilityStatement/CodexRTServerCapabilityStatement</code></li><li><b>Implementation Guide Version:</b> 1.0.0-ballot</li><li><b>FHIR Version:</b> 4.0.1</li><li><b>Intended Use:</b> Requirements</li><li><b>Supported Formats:</b>\n\t\t\t\t\n                    JSON\n\t\t\t\t\n\t\t\t\t</li><li><b>Published:</b> 2020-05-07</li><li><b>Published by:</b> HL7 Cross Group Projects Work Group</li><li><b>Status:</b> Draft</li></ul><p>CodeXRT Server CapabilityStatement</p><!-- REST Behavior --><h3 id=\"behavior\">FHIR Server RESTful Capabilities</h3><h3 class=\"no_toc\" id=\"resource--details\">RESTful Capabilities by Resource/Profile:</h3><p><strong>Summary</strong></p><table class=\"grid\"><thead><tr><th>Resource Type</th><th>Supported Interactions</th><th>Supported Profiles</th><th>Supported Searches</th><th>Supported <code>_includes</code></th><th>Supported <code>_revincludes</code></th><th>Supported Operations</th></tr></thead><tbody><tr><td><a href=\"#patient\">Patient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, _lastUpdated, identifier, family, given, birthdate, gender, family+given+birthdate+gender\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#procedure\">Procedure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary\">Radiotherapy Course Summary</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-phase\">Radiotherapy Treated Phase</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-plan\">Radiotherapy Treated Plan</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, _lastUpdated, identifier, subject, category, code, identifer+category, patient+category, identifer+code, patient+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#servicerequest\">ServiceRequest</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-prescription\">Radiotherapy Course Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-phase-prescription\">Radiotherapy Phase Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription\">Radiotherapy Plan Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-course\">Radiotherapy Planned Course</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-phase\">Radiotherapy Planned Phase</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan\">Radiotherapy Treatment Plan</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, identifier, subject, category, code, identifer+category, patient+category, identifer+code, patient+code\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#device\">Device</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device\">Radiotherapy Seed Device</a>, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device\">Radiotherapy Treatment Device</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#bodystructure\">BodyStructure</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume\">Radiotherapy Volume</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id, identifier, patient\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#location\">Location</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-location\">Treatment Location</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr><tr><td><a href=\"#observation\">Observation</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tread, \n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\tsearch-type\n\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Profiles --><td><a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-status\">Radiotherapy Disease Status</a></td><!-- Supported Searches --><td>\n\t\t\t\t\t\t\t\t\t\t_id\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _includes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported _revincludes --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td><!-- Supported Operations --><td>\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t</td></tr></tbody></table><!-- Resource Details --><h4 class=\"no_toc\" id=\"patient\">Patient</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient\">Cancer Patient Profile</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Patient resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Patient/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#lastUpdated\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_lastUpdated</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?_lastUpdated=[dateTime]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tfamily</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?family=[family]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tgiven</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tstring\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?given=[given]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tbirthdate</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?birthdate=[birthdate]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/patient.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tgender</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?gender=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family\">family</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given\">given</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate\">birthdate</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender\">gender</a></td><td>string+string+date+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Patient?family=[family]&amp;given=[given]&amp;birthdate=[birthdate]&amp;gender=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"procedure\">Procedure</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary\">Radiotherapy Course Summary</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-phase\">Radiotherapy Treated Phase</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treated-plan\">Radiotherapy Treated Plan</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Procedure resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Procedure/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Procedure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#lastUpdated\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_lastUpdated</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tdate\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?_lastUpdated=[dateTime]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsubject</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?subject=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcategory</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/procedure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/identifer.html#search\">identifer</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a></td><td>http://hl7.org/fhir/SearchParameter/Procedure-category+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?identifer=[identifer]&amp;category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"token\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/Procedure-category\">category</a></td><td>http://hl7.org/fhir/SearchParameter/Procedure-category+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?patient=[system]|[code]&amp;category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"token\">identifer</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>http://hl7.org/fhir/SearchParameter/clinical-code+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?identifer=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"token\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>http://hl7.org/fhir/SearchParameter/clinical-code+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Procedure?patient=[system]|[code]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"servicerequest\">ServiceRequest</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-prescription\">Radiotherapy Course Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-phase-prescription\">Radiotherapy Phase Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription\">Radiotherapy Plan Prescription</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-course\">Radiotherapy Planned Course</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-phase\">Radiotherapy Planned Phase</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan\">Radiotherapy Treatment Plan</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a ServiceRequest resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ServiceRequest/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/ServiceRequest/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tsubject</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?subject=[type]/[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcategory</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/servicerequest.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tcode</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?code=[system]|[code]</code></td></tr></tbody></table><p>Search Parameter Combination Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter Combination</th><th>Types</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/identifer.html#search\">identifer</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/ServiceRequest-category\">category</a></td><td>http://hl7.org/fhir/SearchParameter/ServiceRequest-category+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?identifer=[identifer]&amp;category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"token\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/ServiceRequest-category\">category</a></td><td>http://hl7.org/fhir/SearchParameter/ServiceRequest-category+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?patient=[system]|[code]&amp;category=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"token\">identifer</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>http://hl7.org/fhir/SearchParameter/clinical-code+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?identifer=[system]|[code]&amp;code=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"token\">patient</a>+\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/SearchParameter/clinical-code\">code</a></td><td>http://hl7.org/fhir/SearchParameter/clinical-code+token\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/ServiceRequest?patient=[system]|[code]&amp;code=[system]|[code]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"device\">Device</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device\">Radiotherapy Seed Device</a>, \n\t\t\t\t\t\t\t\t\t\t</li><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device\">Radiotherapy Treatment Device</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Device resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Device/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Device/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Device?_id=[id]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"bodystructure\">BodyStructure</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume\">Radiotherapy Volume</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a BodyStructure resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/BodyStructure/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/BodyStructure/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/BodyStructure?_id=[id]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/bodystructure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tidentifier</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/BodyStructure?identifier=[system]|[code]</code></td></tr><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/bodystructure.html#search\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\tpatient</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treference\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/BodyStructure?patient=[type]/[id]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"location\">Location</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-location\">Treatment Location</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning a Location resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Location/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Location/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Location?_id=[id]</code></td></tr></tbody></table><h4 class=\"no_toc\" id=\"observation\">Observation</h4><p>Conformance Expectation:\t<strong>SHALL</strong></p><p>Supported Profiles:</p><ul><li><strong>SHOULD</strong> support:\n\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t\t<a href=\"http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-status\">Radiotherapy Disease Status</a>\n\t\t\t\t\t\t\t\t\t\t</li></ul><p>Profile Interaction Summary:</p><ul><li><strong>SHALL</strong> support \n\t\t\t\t\t\t\t\t\t\t\t<code>read</code>, \n\t\t\t\t\t\t\t\t\t\t\t<code>search-type</code>.</li></ul><p>Fetch and Search Criteria:</p><ul><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning an Observation resource using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Observation/[id]</code>\n\t\t\t\t\t\t\t\t\t\t\t\t\n\t\t\t\t\t\t\t\t\t\t\t</li><li>\n\t\t\t\t\t\t\t\t\t\t\t\tA Server <strong>SHALL</strong> be capable of returning resources matching a search query using:\n\t\t\t\t\t\t\t\t\t\t\t\t<code class=\"highlighter-rouge\">GET [base]/Observation/[id]{?[parameters]{&amp;_format=[mime-type]}}</code>\n\t\t\t\t\t\t\t\t\t\t\t</li></ul><!-- Only included search parameters that are not MAY or there is no conformance requirement included --><p>Search Parameter Summary:</p><table class=\"grid\"><thead><tr><th>Conformance</th><th>Parameter</th><th>Type</th><th>Example</th></tr></thead><tbody><tr><td><strong>SHALL</strong></td><td><a href=\"http://hl7.org/fhir/R4/search.html#id\">\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t_id</a></td><td>\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\ttoken\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t</td><td><code class=\"highlighter-rouge\">GET [base]/Observation?_id=[id]</code></td></tr></tbody></table></div>"
* text.status = #generated
* name = "CodeXRTServerCapabilityStatement"
* description = "CodeXRT Server CapabilityStatement"
* rest.mode = #server
* status = #draft
* date = "2020-05-07"
* kind = #requirements
* fhirVersion = #4.0.1
* format = #json

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
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-identifier, #token, #SHALL)
* insert SupportSearchParam(family, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-family, #string, #SHALL)
* insert SupportSearchParam(given, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-given, #string, #SHALL)
* insert SupportSearchParam(birthdate, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-birthdate, #date, #SHALL)
* insert SupportSearchParam(gender, http://hl7.org/fhir/us/core/SearchParameter/us-core-patient-gender, #token, #SHALL)
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
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(_lastUpdated, http://hl7.org/fhir/SearchParameter/Resource-lastUpdated, #date, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/Procedure-subject, #reference, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/Procedure-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "subject"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
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
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/clinical-identifier, #token, #SHALL)
* insert SupportSearchParam(subject, http://hl7.org/fhir/SearchParameter/ServiceRequest-subject, #reference, #SHALL)
* insert SupportSearchParam(category, http://hl7.org/fhir/SearchParameter/ServiceRequest-category, #token, #SHALL)
* insert SupportSearchParam(code, http://hl7.org/fhir/SearchParameter/clinical-code, #token, #SHALL)
* rest.resource[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "identifier"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
* rest.resource[=].extension[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].extension[=].extension[=].valueCode = #SHALL
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "patient"
* rest.resource[=].extension[=].extension[+].url = "required"
* rest.resource[=].extension[=].extension[=].valueString = "category"
* rest.resource[=].extension[=].url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-search-parameter-combination"
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

 // Device requirements
* insert SupportResource(Device, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device, #SHOULD)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// BodyStructure
// Search Parameters
// Identifier (Value & System) OR
// patient
* insert SupportResource(BodyStructure, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)
* insert SupportSearchParam(identifier, http://hl7.org/fhir/SearchParameter/BodyStructure-identifier, #token, #SHALL)
* insert SupportSearchParam(patient, http://hl7.org/fhir/SearchParameter/BodyStructure-patient, #reference, #SHALL)

// Location
* insert SupportResource(Location, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-location, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)

// Observation
* insert SupportResource(Observation, #SHALL)
* insert SupportProfile(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-status, #SHOULD)
* insert SupportInteraction(#read, #SHALL)
* insert SupportInteraction(#search-type, #SHALL)
* insert SupportSearchParam(_id, http://hl7.org/fhir/SearchParameter/Resource-id, #token, #SHALL)