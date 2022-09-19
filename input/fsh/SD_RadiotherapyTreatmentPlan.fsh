Profile: RadiotherapyTreatmentPlan
Parent: ServiceRequest
Id: codexrt-radiotherapy-treatment-plan
Title: "Radiotherapy Treatment Plan"
Description: "A Radiotherapy Treatment Plan resource describes the treatment that is planned to be delivered with a single Radiotherapy Treatment Plan."
* ^status = #draft
* insert RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* extension contains
    DicomReference named radiotherapyDicomPlan 0..1
* extension[radiotherapyDicomPlan] ^short = "DICOM Treatment Plan"
* extension[radiotherapyDicomPlan] ^definition = "Reference to a DICOM SOP instance representing a Treatment Plan such as RT Plan or RT Ion Plan."
* basedOn MS
* basedOn ^short = "RadiotherapyPlanPrescription that this TreatmentPlan fills,  or RadiotherapyPlannedPhase or RadiotherapyPlannedCourse that this TreatmentPlan elaborates"
* basedOn only Reference(RadiotherapyPlanPrescription or RadiotherapyPlannedPhase or RadiotherapyPlannedCourse)
* code = SnomedRequestedCS#USCRS-33951 "Radiotherapy Treatment Plan (therapy/regime)"
