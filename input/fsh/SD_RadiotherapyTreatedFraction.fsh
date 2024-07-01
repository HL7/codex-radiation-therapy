Profile:  RadiotherapyTreatedFraction
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-fraction
Title: "Radiotherapy Treated Fraction"
Description: "The treatment of a single fraction of a radiotherapy treatment plan."
* obeys codexrt-procedure-status
* insert ModalityAndTechniqueZeroToOne
* extension contains
    $mCODERadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS
* insert RadiotherapyProcedureCommon
* insert BodySiteQualifierAndLaterality
* ^status = #draft
* extension contains
    RadiotherapyFractionNumberInPlan named radiotherapyFractionNumberInPlan 0..1 MS and
    RadiotherapyFractionNumberInPhase named radiotherapyFractionNumberInPhase 0..1 MS and
    DicomReference named radiotherapyDicomRecord 0..*
* code = SnomedRequestedCS#1297069006 "Fractionated dose radiotherapy (procedure)"
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the delivered fraction number in the top-level extension radiotherapyFractionNumberInPlan."
* extension[doseDeliveredToVolume].extension[fractionsDelivered] 0..0
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within this fraction, not including dose from any other fraction."
* extension[radiotherapyFractionNumberInPlan] ^short = "Fraction Number in Plan"
* extension[radiotherapyFractionNumberInPlan] ^definition = "The fraction number that was treated in the plan."
* extension[radiotherapyFractionNumberInPhase] ^short = "Fraction Number in Phase"
* extension[radiotherapyFractionNumberInPhase] ^definition = "The fraction number that was treated in the phase."
* extension[radiotherapyDicomRecord] ^short = "DICOM Treatment Record"
* extension[radiotherapyDicomRecord] ^definition = "Reference to a DICOM SOP instance representing a treatment record such as an RT Beams Treatment Record or an RT Ion Beams Treatment Record. One or more treatment records are expected from each treatment session."
* insert OpenProfileBasedSlicing(basedOn)
* subject only Reference($mCODECancerPatient)   // must reference mCODE Cancer Patient
* basedOn contains
    treatment-plan 0..1 MS and
    planned-phase 0..1 MS
* basedOn[treatment-plan] ^short = "Radiotherapy Treatment Plan that planned the treatment of which one fraction was delivered."
* basedOn[planned-phase] ^short = "Radiotherapy Planned Phase that describes which treatment of which one fraction was delivered."
* basedOn[treatment-plan] only Reference(RadiotherapyTreatmentPlan)
* basedOn[planned-phase] only Reference(RadiotherapyPlannedPhase)
* insert OpenProfileBasedSlicing(partOf)
* partOf contains
    treated-plan 0..1 MS and
    treated-phase 0..1 MS
* partOf[treated-plan] ^short = "Radiotherapy Treated Plan of which this Radiotherapy Treated Fraction is a part."
* partOf[treated-phase] ^short = "Radiotherapy Treated Phase of which this Radiotherapy Treated Fraction is a part."
* partOf[treated-plan] only Reference(RadiotherapyTreatedPlan)
* partOf[treated-phase] only Reference(RadiotherapyTreatedPhase)
* encounter MS
* encounter only Reference(RadiotherapyTreatmentSession)
* bodySite from $mCODERadiotherapyTreatmentLocationVS (extensible)
* bodySite ^short = "All body structure(s) treated with this procedure."
* bodySite ^definition = "Coded body structure(s) treated with this radiotherapy treatment procedure. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."
