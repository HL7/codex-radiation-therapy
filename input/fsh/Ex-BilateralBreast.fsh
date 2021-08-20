
// --- Course Prescription ---------------------------------------------------------------------------------

Instance: RadiotherapyCoursePrescription-101-RTTD-BilateralBreast
InstanceOf: RadiotherapyCoursePrescription
Description: "Radiotherapy Course Prescription example from Codex RTTD collection."
Usage: #example
* id = "RadiotherapyCoursePrescription-101-RTTD-BilateralBreast" //id of the FHIR Resource
* meta.profile = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyCoursePrescription"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-intent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-intent].valueCodeableConcept.text = "Curative"   
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][1].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions].valueUnsignedInt = 30
// Prescription Target Site "Left Breast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-101-LeftBreast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 5000 
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionsPrescribed].valuePositiveInt = 25  
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-102-LeftBreastBoost"
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[totalDosePrescribed].valueQuantity.value = 6000 
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[fractionsPrescribed].valuePositiveInt = 30 
// Prescription Target Site "Right Breast"
* extension[radiotherapy-dose-prescribed-to-volume][2].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-103-RightBreast"
* extension[radiotherapy-dose-prescribed-to-volume][2].extension[totalDosePrescribed].valueQuantity.value = 5000 
* extension[radiotherapy-dose-prescribed-to-volume][2].extension[fractionsPrescribed].valuePositiveInt = 25 
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
* identifier[0].value = "Bilateral Breast"
* identifier[1].system = "urn:dicom:uid"
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.111.101" 
* status = #active
* subject.reference = "Patient/Patient-101"
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* reasonReference.reference = "Condition/Diagnosis-101-Breast" 
* bodySite = SCT#76752008 "Breast structure (body structure)" 
* note.text = "Free text note in Radiotherapy Course Prescription"

// --- Phase Prescriptions ---------------------------------------------------------------------------------

Instance: TeleradiotherapyPhasePrescription-101-RTTD-LeftBreastTangents
InstanceOf: TeleradiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
* id = "TeleradiotherapyPhasePrescription-101-RTTD-LeftBreastTangents" //id of the FHIR Resource
* meta.profile = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyPhasePrescription"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 25
// Prescription Target Site "Left Breast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-101-LeftBreast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionDosePrescribed].valueQuantity.value = 200  
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 5000 
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-102-LeftBreastBoost"
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[fractionDosePrescribed].valueQuantity.value = 200  
* extension[radiotherapy-dose-prescribed-to-volume][1].extension[totalDosePrescribed].valueQuantity.value = 5000 
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
* identifier[0].value = "Left Breast Tangents"
* identifier[1].system = "urn:dicom:uid"
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.101" 
* basedOn.reference = "ServiceRequest/RadiotherapyCoursePrescription-101-RTTD-BilateralBreast" 
* status = #active
* subject.reference = "Patient/Patient-101"
* bodySite = SCT#76752008 "Breast structure (body structure)" 
* note.text = "Free text note in Radiotherapy Phase Prescription"


Instance: TeleradiotherapyPhasePrescription-102-RTTD-LeftBreastBoost
InstanceOf: TeleradiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
* id = "TeleradiotherapyPhasePrescription-102-RTTD-LeftBreastBoost" //id of the FHIR Resource
* meta.profile = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyPhasePrescription"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 5
// Prescription Target Site "Left Breast Boost"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-102-LeftBreastBoost"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionDosePrescribed].valueQuantity.value = 200  
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 1000 
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
* identifier[0].value = "Left Breast Boost"
* identifier[1].system = "urn:dicom:uid"
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.102" 
* basedOn.reference = "ServiceRequest/RadiotherapyCoursePrescription-101-RTTD-BilateralBreast" 
* status = #active
* subject.reference = "Patient/Patient-101"
* bodySite = SCT#76752008 "Breast structure (body structure)" 
* note.text = "Free text note in Radiotherapy Phase Prescription"


