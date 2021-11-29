
// --- Course Prescription ---------------------------------------------------------------------------------

Instance: RadiotherapyCoursePrescription-101-RTTD-BilateralBreast
InstanceOf: RadiotherapyCoursePrescription
Description: "Radiotherapy Course Prescription example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyCoursePrescription-101-RTTD-BilateralBreast" //id of the FHIR Resource
* meta.profile = Canonical(RadiotherapyCoursePrescription)
* extension[treatment-intent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[treatment-intent].valueCodeableConcept.text = "Curative"
// * extension[mcode-radiotherapy-modality-and-technique][0].extension[modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
// * extension[mcode-radiotherapy-modality-and-technique][1].extension[modality][0].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
// * extension[mcode-radiotherapy-modality-and-technique][1].extension[technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
  * extension[mcode-radiotherapy-technique][+].valueCodeableConcept = SCT#1156530009	"Volumetric Modulated Arc Therapy (procedure)" // http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc"
* extension[mcode-radiotherapy-modality-and-technique][1]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"

* extension[radiotherapy-sessions].valueUnsignedInt = 30
// Prescription Target Site "Left Breast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 5000
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionsPrescribed].valuePositiveInt = 25
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[totalDosePrescribed].valueQuantity.value = 6000
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[fractionsPrescribed].valuePositiveInt = 30
// Prescription Target Site "Right Breast"
* extension[radiotherapy-dose-prescribed-to-volume][2].extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
* extension[radiotherapy-dose-prescribed-to-volume][2].extension[totalDosePrescribed].valueQuantity.value = 5000
* extension[radiotherapy-dose-prescribed-to-volume][2].extension[fractionsPrescribed].valuePositiveInt = 25
* identifier[0].use = #usual
* identifier[0].system = VarianRadiotherapyCourseId
* identifier[0].value = "Bilateral Breast"
* identifier[1].system = DICOMUID
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.111.101"
* status = #active
* subject = Reference(Patient-101)
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* reasonReference = Reference(Diagnosis-101-Breast)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Course Prescription"

// --- Phase Prescriptions ---------------------------------------------------------------------------------

Instance: TeleradiotherapyPhasePrescription-101-RTTD-LeftBreastTangents
InstanceOf: TeleradiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
// * id = "TeleradiotherapyPhasePrescription-101-RTTD-LeftBreastTangents" //id of the FHIR Resource
* meta.profile = Canonical(TeleradiotherapyPhasePrescription) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyPhasePrescription"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"

* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 25
// Prescription Target Site "Left Breast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionDosePrescribed].valueQuantity.value = 200
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 5000
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[fractionDosePrescribed].valueQuantity.value = 200
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[totalDosePrescribed].valueQuantity.value = 5000
* identifier[0].use = #usual
* identifier[0].system = VarianRadiotheraphyPhaseId
* identifier[0].value = "Left Breast Tangents"
* identifier[1].system = DICOMUID
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.101"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #active
* subject = Reference(Patient-101)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase Prescription"


Instance: TeleradiotherapyPhasePrescription-102-RTTD-LeftBreastBoost
InstanceOf: TeleradiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
// * id = "TeleradiotherapyPhasePrescription-102-RTTD-LeftBreastBoost" //id of the FHIR Resource
* meta.profile = Canonical(TeleradiotherapyPhasePrescription) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyPhasePrescription"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 5
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionDosePrescribed].valueQuantity.value = 200
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 1000
* identifier[0].use = #usual
* identifier[0].system = VarianRadiotheraphyPhaseId
* identifier[0].value = "Left Breast Boost"
* identifier[1].system = DICOMUID
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.102"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #active
* subject = Reference(Patient-101)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase Prescription"


Instance: TeleradiotherapyPhasePrescription-103-RTTD-RightBreastTangents
InstanceOf: TeleradiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
* meta.profile = Canonical(TeleradiotherapyPhasePrescription) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyPhasePrescription"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 25
// Prescription Target Site "Right Breast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionDosePrescribed].valueQuantity.value = 200
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 5000
* identifier[0].use = #usual
* identifier[0].system = VarianRadiotheraphyPhaseId
* identifier[0].value = "Right Breast Tangents"
* identifier[1].system = DICOMUID
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.103"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #active
* subject = Reference(Patient-101)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase Prescription"

// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapyCourseSummary-101-RTTD-BilateralBreast
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyCourseSummary-101-BilateralBreast" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[0] = Canonical(RadiotherapyCourseSummary) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyCourseSummary"
* meta.profile[1] = $mCODERadiotherapyCourseSummary // "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[treatmentIntent].valueCodeableConcept.text = "Curative"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[mcode-radiotherapy-sessions].valueUnsignedInt = 31
// Prescription Target Site "Left Breast"
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity.value = 5000
* extension[doseDeliveredToVolume][0].extension[fractionsDelivered].valueUnsignedInt = 25
// Prescription Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][1].extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
* extension[doseDeliveredToVolume][1].extension[totalDoseDelivered].valueQuantity.value = 6000
* extension[doseDeliveredToVolume][1].extension[fractionsDelivered].valueUnsignedInt = 30
// Prescription Target Site "Right Breast"
* extension[doseDeliveredToVolume][2].extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
* extension[doseDeliveredToVolume][2].extension[totalDoseDelivered].valueQuantity.value = 5000
* extension[doseDeliveredToVolume][2].extension[fractionsDelivered].valueUnsignedInt = 25
* identifier.use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
* identifier[0].system = VarianRadiotherapyCourseId
* identifier[0].value = "Bilateral Breast"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* reasonReference = Reference(Diagnosis-101-Breast)
* bodySite = SCT#76752008 "Breast structure (body structure)"

// --- Phase Summaries ---------------------------------------------------------------------------------

Instance: RadiotherapyTreatmentPhase-101-LeftBreastTangents
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyTreatmentPhase-101-LeftBreastTangents" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyTreatmentPhase"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 25
// Prescription Target Site "Left Breast"
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity.value = 5000
// Prescription Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][1].extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
* extension[doseDeliveredToVolume][1].extension[totalDoseDelivered].valueQuantity.value = 5000
* identifier[0].use = #usual
* identifier[0].system = VarianRadiotheraphyPhaseId
* identifier[0].value = "Left Breast Tangents"
* basedOn = Reference(TeleradiotherapyPhasePrescription-101-RTTD-LeftBreastTangents)
* partOf = Reference(RadiotherapyCourseSummary-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase Prescription"

Instance: TeleradiotherapyTreatmentPhase-102-LeftBreastBoost
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
// * id = "TeleradiotherapyTreatmentPhase-102-RTTD-LeftBreastBoost" //id of the FHIR Resource -- unnecessary
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyTreatmentPhase"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 5
// Prescription Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity.value = 1000
* identifier[0].use = #usual
* identifier[0].system = VarianRadiotheraphyPhaseId
* identifier[0].value = "Left Breast Boost"
* basedOn = Reference(TeleradiotherapyPhasePrescription-102-RTTD-LeftBreastBoost)
* partOf = Reference(RadiotherapyCourseSummary-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"

Instance: RadiotherapyTreatmentPhase-103-RightBreastTangents
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyTreatmentPhase-103-RightBreastTangents" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyTreatmentPhase"
* extension[mcode-radiotherapy-modality-and-technique][0]
  * extension[mcode-radiotherapy-modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[mcode-radiotherapy-technique][0].valueCodeableConcept = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 25
// Prescription Target Site "Right Breast"
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity.value = 5000
* identifier[0].use = #usual
* identifier[0].system = VarianRadiotheraphyPhaseId
* identifier[0].value = "Right Breast Tangents"
* basedOn = Reference(TeleradiotherapyPhasePrescription-103-RTTD-RightBreastTangents)
* partOf = Reference(RadiotherapyCourseSummary-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-101-LeftBreast
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-101-LeftBreast" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Left Breast" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.101" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[0] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[1] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-101)

Instance: RadiotherapyVolume-102-LeftBreastBoost
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-102-LeftBreastBoost" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Left Breast Boost" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.102" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[0] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[1] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-101)

Instance: RadiotherapyVolume-103-RightBreast
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-103-RightBreast" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Right Breast" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.103" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[0] = SCT#24028007 "Right (qualifier value)"
* locationQualifier[1] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-101)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-101
InstanceOf: Patient
Title: "Example Female Patient"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* meta.security = ActReason#HTEST
* identifier[+]
  * use = #usual
  * type = v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "101101101"
* name[+]
  * use = #usual
  * family = "BilateralBreast"
  * given = "Alice"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #female
* birthDate = "1973-07-25"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"

// --- Diagnosis ---------------------------------------------------------------------------------

Instance: Diagnosis-101-Breast
InstanceOf: Condition
Title: "Example Diagnosis"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* id = "Diagnosis-101-Breast"
* meta.security = ActReason#HTEST
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(Patient-101)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner-1005)
