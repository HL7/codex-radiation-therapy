// --- Course Summary ---------------------------------------------------------------------------------

RuleSet: RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#USCRS-99903 "Radiotherapy without respiratory motion management (procedure)"
* extension[ImageGuidanceModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#717193008 "Cone beam computed tomography (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kilovolt"
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Prostate"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.02.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-02-22B-01-Prostate-2P-1V)
* subject = Reference(Patient-XRTS-02-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"

Instance: RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V-1Fx
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-02 after 1 fraction."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 180
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"

Instance: RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-02 completely treated."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V-Common
* meta.versionId = "9"
* meta.lastUpdated = "2021-09-17T13:21:17+01:00"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[actualNumberOfSessions].valueUnsignedInt = 9
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 1340
  * extension[fractionsDelivered].valueUnsignedInt = 7
  * extension[uniformFractionation].valueBoolean = false
* status = #completed
* performedPeriod.end = "2021-09-17T13:21:17+01:00"

// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-02-22B-01-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#USCRS-99903 "Radiotherapy without respiratory motion management (procedure)"
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.02.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-02-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V)
* subject = Reference(Patient-XRTS-02-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* note.text = "Free text note in Radiotherapy Treated Phase"

Instance: RadiotherapyTreatedPhase-XRTS-02-22B-01-01-Primary-1Fx
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-02, Phase 1 after 1 fraction."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-02-22B-01-01-Primary-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 180
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"

Instance: RadiotherapyTreatedPhase-XRTS-02-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-02, Phase 1 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-02-22B-01-01-Primary-Common
* meta.versionId = "4"
* meta.lastUpdated = "2021-09-09T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 3
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 540
* status = #stopped
* performedPeriod.end = "2021-09-09T13:21:17+01:00"

RuleSet: RadiotherapyTreatedPhase-XRTS-02-22B-01-02-PlanChange-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#USCRS-99903 "Radiotherapy without respiratory motion management (procedure)"
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "PlanChange"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.02.01.02.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-02-22B-01-02-PlanChange)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V)
* subject = Reference(Patient-XRTS-02-22B)
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* note.text = "Free text note in Radiotherapy Treated Phase"
* performedPeriod.start = "2021-09-13T13:15:17+01:00"

Instance: RadiotherapyTreatedPhase-XRTS-02-22B-01-02-PlanChange
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-02, Phase 2 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-02-22B-01-02-PlanChange-Common
* meta.versionId = "5"
* meta.lastUpdated = "2021-09-17T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 4
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 800
* status = #completed
* performedPeriod.end = "2021-09-17T13:21:17+01:00"

// --- Planned Course ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-02-22B-01-Prostate-2P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-02."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#USCRS-99903 "Radiotherapy without respiratory motion management (procedure)"
* extension[ImageGuidanceModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#717193008 "Cone beam computed tomography (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kilovolt"
//* extension[radiotherapySessions].valueUnsignedInt = 7

* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDose].valueQuantity.value = 1340
  * extension[fractions].valuePositiveInt = 7
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Prostate"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.02.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-02-22B)
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"

// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-02-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-02, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#USCRS-99903 "Radiotherapy without respiratory motion management (procedure)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 7
* extension[radiotherapyDosePlannedToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 1260
* extension[radiotherapyReasonForRevisionOrAdaptation].valueCodeableConcept = SCT#373858009 "Radiotherapy course changed - acute radiotherapy toxicity (finding)"
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.02.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-02-22B-01-Prostate-2P-1V)
* basedOn[=].display = "C1Prostate"
* status = #revoked
* subject = Reference(Patient-XRTS-02-22B)
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* note.text = "Free text note in Radiotherapy Planned Phase"

Instance: RadiotherapyPlannedPhase-XRTS-02-22B-01-02-PlanChange
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-02, Phase 2."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#USCRS-99903 "Radiotherapy without respiratory motion management (procedure)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 4
* extension[radiotherapyDosePlannedToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 800
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "PlanChange"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.02.01.02.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-02-22B-01-Prostate-2P-1V)
* basedOn[=].display = "C1Prostate"
* replaces = Reference(RadiotherapyPlannedPhase-XRTS-02-22B-01-01-Primary)
* status = #completed
* subject = Reference(Patient-XRTS-02-22B)
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* note.text = "Free text note in Radiotherapy Planned Phase"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-02-22B-01-Prostate
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-02 'Prostate'."
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
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.02.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#41216001 "Prostatic structure (body structure)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-02-22B)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-02-22B
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient 2"
Description: "An example patient, test case XRTS-02."
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
  * value = "XRTS-02_22B"
* name[+]
  * use = #usual
  * family = "Cousin-22B"
  * given = "James"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1960-02-02"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