Instance: TeleradiotherapyPhasePrescription-103-RTTD-RightBreastTangents
InstanceOf: TeleradiotherapyPhasePrescription
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
* id = "TeleradiotherapyPhasePrescription-103-RTTD-RightBreastTangents" //id of the FHIR Resource
* meta.profile = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyPhasePrescription"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 25
// Prescription Target Site "Right Breast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-103-RightBreast"
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[fractionDosePrescribed].valueQuantity.value = 200  
* extension[radiotherapy-dose-prescribed-to-volume][0].extension[totalDosePrescribed].valueQuantity.value = 5000 
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
* identifier[0].value = "Right Breast Tangents"
* identifier[1].system = "urn:dicom:uid"
* identifier[1].value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.103" 
* basedOn.reference = "ServiceRequest/RadiotherapyCoursePrescription-101-RTTD-BilateralBreast" 
* status = #active
* subject.reference = "Patient/Patient-101"
* bodySite = SCT#76752008 "Breast structure (body structure)" 
* note.text = "Free text note in Radiotherapy Phase Prescription"

// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapyCourseSummary-101-RTTD-BilateralBreast
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex RTTD collection."
Usage: #example
* id = "RadiotherapyCourseSummary-101-RTTD-BilateralBreast" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[0] = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyCourseSummary"
* meta.profile[1] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-intent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-intent].valueCodeableConcept.text = "Curative"   
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][1].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions].valueUnsignedInt = 31
// Prescription Target Site "Left Breast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-101-LeftBreast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[totalDoseDelivered].valueQuantity.value = 5000 
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[fractionsDelivered].valueUnsignedInt = 25  
// Prescription Target Site "Left Breast Boost"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-102-LeftBreastBoost"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[totalDoseDelivered].valueQuantity.value = 6000 
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[fractionsDelivered].valueUnsignedInt = 30 
// Prescription Target Site "Right Breast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-103-RightBreast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[totalDoseDelivered].valueQuantity.value = 5000 
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[fractionsDelivered].valueUnsignedInt = 25 
* identifier.use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
* identifier[0].value = "Bilateral Breast"
* basedOn.reference = "ServiceRequest/RadiotherapyCoursePrescription-101-RTTD-BilateralBreast" 
* status = #completed
* subject.reference = "Patient/Patient-101"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* reasonReference.reference = "Condition/Diagnosis-101-Breast" 
* bodySite = SCT#76752008 "Breast structure (body structure)" 

// --- Phase Summaries ---------------------------------------------------------------------------------

Instance: TeleradiotherapyTreatmentPhase-101-RTTD-LeftBreastTangents
InstanceOf: TeleradiotherapyTreatmentPhase
Description: "Teleradiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* id = "TeleradiotherapyTreatmentPhase-101-RTTD-LeftBreastTangents" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyTreatmentPhase"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-fractions-delivered].valueUnsignedInt = 25
// Prescription Target Site "Left Breast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-101-LeftBreast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[totalDoseDelivered].valueQuantity.value = 5000 
// Prescription Target Site "Left Breast Boost"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-102-LeftBreastBoost"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[totalDoseDelivered].valueQuantity.value = 5000 
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
* identifier[0].value = "Left Breast Tangents"
* basedOn.reference = "ServiceRequest/TeleradiotherapyPhasePrescription-101-RTTD-LeftBreastTangents" 
* partOf.reference = "Procedure/RadiotherapyCourseSummary-101-RTTD-BilateralBreast" 
* status = #completed
* subject.reference = "Patient/Patient-101"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)" 
* note.text = "Free text note in Radiotherapy Phase Prescription"

Instance: TeleradiotherapyTreatmentPhase-102-RTTD-LeftBreastBoost
InstanceOf: TeleradiotherapyTreatmentPhase
Description: "Teleradiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* id = "TeleradiotherapyTreatmentPhase-102-RTTD-LeftBreastBoost" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyTreatmentPhase"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#45643008 "Teleradiotherapy using electrons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-fractions-delivered].valueUnsignedInt = 5
// Prescription Target Site "Left Breast Boost"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-102-LeftBreastBoost"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[totalDoseDelivered].valueQuantity.value = 1000 
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
* identifier[0].value = "Left Breast Boost"
* basedOn.reference = "ServiceRequest/TeleradiotherapyPhasePrescription-102-RTTD-LeftBreastBoost" 
* partOf.reference = "Procedure/RadiotherapyCourseSummary-101-RTTD-BilateralBreast" 
* status = #completed
* subject.reference = "Patient/Patient-101"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* bodySite = SCT#76752008 "Breast structure (body structure)" 

