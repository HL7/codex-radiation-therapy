
Profile: RadiotherapyPhasePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-phase-prescription
Title: "Radiotherapy Phase Prescription"
Description: "A Radiotherapy Phase Prescription is a request for one series of fractionated treatments using radiotherapy.
It can define treatment parameters such as modality or technique, and prescribe dose to multiple targets."
* insert RadiotherapyPhaseAndPlanPrescriptionCommon
* code = SCT#1222565005 "Radiotherapy treatment phase (regime/therapy)"
// * insert BasedOnSlicing
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    course-prescription 0..1 MS
* basedOn[course-prescription] ^short = "Radiotherapy Course Prescription that this Radiotherapy Phase Prescription fulfills."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* replaces only Reference(RadiotherapyPhasePrescription)
