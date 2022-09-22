Profile:  RadiotherapyTreatedPhase
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-phase
Title: "Radiotherapy Treated Phase"
Description: "A summary of a phase of radiotherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions.  A phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same treatment volume or volumes. Because of their spatial relationship or the technique used,  all treatment volumes do not necessarily receive the same total dose during a phase."
* insert RadiotherapyTreatedPhaseAndPlanCommon
* ^status = #draft
* code = SnomedRequestedCS#USCRS-33527 "Radiotherapy Treatment Phase (therapy/regime)"
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this phase, not including dose from any other phase. For summary over multiple phases, see Radiotherapy Course Summary."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered during this phase."
* basedOn MS
* insert BasedOnSlicing
* basedOn contains
    planned-phase 0..1 and
    phase-prescription 0..1
* basedOn[planned-phase] ^short = "RadiotherapyPlannedPhase that planned the treatment summarized in this RadiotherapyTreatedPhase."
* basedOn[phase-prescription] ^short = "RadiotherapyPhasePrescription that prescribed the treatment summarized in this RadiotherapyTreatedPhase."
* basedOn[planned-phase] only Reference(RadiotherapyPlannedPhase)
* basedOn[phase-prescription] only Reference(RadiotherapyPhasePrescription)
* partOf MS
* insert PartOfSlicing
* partOf contains
    course-summary 0..1
* partOf[course-summary] ^short = "RadiotherapyCourseSummary that summarizes the Course of which this RadiotherapyTreatedPhase is a part."
* partOf[course-summary] only Reference(RadiotherapyCourseSummary)
