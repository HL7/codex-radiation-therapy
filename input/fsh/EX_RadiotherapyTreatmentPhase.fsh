
// -------- Example Instances ---------------------------------------------------------

Instance: TeleradiotherapyTreatmentPhase-05-XRTS-Prostate-Phase1
InstanceOf: TeleradiotherapyTreatmentPhase
Description: "Treatment Summary for first phase"
Usage: #example
* id = "TeleradiotherapyTreatmentPhase-05-XRTS-Prostate-Phase1" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[0] = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyTreatmentPhase"
* meta.profile[1] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-teleradiotherapy-treatment-phase"
* extension[fractionsDelivered].valueUnsignedInt = 2
// Prescription Target Site "Prostate"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-03-Prostate"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[totalDoseDelivered].valueQuantity.value = 360
// Prescription Target Site "Pelv Ns"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-04-PelvNs"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[totalDoseDelivered].valueQuantity.value = 360
// Prescription Target Site "Sem Vs"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-05-SemVs"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[totalDoseDelivered].valueQuantity.value = 360
* identifier.use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
* identifier.system = "http://varian.com/fhir/identifier/radiotherapPrescriptionId"
* identifier.value = "Prostate-Phase1"
* basedOn.reference = "ServiceRequest/TeleradiotherapyPhasePrescription-04-XRTS-Prostate-Phase1"
* basedOn.display = "Prostate-Phase1"
* partOf.reference = "Procedure/RadiotherapyCourseSummary-04-XRTS-Prostate" //Can reference another summary of larger scope
* status = #in-progress
//* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy" //Filled automatically without listing in instance because fixed value in profile.
* subject.reference = "Patient/Patient-6"
* subject.display = "Peter Venkman"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = ICD10#C61.0 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference.reference = "Condition/Diagnosis-2-Prostate" //In ARIA, diagnoses related to Course
* bodySite = SCT#181422007 "Entire prostate" // "Body site that is treated with Radiotherapy"
* bodySite.text = "Prostate"
