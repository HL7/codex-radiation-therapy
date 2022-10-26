

Profile: RadiotherapyPlannedPhase
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-phase
Title: "Radiotherapy Planned Phase"
Description: "A Radiotherapy Planned Phase is the summary over all Radiotherapy Plans to deliver a single Phase of Radiotherapy treatment."
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* ^status = #draft
* code = SCT#1222565005 "Radiotherapy treatment phase (therapy/regime)"
* insert BasedOnSlicing
* basedOn contains
    planned-course 0..1 MS and
    phase-prescription 0..1 MS
* basedOn[planned-course] ^short = "RadiotherapyPlannedCourse that this RadiotherapyPlannedPhase fulfills."
* basedOn[phase-prescription] ^short = "RadiotherapyPhasePrescription that this RadiotherapyPlannedPhase fulfills."
* basedOn[planned-course] only Reference(RadiotherapyPlannedCourse)
* basedOn[phase-prescription] only Reference(RadiotherapyPhasePrescription)
* replaces MS
* replaces ^short = "Previous retired phase that is replaced by this phase"
* replaces only Reference(RadiotherapyPlannedPhase)