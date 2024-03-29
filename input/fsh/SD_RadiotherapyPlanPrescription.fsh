
Profile: RadiotherapyPlanPrescription
Parent: $ServiceRequest
Id: codexrt-radiotherapy-plan-prescription
Title: "Radiotherapy Plan Prescription"
Description: "A Radiotherapy Plan Prescription is a request for radiotherapy treatment with a single treatment plan."
* insert RadiotherapyPhaseAndPlanPrescriptionCommon
* code = SCT#1255724003 "Radiotherapy treatment plan (regime/therapy)"
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    course-prescription 0..1 MS and
    phase-prescription 0..1 MS
* basedOn[course-prescription] ^short = "Radiotherapy Course Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases)."
* basedOn[phase-prescription] ^short = "Radiotherapy Phase Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases)."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* basedOn[phase-prescription] only Reference(RadiotherapyPhasePrescription)
* replaces only Reference(RadiotherapyPlanPrescription)
