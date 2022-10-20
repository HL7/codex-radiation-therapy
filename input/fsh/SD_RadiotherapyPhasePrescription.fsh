
Profile: RadiotherapyPhasePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-phase-prescription
Title: "Radiotherapy Phase Prescription"
Description: "A Radiotherapy Phase Prescription is a request for one series of fractionated treatments using Radiotherapy. It can define treatment parameters such as modality or technique,
and prescribe dose to multiple targets."
* insert RadiotherapyPhaseAndPlanPrescriptionCommon
* code = SCT#1222565005 "Radiotherapy Treatment Plan (regime/therapy)"
* insert BasedOnSlicing
* basedOn contains
    course-prescription 0..1 MS
* basedOn[course-prescription] ^short = "RadiotherapyCoursePrescription that this RadiotherapyPhasePrescription fulfills."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* replaces only Reference(RadiotherapyPhasePrescription)