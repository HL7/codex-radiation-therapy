// --- Course Summary ---------------------------------------------------------------------------------

RuleSet: RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C1_Both_Breast"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.04.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-04-22A-01-Breast-2P-3V)
* subject = Reference(Patient-XRTS-04-22A)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
//* reasonReference = Reference(Condition/Diagnosis-101-Breast"
* bodySite = SCT#76752008 "Breast structure (body structure)"

Instance: RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V-1Fx
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-04 after 1 Fraction."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
// Target Site "Left Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-01-LeftBreast)
    * valueReference.display = "Left Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 300
  * extension[fractionsDelivered].valueUnsignedInt = 1
// Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 300
  * extension[fractionsDelivered].valueUnsignedInt = 1
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"

Instance: RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-04 completely treated."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V-Common
* meta.versionId = "8"
* meta.lastUpdated = "2021-09-17T13:21:17+01:00"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[actualNumberOfSessions].valueUnsignedInt = 8
// Target Site "Left Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-01-LeftBreast)
    * valueReference.display = "Left Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
  * extension[fractionsDelivered].valueUnsignedInt = 3
// Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 1700
  * extension[fractionsDelivered].valueUnsignedInt = 7
// Target Site "Right Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-03-RightBreast)
    * valueReference.display = "Right Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
  * extension[fractionsDelivered].valueUnsignedInt = 3
* status = #completed
* performedPeriod.end = "2021-09-17T13:21:17+01:00"

// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-04-22A-01-01-LeftBreastTang-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary - Left Breast Tangents"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.04.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-04-22A-01-01-LeftBreastTang)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V)
* subject = Reference(Patient-XRTS-04-22A)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"


Instance: RadiotherapyTreatedPhase-XRTS-04-22A-01-01-LeftBreastTang-1Fx
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-04, Phase 1 after 1 Fraction."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-04-22A-01-01-LeftBreastTang-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-01-LeftBreast)
    * valueReference.display = "Left Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 300
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 300
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"

Instance: RadiotherapyTreatedPhase-XRTS-04-22A-01-01-LeftBreastTang
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-04, Phase 1 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-04-22A-01-01-LeftBreastTang-Common
* meta.versionId = "3"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[fractionsDelivered].valueUnsignedInt = 3
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-01-LeftBreast)
    * valueReference.display = "Left Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 900
* status = #completed
* performedPeriod.end = "2021-09-08T13:21:17+01:00"


RuleSet: RadiotherapyTreatedPhase-XRTS-04-22A-01-02-RightBreastTang-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Right Breast Tangents"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.04.01.02.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-04-22A-01-02-RightBreastTang)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V)
* subject = Reference(Patient-XRTS-04-22A)
* performedPeriod.start = "2021-09-13T13:15:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"

Instance: RadiotherapyTreatedPhase-XRTS-04-22A-01-02-RightBreastTang
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-04, Phase 2 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-04-22A-01-02-RightBreastTang-Common
* meta.versionId = "3"
* meta.lastUpdated = "2021-09-15T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 3
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-03-RightBreast)
    * valueReference.display = "Right Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
* status = #completed
* performedPeriod.end = "2021-09-15T13:21:17+01:00"

RuleSet: RadiotherapyTreatedPhase-XRTS-04-22A-01-03-LeftBreastBoost-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Left Breast Boost"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.04.01.03.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-04-22A-01-03-LeftBreastBoost)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-04-22A-01-Breast-2P-3V)
* subject = Reference(Patient-XRTS-04-22A)
* performedPeriod.start = "2021-09-14T13:15:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"


Instance: RadiotherapyTreatedPhase-XRTS-04-22A-01-03-LeftBreastBoost
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-04, Phase 3 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-04-22A-01-03-LeftBreastBoost-Common
* meta.versionId = "4"
* meta.lastUpdated = "2021-09-17T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 4
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 800
* status = #completed
* performedPeriod.end = "2021-09-17T13:21:17+01:00"


// --- Planned Course ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-04-22A-01-Breast-2P-3V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-04."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapySessions].valueUnsignedInt = 8
// Target Site "Left Breast"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-01-LeftBreast)
    * valueReference.display = "Left Breast"
  * extension[totalDose].valueQuantity.value = 900
  * extension[fractions].valuePositiveInt = 3
// Target Site "Left Breast Boost"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[totalDose].valueQuantity.value = 1700
  * extension[fractions].valuePositiveInt = 7
// Target Site "Right Breast"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-03-RightBreast)
    * valueReference.display = "Right Breast"
  * extension[totalDose].valueQuantity.value = 900
  * extension[fractions].valuePositiveInt = 3
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C1_Both_Breast"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.04.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-04-22A)
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* bodySite = SCT#76752008 "Breast structure (body structure)"

// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-04-22A-01-01-LeftBreastTang
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-04, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 3
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-01-LeftBreast)
    * valueReference.display = "Left Breast"
  * extension[fractionDose].valueQuantity.value = 300
  * extension[totalDose].valueQuantity.value = 900
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[fractionDose].valueQuantity.value = 300
  * extension[totalDose].valueQuantity.value = 900
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPhaseId
  * value = "Primary - Left Breast Tangents"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.04.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-04-22A-01-Breast-2P-3V)
* basedOn[=].display = "C1_Both_Breast"
* status = #completed
* subject = Reference(Patient-XRTS-04-22A)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyPlannedPhase-XRTS-04-22A-01-02-RightBreastTang
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-04, Phase 2."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 3
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-03-RightBreast)
    * valueReference.display = "Right Breast"
  * extension[fractionDose].valueQuantity.value = 300
  * extension[totalDose].valueQuantity.value = 900
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPhaseId
  * value = "Right Breast Tangents"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.04.01.02.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-04-22A-01-Breast-2P-3V)
* basedOn[=].display = "C1_Both_Breast"
* status = #completed
* subject = Reference(Patient-XRTS-04-22A)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyPlannedPhase-XRTS-04-22A-01-03-LeftBreastBoost
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-04, Phase 3."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 4
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost)
    * valueReference.display = "Left Breast Boost"
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 800
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPhaseId
  * value = "Left Breast Boost"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.04.01.03.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-04-22A-01-Breast-2P-3V)
* basedOn[=].display = "C1_Both_Breast"
* status = #completed
* subject = Reference(Patient-XRTS-04-22A)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-04-22A-01-LeftBreast
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume XRTS-04 'Left Breast'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Left Breast" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.04.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-04-22A)

Instance: RadiotherapyVolume-XRTS-04-22A-02-LeftBreastBoost
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume XRTS-04 'Left Breast Boost'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Left Breast Boost" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.04.02.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-04-22A)

Instance: RadiotherapyVolume-XRTS-04-22A-03-RightBreast
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume XRTS-04 'Right Breast'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Right Breast" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.04.03.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#24028007 "Right (qualifier value)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-04-22A)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-04-22A
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient 4"
Description: "An example patient, test case XRTS-04."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = $mCODECancerPatient
* meta.profile[+] = USCorePatient
* extension[us-core-birthsex].valueCode = 	http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F
* identifier[+]
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-04_22A"
* name[+]
  * use = #usual
  * family = "Sister-22A"
  * given = "Jane"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #female
* birthDate = "1980-03-04"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
