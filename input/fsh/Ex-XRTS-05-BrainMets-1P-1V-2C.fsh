// --- Course Summaries ---------------------------------------------------------------------------------

RuleSet: RadiotherapyCourseSummary-XRTS-05-22A-01-BrainMets-1P-1V-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C1BrainMets"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.05.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22A-01-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22A)
* performedPeriod.start = "2020-09-07T13:15:17+01:00"
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"

Instance: RadiotherapyCourseSummary-XRTS-05-22A-01-BrainMets-1P-1V-1Fx
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-05-22A-01-BrainMets-1P-1V-Common
* meta.versionId = "1"
* meta.lastUpdated = "2020-09-07T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 500
  * extension[fractionsDelivered].valueUnsignedInt = 1
* status = #in-progress
* performedPeriod.end = "2020-09-07T13:21:17+01:00"

Instance: RadiotherapyCourseSummary-XRTS-05-22A-01-BrainMets-1P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-05-22A-01-BrainMets-1P-1V-Common
* meta.versionId = "6"
* meta.lastUpdated = "2020-09-14T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 6
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2500
  * extension[fractionsDelivered].valueUnsignedInt = 5
* status = #completed
* performedPeriod.end = "2020-09-14T13:21:17+01:00"

RuleSet: RadiotherapyCourseSummary-XRTS-05-22A-02-BrainMets-1P-1V-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C2BrainMets"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.05.02.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22A-02-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22A)
* performedPeriod.start = "2021-09-20T13:15:17+01:00"
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"

Instance: RadiotherapyCourseSummary-XRTS-05-22A-02-BrainMets-1P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-05-22A-02-BrainMets-1P-1V-Common
* meta.versionId = "5"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[actualNumberOfSessions].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2000
  * extension[fractionsDelivered].valueUnsignedInt = 5
* status = #completed
* performedPeriod.end = "2021-09-24T13:21:17+01:00"

// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-05-22A-01-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.05.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-05-22A-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-05-22A-01-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22A)
* performedPeriod.start = "2020-09-07T13:15:17+01:00"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyTreatedPhase-XRTS-05-22A-01-01-Primary-1Fx
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-05-22A-01-01-Primary-Common
* meta.versionId = "1"
* meta.lastUpdated = "2020-09-07T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 500
* status = #in-progress
* performedPeriod.end = "2020-09-07T13:21:17+01:00"

Instance: RadiotherapyTreatedPhase-XRTS-05-22A-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-05-22A-01-01-Primary-Common
* meta.versionId = "6"
* meta.lastUpdated = "2020-09-14T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2500
* status = #completed
* performedPeriod.end = "2020-09-14T13:21:17+01:00"

RuleSet: RadiotherapyTreatedPhase-XRTS-05-22A-02-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.05.02.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-05-22A-02-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-05-22A-02-BrainMets-1P-1V)
* subject = Reference(Patient-XRTS-05-22A)
* performedPeriod.start = "2021-09-20T13:15:17+01:00"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyTreatedPhase-XRTS-05-22A-02-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-05-22A-02-01-Primary-Common
* meta.versionId = "5"
* meta.lastUpdated = "2021-09-24T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2000
* status = #completed
* performedPeriod.end = "2021-09-24T13:21:17+01:00"

// --- Planned Courses ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-05-22A-01-BrainMets-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Course Summary example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[treatment-intent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[mcode-radiotherapy-sessions].valueUnsignedInt = 5
* extension[radiotherapy-dose-planned-to-volume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDose].valueQuantity.value = 2500
  * extension[fractions].valuePositiveInt = 5
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C1BrainMets"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.05.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-05-22A)
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"

Instance: RadiotherapyPlannedCourse-XRTS-05-22A-02-BrainMets-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Course Summary example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[treatment-intent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[mcode-radiotherapy-sessions].valueUnsignedInt = 5
* extension[radiotherapy-dose-planned-to-volume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDose].valueQuantity.value = 2000
  * extension[fractions].valuePositiveInt = 5
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C2BrainMets"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842418.2121.20150602151.05.02.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-05-22A)
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"

// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-05-22A-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[radiotherapy-fractions-planned].valuePositiveInt = 5
* extension[radiotherapy-dose-planned-to-volume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[fractionDose].valueQuantity.value = 500
  * extension[totalDose].valueQuantity.value = 2500
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.05.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22A-01-BrainMets-1P-1V)
* basedOn[=].display = "C1BrainMets"
* status = #completed
* subject = Reference(Patient-XRTS-05-22A)
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyPlannedPhase-XRTS-05-22A-02-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[radiotherapy-fractions-planned].valuePositiveInt = 5
* extension[radiotherapy-dose-planned-to-volume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22A-02-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[fractionDose].valueQuantity.value = 400
  * extension[totalDose].valueQuantity.value = 2000
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.05.02.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-05-22A-02-BrainMets-1P-1V)
* basedOn[=].display = "C2BrainMets"
* status = #completed
* subject = Reference(Patient-XRTS-05-22A)
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-05-22A-01-BrainMets
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Brain Mets" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.05.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#12738006 "Brain structure (body structure)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-05-22A)

Instance: RadiotherapyVolume-XRTS-05-22A-02-BrainMets
InstanceOf: RadiotherapyVolume
Description: "Target Volume. Same label as Brain Mets in first Course, but conceptually a different Volume. Dose is not added up."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-22T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Brain Mets" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.05.02.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#12738006 "Brain structure (body structure)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-05-22A)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-05-22A
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = $mCODECancerPatient
* meta.profile[+] = USCorePatient
* extension[birthsex].valueCode = #F
* identifier[+]
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-05_22A"
* name[+]
  * use = #usual
  * family = "Daughter-22A"
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
