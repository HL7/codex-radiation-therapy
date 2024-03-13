### Usage
This Observation profile is used to represent the disease status reported by a radiation oncologist.
It includes the following key elements:
* status:  [Condition Status Trend]({{site.data.fhir.ver.fhirmcode}}/ValueSet-mcode-condition-status-trend-vs.html) - how the patient's condition has changed.
* status Qualifier: [Disease Progression Qualifier](StructureDefinition-codexrt-radiotherapy-disease-status-definitions.html#key_Observation.value[x].extension:diseaseProgressionQualifier) - if the patient's condition has worsened (status is '271299001' 'Patient's condition worsened (finding)' ), this qualifier may be specified (based on OORO Disease Status value set) to describe how the condiion has worsened. 
* evidentiary basis for status: [EvidenceType]({{site.data.fhir.ver.fhirmcode}}/https://hl7.org/fhir/us/mcode/STU3/ValueSet-mcode-cancer-disease-status-evidence-type-vs.html)


### Conformance
Observation resources with `Observation.code` LOINC `97509-4` SHALL conform to this profile. 


{% include markdown-link-references.md %}