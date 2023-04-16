Profile: RadiotherapyTreatmentPlan
Parent: ServiceRequest
Id: codexrt-radiotherapy-treatment-plan
Title: "Radiotherapy Treatment Plan"
Description: "A Radiotherapy Treatment Plan resource describes the radiotherapy treatment that is planned to be delivered with a single treatment plan."
* ^status = #draft
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* code = SCT#1255724003 "Radiotherapy treatment plan (regime/therapy)"
* extension contains
    DicomReference named radiotherapyDicomPlan 0..1
* extension[radiotherapyDicomPlan] ^short = "DICOM Treatment Plan"
* extension[radiotherapyDicomPlan] ^definition = "Reference to a DICOM SOP instance representing a treatment plan such as RT Plan or RT Ion Plan."
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    plan-prescription 0..1 MS and
    planned-phase 0..1 MS and
    planned-course 0..1 MS
* basedOn[plan-prescription] ^short = "Radiotherapy Plan Prescription that this Treatment Plan fulfills."
* basedOn[planned-course] ^short = "Radiotherapy Planned Course that this Treatment Plan fulfills (in most cases together with other treatment plans)."
* basedOn[planned-phase] ^short = "Radiotherapy Planned Phase that this Treatment Plan fulfills (in most cases together with other treatment plans)."
* basedOn[plan-prescription] only Reference(RadiotherapyPlanPrescription)
* basedOn[planned-course] only Reference(RadiotherapyPlannedCourse)
* basedOn[planned-phase] only Reference(RadiotherapyPlannedPhase)
* replaces MS
* replaces ^short = "Previous retired plan that is replaced by this plan"
* replaces only Reference(RadiotherapyTreatmentPlan)
