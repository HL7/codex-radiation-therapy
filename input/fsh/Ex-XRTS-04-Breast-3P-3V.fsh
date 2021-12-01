// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapyCourseSummary-XRTS-04-Breast-2P-3V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCTREQ#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCTREQ#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[actualNumberOfSessions].valueUnsignedInt = 8
// Prescription Target Site "Left Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-04-01-LeftBreast"
    * display = "Left Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
  * extension[fractionsDelivered].valueUnsignedInt = 3
// Prescription Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-04-02-LeftBreastBoost"
    * display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 2000
  * extension[fractionsDelivered].valueUnsignedInt = 7
// Prescription Target Site "Right Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-04-03-RightBreast"
    * display = "Right Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
  * extension[fractionsDelivered].valueUnsignedInt = 3
* identifier
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C1_Both_Breast"
//* basedOn = Reference(ServiceRequest/RadiotherapyCoursePrescription-XRTS-04-Breast"
* status = #completed
* subject = Reference(Patient-XRTS-04)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* performedPeriod.end = "2021-09-17T13:21:17+01:00"
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
//* reasonReference = Reference(Condition/Diagnosis-101-Breast"
* bodySite = SCT#76752008 "Breast structure (body structure)"

// --- Phase Summaries ---------------------------------------------------------------------------------

Instance: RadiotherapyTreatmentPhase-XRTS-04-01-LeftBreastTangents
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCTREQ#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 3
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-04-01-LeftBreast"
    * display = "Left Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-04-02-LeftBreastBoost"
    * display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 1200
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary - Left Breast Tangents"
//* basedOn = Reference(ServiceRequest/RadiotherapyPhasePrescription-XRTS-04-01-LeftBreastTangents"
* partOf = Reference(RadiotherapyCourseSummary-XRTS-04-Breast-2P-3V)
* status = #completed
* subject = Reference(Patient-XRTS-04)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* performedPeriod.end = "2021-09-08T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyTreatmentPhase-XRTS-04-02-RightBreastTangents
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCTREQ#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 3
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-04-03-RightBreast"
    * display = "Right Breast"
  * extension[totalDoseDelivered].valueQuantity.value = 900
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Right Breast Tangents"
//* basedOn = Reference(ServiceRequest/RadiotherapyPhasePrescription-XRTS-04-02-LeftBreastBoost"
* partOf = Reference(RadiotherapyCourseSummary-XRTS-04-Breast-2P-3V)
* status = #completed
* subject = Reference(Patient-XRTS-04)
* performedPeriod.start = "2021-09-13T13:15:17+01:00"
* performedPeriod.end = "2021-09-15T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"

Instance: RadiotherapyTreatmentPhase-XRTS-04-03-LeftBreastBoost
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCTREQ#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 4
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-04-02-LeftBreastBoost"
    * display = "Left Breast Boost"
  * extension[totalDoseDelivered].valueQuantity.value = 800
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Left Breast Boost"
//* basedOn = Reference(RadiotherapyPhasePrescription-XRTS-04-02-LeftBreastBoost)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-04-Breast-2P-3V)
* status = #completed
* subject = Reference(Patient-XRTS-04)
* performedPeriod.start = "2021-09-14T13:15:17+01:00"
* performedPeriod.end = "2021-09-17T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-04-01-LeftBreast
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
  * value = "Left Breast" // display id
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.04.01" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-04)

Instance: RadiotherapyVolume-XRTS-04-02-LeftBreastBoost
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
  * value = "Left Breast Boost" // display id
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.04.02" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-04)

Instance: RadiotherapyVolume-XRTS-04-03-RightBreast
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
  * value = "Right Breast" // display id
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.04.03" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#24028007 "Right (qualifier value)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-04)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-04
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
  * value = "XRTS-04"
* name[+]
  * use = #usual
  * family = "Sister"
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
