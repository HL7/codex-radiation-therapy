Profile: RadiotherapyPlannedCourseSummary
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-course-summary
Title: "Radiotherapy Planned Course Summary"
Description: "Planned Course Summary is the summary of all Radiotherapy Plans to deliver a complete Course."
* ^status = #draft
* insert RadiotherapyRequestCommon
* extension contains
    $mCODEProcedureIntent named treatment-intent 0..1 MS and
    $mCODERadiotherapySessions named radiotherapy-sessions 0..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapy-dose-planned-to-volume 0..* MS
* extension[radiotherapy-dose-planned-to-volume]
  * extension[fractionDosePlanned] 0..0
  * extension[fractionDosePlanned] ^short = "Not used in this profile. See Planned Phase for detailed Fractionation."
  * extension[fractionDosePlanned] ^definition = "Fraction dose is not defined in the Planned Course Summary because dose may not be equal in all Fractions in which this volume receives dose."
* code = RadiotherapyRequest#radiotherapy-planned-course-summary "Radiotherapy Planned Course Summary"
* occurrencePeriod only Period
* occurrencePeriod MS
