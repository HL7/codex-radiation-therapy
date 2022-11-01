

Profile: RadiotherapyPlannedPhase
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-phase
Title: "Radiotherapy Planned Phase"
Description: "A Radiotherapy Planned Phase is the summary over all radiotherapy plans to deliver a single phase of radiotherapy treatment."
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* ^status = #draft
* code = SCT#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    planned-course 0..1 MS and
    phase-prescription 0..1 MS
* basedOn[planned-course] ^short = "Radiotherapy Planned Course that this Radiotherapy Planned Phase fulfills."
* basedOn[phase-prescription] ^short = "Radiotherapy Phase Prescription that this Radiotherapy Planned Phase fulfills."
* basedOn[planned-course] only Reference(RadiotherapyPlannedCourse)
* basedOn[phase-prescription] only Reference(RadiotherapyPhasePrescription)
* replaces MS
* replaces ^short = "Previous retired phase that is replaced by this phase"
* replaces only Reference(RadiotherapyPlannedPhase)
* performer only Reference(RadiotherapyTreatmentDevice or RadiotherapySeedDevice)
* performer MS
* performer ^short = "RadiotherapyTreatment or Seed Devices used as part of therapy."