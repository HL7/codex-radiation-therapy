Profile:  RadiotherapyTreatedPlan
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-plan
Title: "Radiotherapy Treated Plan"
Description: "A summary of Radiotherapy treatment delivered with a single Radiotherapy Treatment Plan."
* obeys codexrt-procedure-status
* ^status = #draft
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..1 MS and
    RadiotherapyFractionsDelivered named fractionsDelivered 0..1 MS and
    $mCODERadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS and
    DicomReference named radiotherapy-dicom-record 0..*
* extension[modalityAndTechnique].extension contains
    RadiotherapyEnergyOrIsotope named radiotherapyEnergyOrIsotope 0..* MS and
    RadiotherapyTreatmentDeviceType named radiotherapyTreatmentDeviceType 0..* MS
* extension[doseDeliveredToVolume].extension[fractionsDelivered] 0..0
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^short = "Not used in this profile."
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered with this plan in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this plan, not including dose from any other plan."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of delivered fractions of this treatment plan."
* extension[radiotherapy-dicom-record] ^short = "DICOM Treatment Record"
* extension[radiotherapy-dicom-record] ^definition = "Reference to a DICOM SOP instances representing a treatment records such as RT Beams Treatment Record or RT Ion Beams Treatment Record. One or more treatment records are expected from each treatment sessions."
* basedOn MS
* basedOn ^short = "Should Reference a Radiotherapy Treatment Plan" // http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-plan" // only Reference(RadiotherapyTreatmentPlan)
* partOf MS
* partOf only Reference(RadiotherapyTreatedPhase or RadiotherapyCourseSummary)
* partOf ^definition = "The partOf element, if present, MUST reference an mCODE RadiotherapyCourseSummary-conforming Procedure resource."
* category 1.. MS
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* code = RadiotherapyProcedure#radiotherapy-treated-plan
* subject only Reference($mCODECancerPatient)   // must reference mCODE Cancer Patient
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date should be present if the status is 'stopped' or 'completed'"
* reasonCode MS
* reasonCode from $mCODECancerDisorderVS (extensible)
* bodySite from $mCODERadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "All body structure(s) treated with this plan"
* bodySite ^definition = "Coded body structure(s) treated with this radiotherapy treatment plan. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."
