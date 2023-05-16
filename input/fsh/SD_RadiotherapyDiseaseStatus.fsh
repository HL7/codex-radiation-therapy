Profile: RadiotherapyDiseaseStatus
Parent: $mCODECancerDiseaseStatus
Id: codexrt-radiotherapy-disease-status
Title: "Radiotherapy Disease Status"
Description: "Disease Status Reported by Radiation Oncologist"
* ^status = #draft
// can't do this, so we add extension
//  * focus only Reference($mCODEPrimaryCancerCondition or $mCODESecondaryCancerCondition or $mCODETumor or RadiotherapyVolume)
* extension contains
    RadiotherapyVolumeExtension named radiotherapyVolume 0..*
* valueCodeableConcept.extension contains
    DiseaseProgressionQualifier named diseaseProgressionQualifier 0..*
// may need invariant so that progression qualifier can only be provided if value is progressive disease
* valueCodeableConcept obeys RestrictDiseaseProgressionQualifier

Invariant: RestrictDiseaseProgressionQualifier
Description:  "Only allow qualifier for one value status"
Severity: #error
Expression: "coding.exists(code = '271299001').not()
        implies extension.exists(url = 'http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-progression-qualifier').not()"

