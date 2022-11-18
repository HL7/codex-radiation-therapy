Instance: cancer-disease-status-22B
InstanceOf: RadiotherapyDiseaseStatus
Description: "Extended example: example showing disease status (patient's condition regression)"
* extension[evidenceType].valueCodeableConcept = SCT#363679005 "Imaging (procedure)"
* partOf = Reference(RadiotherapyCourseSummary-04-Prostate)
* status = #final "final"
//* code = LNC#97509-4 "Cancer Disease Progression"
* subject = Reference(Patient-6)
* effectiveDateTime = "2020-10-22"
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