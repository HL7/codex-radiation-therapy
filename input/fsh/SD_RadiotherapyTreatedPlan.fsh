Profile:  RadiotherapyTreatedPlan
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-plan
Title: "Radiotherapy Treated Plan"
Description: "A summary of Radiotherapy treatment delivered with a single Radiotherapy Treatment Plan."
* insert RadiotherapyTreatedPhaseAndPlanCommon
* ^status = #draft
* extension contains
    DicomReference named radiotherapy-dicom-record 0..*
* basedOn ^short = "Should Reference a Radiotherapy Treatment Plan" // http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan" // only Reference(RadiotherapyTreatmentPlan)
* partOf only Reference(RadiotherapyTreatedPhase or RadiotherapyCourseSummary)
* partOf ^definition = "The partOf element, if present, MUST reference an mCODE RadiotherapyCourseSummary-conforming Procedure resource."
* code = SnomedRequestedCS#USCRS-33951 "Radiotherapy Treatment Plan (therapy/regime)"
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered with this plan in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this plan, not including dose from any other plan."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of delivered fractions of this treatment plan."
* extension[radiotherapy-dicom-record] ^short = "DICOM Treatment Record"
* extension[radiotherapy-dicom-record] ^definition = "Reference to a DICOM SOP instances representing a treatment records such as RT Beams Treatment Record or RT Ion Beams Treatment Record. One or more treatment records are expected from each treatment sessions."
