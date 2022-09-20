Profile:  RadiotherapyTreatedPlan
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-plan
Title: "Radiotherapy Treated Plan"
Description: "A summary of Radiotherapy treatment delivered with a single Radiotherapy Treatment Plan."
* insert RadiotherapyTreatedPhaseAndPlanCommon
* ^status = #draft
* extension contains
    DicomReference named radiotherapyDicomRecord 0..*
* basedOn MS
* basedOn ^short = "The request for this procedure"
* basedOn only Reference(RadiotherapyPlanPrescription or RadiotherapyTreatmentPlan)
* partOf only Reference(RadiotherapyTreatedPhase or RadiotherapyCourseSummary)
* partOf ^definition = "The RadiotherapyCourseSummary or RadiotherapyTreatedPhase that this RadiotherapyTreatedPlan is a component of."
* partOf MS
* code = SnomedRequestedCS#USCRS-33951 "Radiotherapy Treatment Plan (therapy/regime)"
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered with this plan in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this plan, not including dose from any other plan."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of delivered fractions of this treatment plan."
* extension[radiotherapyDicomRecord] ^short = "DICOM Treatment Record"
* extension[radiotherapyDicomRecord] ^definition = "Reference to a DICOM SOP instances representing a treatment records such as RT Beams Treatment Record or RT Ion Beams Treatment Record. One or more treatment records are expected from each treatment sessions."
