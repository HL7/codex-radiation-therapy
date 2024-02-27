Profile:  RadiotherapyTreatedPlan
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-plan
Title: "Radiotherapy Treated Plan"
Description: "A summary of radiotherapy treatment delivered with a single treatment plan."
* insert RadiotherapyTreatedPhaseAndPlanCommon
* ^status = #draft
* extension contains
    DicomReference named radiotherapyDicomRecord 0..*
* code = SCT#1255724003 "Radiotherapy treatment plan (regime/therapy)"
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered with this plan in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this plan, not including dose from any other plan."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of delivered fractions of this treatment plan."
* extension[radiotherapyDicomRecord] ^short = "DICOM Treatment Record"
* extension[radiotherapyDicomRecord] ^definition = "Reference to a DICOM SOP instances representing a treatment records such as RT Beams Treatment Record or RT Ion Beams Treatment Record. One or more treatment records are expected from each treatment sessions."
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    treatment-plan 0..1 MS and
    plan-prescription 0..1 MS
* basedOn[treatment-plan] ^short = "Radiotherapy Treatment Plan that planned the treatment summarized in this Radiotherapy Treated Plan."
* basedOn[plan-prescription] ^short = "Radiotherapy Plan Prescription that prescribed the treatment summarized in this Radiotherapy Treated Plan."
* basedOn[treatment-plan] only Reference(RadiotherapyTreatmentPlan)
* basedOn[plan-prescription] only Reference(RadiotherapyPlanPrescription)
* insert OpenProfileBasedSlicing(partOf)
* partOf contains
    course-summary 0..1 MS and
    treated-phase 0..1 MS
* partOf[course-summary] ^short = "Radiotherapy Course Summary that summarizes the course of which this Radiotherapy Treated Plan is a part."
* partOf[treated-phase] ^short = "Radiotherapy Treated Phase that summarizes the phase of which this Radiotherapy Treated Plan is a part."
* partOf[course-summary] only Reference(RadiotherapyCourseSummary)
* partOf[treated-phase] only Reference(RadiotherapyTreatedPhase)
* insert BodySiteQualifierAndLaterality