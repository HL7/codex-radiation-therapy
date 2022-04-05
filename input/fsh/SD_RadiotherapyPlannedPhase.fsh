

Profile: RadiotherapyPlannedPhase
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-phase
Title: "Radiotherapy Planned Phase"
Description: "A Radiotherapy Planned Phase is the summary over all Radiotherapy Plans to deliver a sigle Phase of Radiotherapy treatment."
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* ^status = #draft
* code = SnomedRequestedCS#USCRS-33527 "Radiotherapy Treatment Phase"
* intent = #filler-order
* basedOn ^short = "Should Reference a Radiotherapy Phase Prescription and the Radiotherapy Planned Course to which this Phase belongs."
