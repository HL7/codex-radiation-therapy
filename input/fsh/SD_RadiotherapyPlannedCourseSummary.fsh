Profile: RadiotherapyPlannedCourse
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-course
Title: "Radiotherapy Planned Course"
Description: "A Radiotherapy Planned Course covers all Radiotherapy Plans to deliver a complete Course."
* ^status = #draft
* insert RadiotherapyRequestCommon
* extension contains
    $mCODEProcedureIntent named treatment-intent 0..1 MS and
    $mCODERadiotherapySessions named radiotherapy-sessions 0..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapy-dose-planned-to-volume 0..* MS
* extension[radiotherapy-dose-planned-to-volume]
  * extension[fractionDosePlanned] ^short = "Not used in this profile. See Planned Phase for detailed Fractionation."
  * extension[fractionDosePlanned] ^definition = "Fraction dose is not defined in the Planned Course because dose may not be equal in all Fractions in which this volume receives dose."
  * extension[fractionDosePlanned] 0..0
* intent = ReqIntent#filler-order "Filler Order"
* code = RadiotherapyRequest#radiotherapy-planned-course "Radiotherapy Planned Course"
* occurrencePeriod only Period
* occurrencePeriod MS
