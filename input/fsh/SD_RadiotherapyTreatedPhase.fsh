Profile:  RadiotherapyTreatedPhase
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treated-phase
Title: "Radiotherapy Treated Phase"
Description: "A summary of a phase of radiotherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions.  A phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same treatment volume or volumes. Because of their spatial relationship or the technique used,  all treatment volumes do not necessarily receive the same total dose during a phase."
* obeys codexrt-procedure-status
* ^status = #draft
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..1 MS and
    RadiotherapyFractionsDelivered named fractionsDelivered 0..1 MS and
    $mCODERadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS
* extension[modalityAndTechnique].extension contains
    RadiotherapyEnergyOrIsotope named radiotherapyEnergyOrIsotope 0..* MS and
    RadiotherapyTreatmentDeviceType named radiotherapyTreatmentDeviceType 0..* MS
* extension[doseDeliveredToVolume].extension[fractionsDelivered] 0..0
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^short = "Not used in this profile."
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this phase, not including dose from any other phase. For summary over multiple phases, see Radiotherapy Course Summary."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered during this phase."
* basedOn MS
* basedOn ^short = "Should Reference a Radiotherapy Planned Phase" // http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotheraphy-phase-prescription" // only Reference(RadiotherapyPhasePrescription)
* partOf MS
* partOf only Reference($mCODERadiotherapyCourseSummary)
* partOf ^definition = "The partOf element, if present, MUST reference an mCODE RadiotherapyCourseSummary-conforming Procedure resource."
* category 1.. MS
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* code = SnomedRequestedCS#USCRS-33527  // Radiotherapy Treatment Phase (therapy/regime)
* subject only Reference($mCODECancerPatient)   // must reference mCODE Cancer Patient
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date should be present if the status is 'stopped' or 'completed'"
* reasonCode MS
* reasonCode from $mCODECancerDisorderVS (extensible)
* bodySite from $mCODERadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "All body structure(s) treated in this phase"
* bodySite ^definition = "Coded body structure(s) treated in this phase of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."
