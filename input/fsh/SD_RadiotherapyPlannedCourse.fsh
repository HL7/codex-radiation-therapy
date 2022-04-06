Profile: RadiotherapyPlannedCourse
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-course
Title: "Radiotherapy Planned Course"
Description: "A Radiotherapy Planned Course covers all Radiotherapy Plans to deliver a complete Course."
* ^status = #draft
* insert RadiotherapyPlansCommon
* extension contains
    $mCODEProcedureIntent named treatment-intent 0..1 MS and
    $mCODERadiotherapySessions named radiotherapy-sessions 0..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapy-dose-planned-to-volume 0..* MS
* extension[radiotherapy-dose-planned-to-volume]
  * extension[fractionDose] ^short = "Not used in this profile. See Planned Phase for detailed Fractionation."
  * extension[fractionDose] ^definition = "Fraction dose is not defined in the Planned Course because dose may not be equal in all Fractions in which this volume receives dose."
  * extension[fractionDose] 0..0
* basedOn ^short = "Should Reference a Radiotherapy Course Prescription"
* code = $mCODESCT_TBD#USCRS-33529 "Radiotherapy Course of Treatment (regime/therapy)"
* occurrencePeriod only Period
* occurrencePeriod MS
