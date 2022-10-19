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
Expression: "coding.code != '271299001'
        implies not extension.where(url = 'http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-disease-progression-qualifier').exists()"


Extension: RadiotherapyVolumeExtension
Id: codexrt-radiotherapy-volume-extension
Title: "Radiotherapy Volume Extension"
Description: "Extension providing a reference to a RadiotherapyVolume"
* . ^short = "Radiotherapy Volume"
* value[x] only Reference(RadiotherapyVolume)
* value[x] 1..1

Extension: DiseaseProgressionQualifier
Id: codexrt-radiotherapy-progression-qualifier
Title: "Disease Progression Qualifier"
Description: "Extension providing a qualifier for a disease progression"
* . ^short = "Progression Qualifier"
* value[x] only CodeableConcept
* value[x] from DiseaseProgressionQualiierVS (required)
* value[x] 1..1

ValueSet: DiseaseProgressionQualiierVS
Id: codexrt-disease-progression-qualifier-vs
Title: "Disease Progression Qualifier"
Description: "Qualifiers that describe disease progression and/or disease recurrence"
* ^experimental = false
* SCT#80534008 "Biochemical (qualifier value)"
* SCT#63161005 "Principal (qualifier value)"
* SCT#255470001 "Local (qualifier value)"
* SCT#263820005 "Nodal (qualifier value)"
* SCT#261007001 "Distant (qualifier value)"


Instance: cancer-disease-status-22A
InstanceOf: RadiotherapyDiseaseStatus
Description: "Extended example: example showing disease status (patient's condition regression)"
* extension[evidenceType].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* status = #final "final"
//* code = LNC#97509-4 "Cancer Disease Progression"
* subject = Reference(Patient-XRTS-01-22A)
* effectiveDateTime = "2018-11-01"
* performer = Reference(Practitioner-1005)
* focus = Reference(Diagnosis-2-Prostate)
* valueCodeableConcept = SCT#271299001 "Patient's condition worsened (finding)"   // progression
* valueCodeableConcept
  * extension[diseaseProgressionQualifier][0]
    * valueCodeableConcept = SCT#263820005 "Nodal (qualifier value)"
  * extension[diseaseProgressionQualifier][+]
    * valueCodeableConcept = SCT#80534008 "Biochemical (qualifier value)"
* extension[radiotherapyVolume][0]
  * valueReference  = Reference(RadiotherapyVolume-03-Prostate)
* extension[radiotherapyVolume][+]
  * valueReference  = Reference(RadiotherapyVolume-04-PelvNs)
* extension[radiotherapyVolume][+]
  * valueReference  = Reference(RadiotherapyVolume-05-SemVs)