Profile: RadiotherapyTreatmentPlan
Parent: ServiceRequest
Id: codexrt-radiotherapy-treatment-plan
Title: "Radiotherapy Treatment Plan"
Description: "A Radiotherapy Treatment Plan resource describes the treatment that is planned to be delivered with a single Radiotherapy Treatment Plan."
* ^status = #draft
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* code = SnomedRequestedCS#USCRS-33951 "Radiotherapy Treatment Plan (therapy/regime)"
* extension contains
    DicomReference named radiotherapyDicomPlan 0..1
* extension[radiotherapyDicomPlan] ^short = "DICOM Treatment Plan"
* extension[radiotherapyDicomPlan] ^definition = "Reference to a DICOM SOP instance representing a Treatment Plan such as RT Plan or RT Ion Plan."
* basedOn MS
* insert BasedOnSlicing
* basedOn contains
    plan-prescription 0..1 and
    planned-phase 0..1 and
    planned-course 0..1
* basedOn[plan-prescription] ^short = "RadiotherapyPlanPrescription that this TreatmentPlan fulfills."
* basedOn[planned-course] ^short = "RadiotherapyPlannedCourse that this TreatmentPlan fulfills (in most cases together with other treatment plans)."
* basedOn[planned-phase] ^short = "RadiotherapyPlannedPlannedPhase that this TreatmentPlan fulfills (in most cases together with other treatment plans)."
* basedOn[plan-prescription] only Reference(RadiotherapyPlanPrescription)
* basedOn[planned-course] only Reference(RadiotherapyPlannedCourse)
* basedOn[planned-phase] only Reference(RadiotherapyPlannedPhase)
