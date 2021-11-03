//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Profile: RadiotherapyCourseSummary
Parent: MCodeCourseSummary
Id: codex-radiotherapy-course-summary
Title: "Radiotherapy Course Summary"
Description: "A Summary of the Treatment Progress in a Radiotherapy Course. 
Whenever new contributions in the scope of the same Course are delivered, this resource is updated (no new resource created)."
* obeys xrts-procedure-status
* basedOn MS
* basedOn ^short = "Should Reference a http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codex-radiotherapy-course-prescription" //only Reference(RadiotherapyCoursePrescription)
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date is expected if the status is 'stopped' or 'completed'"

// Not all values from http://hl7.org/fhir/ValueSet/event-status are expected for Radiotherapy Summaries
// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
Invariant:  xrts-procedure-status
Description: "Only the following status values are supported for Radiotherapy Summaries: in-progress | not-done | on-hold | stopped | completed"
Expression: "status = 'preparation' or status = 'in-progress' or status = 'not-done' or status = 'on-hold' or status = 'stopped' or status = 'completed'"
//TODO Period.start when delivered or planned to be delivered. If status preparation then start date must be in the future or still undefined.
Severity:   #error

// -------- Example Instances ---------------------------------------------------------

Instance: RadiotherapyCourseSummary-04-Prostate
InstanceOf: RadiotherapyCourseSummary
Description: "Treatment Summary over Radiotherapy Course with all elements expected in XRTS."
Usage: #example
* id = "RadiotherapyCourseSummary-04-Prostate" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = MCodeCourseSummary
* extension[MCodeProcedureIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"   
* extension[actualNumberOfSessions].valueUnsignedInt = 2
// Target Volume "Prostate"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-03-Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 360 
  * extension[fractionsDelivered].valueUnsignedInt = 2 
// Target Volume "Pelv Ns"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-04-PelvNs"
  * extension[totalDoseDelivered].valueQuantity.value = 360 
  * extension[fractionsDelivered].valueUnsignedInt = 2 
// Target Volume "Sem Vs"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-05-SemVs"
  * extension[totalDoseDelivered].valueQuantity.value = 360 
  * extension[fractionsDelivered].valueUnsignedInt = 2 
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
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // "Body site that is treated with Radiotherapy"
* bodySite.text = "Prostate"
