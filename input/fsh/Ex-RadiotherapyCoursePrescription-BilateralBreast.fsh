
// --- Course Prescription ---------------------------------------------------------------------------------

Instance: RadiotherapyCoursePrescription-101-RTTD-BilateralBreast
InstanceOf: RadiotherapyCoursePrescription
Description: "Radiotherapy Course Prescription example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyCoursePrescription-101-RTTD-BilateralBreast" //id of the FHIR Resource
* meta.profile = Canonical(RadiotherapyCoursePrescription)
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[treatmentIntent].valueCodeableConcept.text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[mcode-radiotherapy-technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  //* extension[technique][=].valueCodeableConcept[=].coding[+] = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc" //violates mCODE invariant
* extension[modalityAndTechnique][+]
  * extension[modality].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][+].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"

// Prescription Target Site "Left Breast"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
  * extension[totalDose].valueQuantity.value = 5000
  * extension[fractions].valuePositiveInt = 25
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[totalDose].valueQuantity.value = 6000
  * extension[fractions].valuePositiveInt = 30
// Prescription Target Site "Right Breast"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
  * extension[totalDose].valueQuantity.value = 5000
  * extension[fractions].valuePositiveInt = 25
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "Bilateral Breast"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.111.101"
* status = #active
* subject = Reference(Patient-101)
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* reasonReference = Reference(Diagnosis-101-Breast)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#51440002	"Right and left (qualifier value)"
* note.text = "Free text note in Radiotherapy Course Prescription"

// --- Phase Prescriptions ---------------------------------------------------------------------------------

Instance: RadiotherapyPhasePrescription-101-RTTD-LeftBreastTang
InstanceOf: RadiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyPhasePrescription-101-RTTD-LeftBreastTang" //id of the FHIR Resource
* meta.profile = Canonical(RadiotherapyPhasePrescription)
* extension[modalityAndTechnique][+]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"

* extension[radiotherapyFractionsPrescribed].valuePositiveInt = 25
// Prescription Target Site "Left Breast"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 5000
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 5000
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Left Breast Tangents"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.101"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #active
* subject = Reference(Patient-101)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* note.text = "Free text note in Radiotherapy Phase Prescription"


Instance: RadiotherapyPhasePrescription-102-RTTD-LeftBreastBoost
InstanceOf: RadiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyPhasePrescription-102-RTTD-LeftBreastBoost" //id of the FHIR Resource
* meta.profile = Canonical(RadiotherapyPhasePrescription)
* extension[modalityAndTechnique][0]
  * extension[modality].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapyFractionsPrescribed].valuePositiveInt = 5
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 1000
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Left Breast Boost"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.102"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #active
* subject = Reference(Patient-101)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* note.text = "Free text note in Radiotherapy Phase Prescription"


Instance: RadiotherapyPhasePrescription-103-RTTD-RightBreastTang
InstanceOf: RadiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
* meta.profile = Canonical(RadiotherapyPhasePrescription)
* extension[modalityAndTechnique][0]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapyFractionsPrescribed].valuePositiveInt = 25
// Prescription Target Site "Right Breast"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
  * extension[fractionDose].valueQuantity.value = 200
  * extension[totalDose].valueQuantity.value = 5000
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Right Breast Tangents"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.103"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #active
* subject = Reference(Patient-101)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#24028007 "Right (qualifier value)"
* note.text = "Free text note in Radiotherapy Phase Prescription"

// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapyCourseSummary-101-RTTD-BilateralBreast
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex RTTD collection, 'Bilateral Breast'."
Usage: #example
// * id = "RadiotherapyCourseSummary-101-BilateralBreast" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[+] = Canonical(RadiotherapyCourseSummary) // "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyCourseSummary"
* meta.profile[+] = $mCODERadiotherapyCourseSummary // "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[treatmentIntent].valueCodeableConcept.text = "Curative"
* extension[modalityAndTechnique][0]
  * extension[modality].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"

