

Profile: RadiotherapyPlannedPhase
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-phase
Title: "Radiotherapy Planned Phase"
Description: "A Radiotherapy Planned Phase is the summary over all Radiotherapy Plans to deliver a single Phase of Radiotherapy treatment."
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* ^status = #draft
* code = SnomedRequestedCS#USCRS-33527 "Radiotherapy Treatment Phase (therapy/regime)"
* basedOn MS
* insert BasedOnSlicing
* basedOn contains
    planned-course 0..1 and
    phase-prescription 0..1
* basedOn[planned-course] ^short = "RadiotherapyPlannedCourse that this RadiotherapyPlannedPhase fulfills."
* basedOn[phase-prescription] ^short = "RadiotherapyPhasePrescription that this RadiotherapyPlannedPhase fulfills."
* basedOn[planned-course] only Reference(RadiotherapyPlannedCourse)
* basedOn[phase-prescription] only Reference(RadiotherapyPhasePrescription)
