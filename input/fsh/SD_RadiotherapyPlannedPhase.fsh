

Profile: RadiotherapyPlannedPhase
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-phase
Title: "Radiotherapy Planned Phase"
Description: "A Radiotherapy Planned Phase is the summary over all Radiotherapy Plans to deliver a single Phase of Radiotherapy treatment."
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* ^status = #draft
* code = SnomedRequestedCS#USCRS-33527 "Radiotherapy Treatment Phase (therapy/regime)"
* basedOn MS
* basedOn ^short = "RadiotherapyPhasePrescription that this PlannedPhase fills,  or RadiotherapyPlannedCourse that this PlannedPhase elaborates"
* basedOn only Reference(RadiotherapyPhasePrescription or RadiotherapyPlannedCourse)
