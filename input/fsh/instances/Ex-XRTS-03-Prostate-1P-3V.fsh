// --- Course Summary ---------------------------------------------------------------------------------

RuleSet: RadiotherapyCourseSummary-XRTS-03-22B-01-Prostate-1P-3V-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SCT#721031000124102 "External beam radiotherapy without respiratory motion management (procedure)"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#MV "MV"
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Prostate"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.03.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-03-22B-01-Prostate-1P-3V)
* subject = Reference(Patient-XRTS-03-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* bodySite[+] = SCT#245294005 "Pelvic lymph node group (body structure)"
* bodySite[+] = SCT#64739004 "Seminal vesicle"
* insert $CodexRTCategoryCode

Instance: RadiotherapyCourseSummary-XRTS-03-22B-01-Prostate-1P-3V-1Fx
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-03 after 1 fraction."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-03-22B-01-Prostate-1P-3V-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 200
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = true
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-02-PelvNs)
    * valueReference.display = "PelvNs"
  * extension[totalDoseDelivered].valueQuantity.value = 180
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-03-SemVs)
    * valueReference.display = "SemVs"
  * extension[totalDoseDelivered].valueQuantity.value = 200
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"
* insert $CodexRTCategoryCode

Instance: RadiotherapyCourseSummary-XRTS-03-22B-01-Prostate-1P-3V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-03 completely treated."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-03-22B-01-Prostate-1P-3V-Common
* meta.versionId = "5"
* meta.lastUpdated = "2021-09-10T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 800
  * extension[fractionsDelivered].valueUnsignedInt = 4
  * extension[uniformFractionation].valueBoolean = true
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = true
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-02-PelvNs)
    * valueReference.display = "PelvNs"
  * extension[totalDoseDelivered].valueQuantity.value = 720
  * extension[fractionsDelivered].valueUnsignedInt = 4
  * extension[uniformFractionation].valueBoolean = true
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
  * extension[radiobiologicMetric].valueQuantity
    * unit = #EQD2Gy(a/b=2.5)
    * code = #Gy
    * system = UCUM
    * value = 52.0 
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-03-SemVs)
    * valueReference.display = "SemVs"
  * extension[totalDoseDelivered].valueQuantity.value = 800
  * extension[fractionsDelivered].valueUnsignedInt = 4
  * extension[uniformFractionation].valueBoolean = true
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
  * extension[radiobiologicMetric].valueQuantity
    * unit = #EQD2Gy(a/b=2.5)
    * code = #Gy
    * system = UCUM
    * value = 52.0 
* status = #completed
* performedPeriod.end = "2021-09-10T13:21:17+01:00"
* insert $CodexRTCategoryCode

// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-03-22B-01-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SCT#721031000124102 "External beam radiotherapy without respiratory motion management (procedure)"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#MV "MV"

* identifier[displayName]
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.03.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-03-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-03-22B-01-Prostate-1P-3V)
* subject = Reference(Patient-XRTS-03-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* bodySite[+] = SCT#245294005 "Pelvic lymph node group (body structure)"
* bodySite[+] = SCT#64739004 "Seminal vesicle"
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-03-22B-01-01-Primary-1Fx
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-03, Phase 1 after 1 fraction."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-03-22B-01-01-Primary-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 200
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = true
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-02-PelvNs)
    * valueReference.display = "PelvNs"
  * extension[totalDoseDelivered].valueQuantity.value = 180
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-03-SemVs)
    * valueReference.display = "SemVs"
  * extension[totalDoseDelivered].valueQuantity.value = 200
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-03-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-03, Phase 1 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-03-22B-01-01-Primary-Common
* meta.versionId = "5"
* meta.lastUpdated = "2021-09-10T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 4
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 800
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = true
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-02-PelvNs)
    * valueReference.display = "PelvNs"
  * extension[totalDoseDelivered].valueQuantity.value = 720
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-03-SemVs)
    * valueReference.display = "SemVs"
  * extension[totalDoseDelivered].valueQuantity.value = 800
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* status = #completed
* performedPeriod.end = "2021-09-10T13:21:17+01:00"
* insert $CodexRTCategoryCode

// --- Planned Course ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-03-22B-01-Prostate-1P-3V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-03."
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

* extension[respiratoryMotionManagement][+].valueCodeableConcept = SCT#721031000124102 "External beam radiotherapy without respiratory motion management (procedure)"
//* extension[radiotherapySessions].valueUnsignedInt = 4
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#MV "MV"

* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[totalDose].valueQuantity.value = 800
  * extension[fractions].valuePositiveInt = 4
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = true
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-02-PelvNs)
    * valueReference.display = "PelvNs"
  * extension[totalDose].valueQuantity.value = 720
  * extension[fractions].valuePositiveInt = 4
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-03-SemVs)
    * valueReference.display = "SemVs"
  * extension[totalDose].valueQuantity.value = 800
  * extension[fractions].valuePositiveInt = 4
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Prostate"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.03.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-03-22B)
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* bodySite[+] = SCT#245294005 "Pelvic lymph node group (body structure)"
* bodySite[+] = SCT#64739004 "Seminal vesicle"
* insert $CodexRTCategoryCodeRequired

// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-03-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-03, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SCT#721031000124102 "External beam radiotherapy without respiratory motion management (procedure)"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#168537006 "Plain X-ray (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#MV "MV"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 4
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-01-Prostate)
    * valueReference.display = "Prostate"
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 800
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = true
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-02-PelvNs)
    * valueReference.display = "PelvNs"
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 720
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-03-SemVs)
    * valueReference.display = "SemVs"
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 800
  * extension[pointDose].valueBoolean = false
  * extension[primaryPlanDose].valueBoolean = false
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.03.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-03-22B-01-Prostate-1P-3V)
* basedOn[=].display = "C1Prostate"
* status = #completed
* subject = Reference(Patient-XRTS-03-22B)
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* bodySite[+] = SCT#245294005 "Pelvic lymph node group (body structure)"
* bodySite[+] = SCT#64739004 "Seminal vesicle"
* insert $CodexRTCategoryCodeRequired

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-03-22B-01-Prostate
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-03 'Prostate'."
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
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.03.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#41216001 "Prostatic structure (body structure)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-03-22B)

Instance: RadiotherapyVolume-XRTS-03-22B-02-PelvNs
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-03 'Pelvic Lymph Nodes'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "PelvNs" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.03.02.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#245294005 "Pelvic lymph node group (body structure)"
* patient = Reference(Patient-XRTS-03-22B)

Instance: RadiotherapyVolume-XRTS-03-22B-03-SemVs
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-03 'Seminal Vesicles'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "SemVs" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.03.03.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#64739004 "Seminal vesicle"
* patient = Reference(Patient-XRTS-03-22B)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-03-22B
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient 3"
Description: "An example patient, test case XRTS-03."
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
  * value = "XRTS-03_22B"
* name[+]
  * use = #usual
  * family = "Brother-22B"
  * given = "Jonathan"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1960-02-03"
* deceasedBoolean = true
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
