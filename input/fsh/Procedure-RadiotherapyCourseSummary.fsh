//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Profile: RadiotherapyCourseSummary
Parent: http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary
Id: RadiotherapyCourseSummary
Title: "Radiotherapy Course Summary"
Description: "A Summary of the Treatment Progress in a Radiotherapy Course. 
Whenever new contributions in the scope of the same Course are delivered, this resource is updated (no new resource created)."
* obeys xrts-procedure-status
* basedOn MS
* basedOn ^short = "Should Reference a https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyCoursePrescription" //only Reference(RadiotherapyCoursePrescription)
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date is expected if the status is 'stopped' or 'completed'"

// Not all values from http://hl7.org/fhir/ValueSet/event-status are expected for Radiotherapy Summaries
// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
Invariant:  xrts-procedure-status
Description: "Only the following status values are supported for Radiotherapy Summaries: in-progress | not-done | on-hold | stopped | completed"
Expression: "status = 'in-progress' or status = 'not-done' or status = 'on-hold' or status = 'stopped' or status = 'completed'"
Severity:   #error

// -------- Example Instances ---------------------------------------------------------

Instance: RadiotherapyCourseSummary-04-XRTS-Prostate
InstanceOf: RadiotherapyCourseSummary
Description: "Treatment Summary over Radiotherapy Course with all elements expected in XRTS."
Usage: #example
* id = "RadiotherapyCourseSummary-04-XRTS-Prostate" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[0] = "https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyCourseSummary"
* meta.profile[1] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-intent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-intent].valueCodeableConcept.text = "Curative"   
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions].valueUnsignedInt = 2
// Target Volume "Prostate"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-03-Prostate"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[totalDoseDelivered].valueQuantity.value = 360 
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][0].extension[fractionsDelivered].valueUnsignedInt = 2 
// Target Volume "Pelv Ns"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-04-PelvNs"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[totalDoseDelivered].valueQuantity.value = 360 
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][1].extension[fractionsDelivered].valueUnsignedInt = 2 
// Target Volume "Sem Vs"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-05-SemVs"
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[totalDoseDelivered].valueQuantity.value = 360 
* extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume][2].extension[fractionsDelivered].valueUnsignedInt = 2 
* identifier.use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
* identifier.system = "http://varian.com/fhir/identifier/radiotherapyCourseId" //Use same id as for Course
* identifier.value = "Prostate-2Phases"
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