// Prescription Target Site "Left Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
  * extension[totalDoseDelivered].valueQuantity.value = 5000
  * extension[fractionsDelivered].valueUnsignedInt = 25
  * extension[uniformFractionation].valueBoolean = true
// Prescription Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[totalDoseDelivered].valueQuantity.value = 6000
  * extension[fractionsDelivered].valueUnsignedInt = 30
  * extension[uniformFractionation].valueBoolean = false
// Prescription Target Site "Right Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
  * extension[totalDoseDelivered].valueQuantity.value = 5000
  * extension[fractionsDelivered].valueUnsignedInt = 25
  * extension[uniformFractionation].valueBoolean = true
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "Bilateral Breast"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.555.101"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* reasonReference = Reference(Diagnosis-101-Breast)
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#51440002	"Right and left (qualifier value)"

// --- Treated Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyTreatedPhase-101-LeftBreastTang
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyTreatedPhase-101-LeftBreastTang" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][0]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 25
// Prescription Target Site "Left Breast"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
  * extension[totalDoseDelivered].valueQuantity.value = 5000
// Prescription Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[totalDoseDelivered].valueQuantity.value = 5000
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Left Breast Tangents"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.556.101"
* basedOn = Reference(RadiotherapyPhasePrescription-101-RTTD-LeftBreastTang)
* partOf = Reference(RadiotherapyCourseSummary-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyTreatedPhase-102-LeftBreastBoost
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
// * id = "RadiotherapyTreatedPhase-102-RTTD-LeftBreastBoost" //id of the FHIR Resource -- unnecessary
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][0]
  * extension[modality].valueCodeableConcept = SCT#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 5
// Prescription Target Site "Left Breast Boost"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[totalDoseDelivered].valueQuantity.value = 1000
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Left Breast Boost"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.557.101"
* basedOn = Reference(RadiotherapyPhasePrescription-102-RTTD-LeftBreastBoost)
* partOf = Reference(RadiotherapyCourseSummary-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#7771000 "Left (qualifier value)"

Instance: RadiotherapyTreatedPhase-103-RightBreastTang
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex RTTDcollection."
Usage: #example
// * id = "RadiotherapyTreatedPhase-103-RightBreastTang" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][0]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 25
// Prescription Target Site "Right Breast"
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-103-RightBreast)
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity.value = 5000
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Right Breast Tangents"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.558.101"
* basedOn = Reference(RadiotherapyPhasePrescription-103-RTTD-RightBreastTang)
* partOf = Reference(RadiotherapyCourseSummary-101-RTTD-BilateralBreast)
* status = #completed
* subject = Reference(Patient-101)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)"
* bodySite.extension[lateralityQualifier].valueCodeableConcept = SCT#24028007 "Right (qualifier value)"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-101-LeftBreast
InstanceOf: RadiotherapyVolume
Description: "Example target volume 'Left Breast'."
Usage: #example
* id = "RadiotherapyVolume-101-LeftBreast" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Left Breast" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.101" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-101)

Instance: RadiotherapyVolume-102-LeftBreastBoost
InstanceOf: RadiotherapyVolume
Description: "Example target volume 'Left Breast Boost'."
Usage: #example
* id = "RadiotherapyVolume-102-LeftBreastBoost" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Left Breast Boost" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.102" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#7771000 "Left (qualifier value)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-101)

Instance: RadiotherapyVolume-103-RightBreast
InstanceOf: RadiotherapyVolume
Description: "Example target volume 'Right Breast'."
Usage: #example
* id = "RadiotherapyVolume-103-RightBreast" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Right Breast" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.103" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)"
* locationQualifier[+] = SCT#24028007 "Right (qualifier value)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-101)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-101
InstanceOf: $mCODECancerPatient
Title: "Example Female Patient 101"
Description: "An example female patient to relate radiotherapy resources to."
Usage: #example
* meta.security = ActReason#HTEST
* meta.profile[+] = $mCODECancerPatient
* meta.profile[+] = USCorePatient
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
Title: "Example Diagnosis 101 Breast"
Description: "An example diagnosis for a breast case for Patient-101."
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
