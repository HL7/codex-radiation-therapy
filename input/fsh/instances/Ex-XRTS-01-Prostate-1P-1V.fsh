// --- Course Summary ---------------------------------------------------------------------------------

RuleSet: RadiotherapyCourseSummary-XRTS-01-22B-01-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
//* extension[intrafractionVerification][+].extension[procedure].valueCodeableConcept = SCT#77477000 "Computed tomography (procedure)"
* extension[intrafractionVerification][+]  // Martin -- does this make sense here or do we need a separate example
  * extension[procedure].valueCodeableConcept = SCT#168537006 "Plain radiography (procedure)"
  * extension[qualifier].valueCodeableConcept = SCT#255204007 "Multiple (qualifier value)"
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Prostate"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-01-22B-01-Prostate-1P-1V)
* subject = Reference(Patient-XRTS-01-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
// * insert $CodexRTCategoryCode
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy" // This is the old, inactive code, but still should work


Instance: RadiotherapyCourseSummary-XRTS-01-22B-01-Prostate-1P-1V-1Fx
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-01 after 1 fraction."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-01-22B-01-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-01-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 200
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"
* location = Reference(TreatmentLocation-1)
* insert $CodexRTCategoryCode

Instance: RadiotherapyCourseSummary-XRTS-01-22B-01-Prostate-1P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-01 completely treated."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-01-22B-01-Common
* meta.versionId = "2"
* meta.lastUpdated = "2021-09-07T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 2
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-01-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 400
  * extension[fractionsDelivered].valueUnsignedInt = 2
  * extension[uniformFractionation].valueBoolean = true
* status = #completed
* performedPeriod.end = "2021-09-07T13:21:17+01:00"
* insert $CodexRTCategoryCode


// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-01-22B-01-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[intrafractionVerification][+].extension[procedure].valueCodeableConcept = SCT#77477000 "Computed tomography (procedure)"
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.01.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-01-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-01-22B-01-Prostate-1P-1V)
* subject = Reference(Patient-XRTS-01-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-01-22B-01-01-Primary-1Fx
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-01, Phase 1 after 1 fraction."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-01-22B-01-01-Primary-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-01-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 200
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-01-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-01, Phase 1 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-01-22B-01-01-Primary-Common
* meta.versionId = "2"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[fractionsDelivered].valueUnsignedInt = 2
* extension[doseDeliveredToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-01-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 400
* status = #completed
* performedPeriod.end = "2021-09-07T13:21:17+01:00"
* insert $CodexRTCategoryCode

// --- Planned Course ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-01-22B-01-Prostate-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-01."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-01-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDose].valueQuantity.value = 400
  * extension[fractions].valuePositiveInt = 2
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Prostate"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.01.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-01-22B)
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* insert $CodexRTCategoryCodeRequired
// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-01-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-01, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 2
* extension[radiotherapyDosePlannedToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-01-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 400
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.01.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-01-22B-01-Prostate-1P-1V)
* basedOn[=].display = "C1Prostate"
* status = #completed
* subject = Reference(Patient-XRTS-01-22B)
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* insert $CodexRTCategoryCodeRequired
// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-01-22B-01-Prostate
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-01 'Prostate'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Prostate" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.01.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#41216001 "Prostatic structure (body structure)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-01-22B)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-01-22B
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient 1"
Description: "An example patient, test case XRTS-01."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = $mCODECancerPatient
* meta.profile[+] = USCorePatient
* extension[us-core-birthsex].valueCode = 	http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#M
* identifier[+]
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-01_22B"
* name[+]
  * use = #usual
  * family = "Father-22B"
  * given = "Joe"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1960-02-01"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
