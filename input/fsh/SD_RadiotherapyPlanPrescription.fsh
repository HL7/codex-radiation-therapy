
Profile: RadiotherapyPlanPrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-plan-prescription
Title: "Radiotherapy Plan Prescription"
Description: "A Radioherapy Plan Prescription is a request for Radiotherapy treatment with a single Radiotherapy Treamtent Plan."
* insert RadiotherapyPhaseAndPlanPrescriptionCommon
* code = SnomedRequestedCS#USCRS-34602 "Radiotherapy Treatment Plan (therapy/regime)"
* insert BasedOnSlicing
* basedOn contains
    course-prescription 0..1 MS and
    phase-prescription 0..1 MS
* basedOn[course-prescription] ^short = "RadiotherapyCoursePrescription that this RadiotherapyPlanPrescription fulfills (often together with other treatment phases)."
* basedOn[phase-prescription] ^short = "RadiotherapyPhasePrescription that this RadiotherapyPlanPrescription fulfills (often together with other treatment phases)."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* basedOn[phase-prescription] only Reference(RadiotherapyPhasePrescription)
* replaces only Reference(RadiotherapyPlanPrescription)