Instance: TeleradiotherapyTreatmentPhase-103-RTTD-RightBreastTangents
InstanceOf: TeleradiotherapyTreatmentPhase
Description: "Teleradiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* id = "TeleradiotherapyTreatmentPhase-103-RTTD-RightBreastTangents" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyTreatmentPhase"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = SCT#1156526006 "Three dimensional external beam radiation therapy (procedure)"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-fractions-delivered].valueUnsignedInt = 25
// Prescription Target Site "Right Breast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-103-RightBreast"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[totalDoseDelivered].valueQuantity.value = 5000 
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
* identifier[0].value = "Right Breast Tangents"
* basedOn.reference = "ServiceRequest/TeleradiotherapyPhasePrescription-103-RTTD-RightBreastTangents" 
* partOf.reference = "Procedure/RadiotherapyCourseSummary-101-RTTD-BilateralBreast" 
* status = #completed
* subject.reference = "Patient/Patient-101"
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
* meta.profile[0] = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyVolume"
* meta.profile[1] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
* identifier[0].value = "Left Breast" // display id
* identifier[1].use = #official
* identifier[1].system = "urn:dicom:uid"
* identifier[1].value = "1.2.246.352.71.10.842421386418.21321.20150602151.101" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)" 
* locationQualifier[0] = SCT#7771000 "Left (qualifier value)" 
* locationQualifier[1] = SCT#255503000 "Entire (qualifier value)" 
* patient.reference = "Patient/Patient-101"

Instance: RadiotherapyVolume-102-LeftBreastBoost
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-102-LeftBreastBoost" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[0] = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyVolume"
* meta.profile[1] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
* identifier[0].value = "Left Breast Boost" // display id
* identifier[1].use = #official
* identifier[1].system = "urn:dicom:uid"
* identifier[1].value = "1.2.246.352.71.10.842421386418.21321.20150602151.102" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)" 
* locationQualifier[0] = SCT#7771000 "Left (qualifier value)" 
* locationQualifier[1] = SCT#255609007 "Partial (qualifier value)"
* patient.reference = "Patient/Patient-101"

Instance: RadiotherapyVolume-103-RightBreast
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-103-RightBreast" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[0] = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyVolume"
* meta.profile[1] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0].use = #usual
* identifier[0].system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
* identifier[0].value = "Right Breast" // display id
* identifier[1].use = #official
* identifier[1].system = "urn:dicom:uid"
* identifier[1].value = "1.2.246.352.71.10.842421386418.21321.20150602151.103" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#76752008 "Breast structure (body structure)" 
* locationQualifier[0] = SCT#24028007 "Right (qualifier value)" 
* locationQualifier[1] = SCT#255503000 "Entire (qualifier value)" 
* patient.reference = "Patient/Patient-101"

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-101
InstanceOf: Patient
Title: "Example Female Patient"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* identifier[0].use = #usual
* identifier[0].type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier[0].system = "http://hospital.smarthealthit.org"
* identifier[0].value = "101101101"
* name[0].use = #usual
* name[0].family = "BilateralBreast"
* name[0].given = "Alice"
* telecom.system = #phone
* telecom.value = "555-555-5555"
* telecom.use = #home
* gender = #female
* birthDate = "1973-07-25"
* address.state = "WI"
* address.country = "USA"
* address.line = "49 Meadow St"
* address.city = "Mounds"
* address.state = "OK"
* address.postalCode = "74047"
* address.country = "US"

// --- Diagnosis ---------------------------------------------------------------------------------

Instance: Diagnosis-101-Breast
InstanceOf: Condition
Title: "Example Diagnosis"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* id = "Diagnosis-101-Breast"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* category = CondCat#problem-list-item
* code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* subject = Reference(Patient/Patient-101)
* onsetDateTime = "2018-03-16"
* asserter = Reference(Practitioner/Practitioner-1005)
