Profile:  RadiotherapyTreatedPhase
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-phase
Title: "Radiotherapy Treated Phase"
Description: "A summary of a phase of radiotherapy treatment that has been delivered. A phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same treatment volume or volumes. Because of their spatial relationship or the technique used, all treatment volumes do not necessarily receive the same total dose during a phase."
* insert RadiotherapyTreatedPhaseAndPlanCommon
* ^status = #draft
* code = SCT#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this phase, not including dose from any other phase. For summary over multiple phases, see Radiotherapy Course Summary."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered during this phase."
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    planned-phase 0..1 MS and
    phase-prescription 0..1 MS
* basedOn[planned-phase] ^short = "Radiotherapy Planned Phase that planned the treatment summarized in this Radiotherapy Treated Phase."
* basedOn[phase-prescription] ^short = "Radiotherapy Phase Prescription that prescribed the treatment summarized in this Radiotherapy Treated Phase."
* basedOn[planned-phase] only Reference(RadiotherapyPlannedPhase)
* basedOn[phase-prescription] only Reference(RadiotherapyPhasePrescription)
* insert OpenProfileBasedSlicing(partOf)
* partOf contains
    course-summary 0..1 MS
* partOf[course-summary] ^short = "Radiotherapy Course Summary that summarizes the course of which this Radiotherapy Treated Phase is a part."
* partOf[course-summary] only Reference(RadiotherapyCourseSummary)
* performer.actor only Reference(RadiotherapyTreatmentDevice or RadiotherapySeedDevice)
* performer MS
* performer ^short = "RadiotherapyTreatment or Seed Devices used as part of therapy."