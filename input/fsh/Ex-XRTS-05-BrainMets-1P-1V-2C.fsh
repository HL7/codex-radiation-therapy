// --- Course Summaries ---------------------------------------------------------------------------------

RuleSet: RadiotherapyCourseSummary-XRTS-05-22B-01-BrainMets-1P-1V-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[courseInvolvesReirradiation].valueBoolean = false
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1BrainMets"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.05.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22B-01-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22B)
* performedPeriod.start = "2020-09-07T13:15:17+01:00"
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCode

Instance: RadiotherapyCourseSummary-XRTS-05-22B-01-BrainMets-1P-1V-1Fx
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example, test case XRTS-05, Course 1 after 1 fraction."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-05-22B-01-BrainMets-1P-1V-Common
* meta.versionId = "1"
* meta.lastUpdated = "2020-09-07T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 500
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
* status = #in-progress
* performedPeriod.end = "2020-09-07T13:21:17+01:00"
* insert $CodexRTCategoryCode

Instance: RadiotherapyCourseSummary-XRTS-05-22B-01-BrainMets-1P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example, test case XRTS-05, Course 1 completely treated."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-05-22B-01-BrainMets-1P-1V-Common
* meta.versionId = "6"
* meta.lastUpdated = "2020-09-14T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 6
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2500
  * extension[fractionsDelivered].valueUnsignedInt = 5
  * extension[uniformFractionation].valueBoolean = true
* status = #completed
* performedPeriod.end = "2020-09-14T13:21:17+01:00"
* insert $CodexRTCategoryCode

RuleSet: RadiotherapyCourseSummary-XRTS-05-22B-02-BrainMets-1P-1V-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[courseInvolvesReirradiation].valueBoolean = true
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C2BrainMets"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.05.02.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22B-02-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22B)
* performedPeriod.start = "2021-09-20T13:15:17+01:00"
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCode

Instance: RadiotherapyCourseSummary-XRTS-05-22B-02-BrainMets-1P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example, test case XRTS-05, Course 2 completely treated."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-05-22B-02-BrainMets-1P-1V-Common
* meta.versionId = "5"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[actualNumberOfSessions].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2000
  * extension[fractionsDelivered].valueUnsignedInt = 5
  * extension[uniformFractionation].valueBoolean = true
* status = #completed
* performedPeriod.end = "2021-09-24T13:21:17+01:00"
* insert $CodexRTCategoryCode

// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-05-22B-01-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* identifier[displayName]
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.05.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-05-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-05-22B-01-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22B)
* performedPeriod.start = "2020-09-07T13:15:17+01:00"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-05-22B-01-01-Primary-1Fx
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-05, Course 1, Phase 1 after 1 fraction."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-05-22B-01-01-Primary-Common
* meta.versionId = "1"
* meta.lastUpdated = "2020-09-07T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 500
* status = #in-progress
* performedPeriod.end = "2020-09-07T13:21:17+01:00"
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-05-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-05, Course 1, Phase 1 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-05-22B-01-01-Primary-Common
* meta.versionId = "6"
* meta.lastUpdated = "2020-09-14T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2500
* status = #completed
* performedPeriod.end = "2020-09-14T13:21:17+01:00"
* insert $CodexRTCategoryCode

RuleSet: RadiotherapyTreatedPhase-XRTS-05-22B-02-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* identifier[displayName]
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.05.02.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-05-22B-02-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-05-22B-02-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22B)
* performedPeriod.start = "2021-09-20T13:15:17+01:00"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-05-22B-02-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-05, Course 2, Phase 1 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-05-22B-02-01-Primary-Common
* meta.versionId = "5"
* meta.lastUpdated = "2021-09-24T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2000
* status = #completed
* performedPeriod.end = "2021-09-24T13:21:17+01:00"
* insert $CodexRTCategoryCode

// --- Planned Courses ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-05-22B-01-BrainMets-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-05, Course 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[courseInvolvesReirradiation].valueBoolean = false
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDose].valueQuantity.value = 2500
  * extension[fractions].valuePositiveInt = 5
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1BrainMets"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.05.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-05-22B)
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCodeRequired

Instance: RadiotherapyPlannedCourse-XRTS-05-22B-02-BrainMets-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-05, Course 2."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[courseInvolvesReirradiation].valueBoolean = true
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDose].valueQuantity.value = 2000
  * extension[fractions].valuePositiveInt = 5
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C2BrainMets"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.05.02.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-05-22B)
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCodeRequired

// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-05-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-05, Course 1, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 5
* extension[radiotherapyDosePlannedToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[fractionDose].valueQuantity.value = 500
  * extension[totalDose].valueQuantity.value = 2500
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.05.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22B-01-BrainMets-1P-1V)
* basedOn[=].display = "C1BrainMets"
* status = #completed
* subject = Reference(Patient-XRTS-05-22B)
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCodeRequired


Instance: RadiotherapyPlannedPhase-XRTS-05-22B-02-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-05, Course 2, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[respiratoryMotionManagement][+].valueCodeableConcept = SnomedRequestedCS#721031000124102 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 5
* extension[radiotherapyDosePlannedToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[fractionDose].valueQuantity.value = 400
  * extension[totalDose].valueQuantity.value = 2000
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.05.02.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22B-02-BrainMets-1P-1V)
* basedOn[=].display = "C2BrainMets"
* status = #completed
* subject = Reference(Patient-XRTS-05-22B)
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* insert $CodexRTCategoryCodeRequired

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-05-22B-01-BrainMets
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-05 'Brain Mets' Course 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Brain Mets" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.05.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#12738006 "Brain structure (body structure)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-05-22B)

Instance: RadiotherapyVolume-XRTS-05-22B-02-BrainMets
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-05 'Brain Mets' Course 2. Same label as Brain Mets in first course, but conceptually a different volume. Dose is not added up."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-22T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Brain Mets" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.05.02.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#12738006 "Brain structure (body structure)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-05-22B)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-05-22B
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient 5"
Description: "An example patient, test case XRTS-05."
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
  * value = "XRTS-05_22B"
* name[+]
  * use = #usual
  * family = "Daughter-22B"
  * given = "Joan"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #female
* birthDate = "1960-02-05"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
