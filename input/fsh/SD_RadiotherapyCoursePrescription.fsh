Profile: RadiotherapyCoursePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-course-prescription
Title: "Radiotherapy Course Prescription"
Description: "Radiotherapy Course Prescription is the high-level request for Radiotherapy that may be fulfilled by one or multiple Phases.
Usually, the Course addresses one disease and anatomical treatment site and covers the whole treatment of that site."
* ^status = #draft
* insert RadiotherapyRequestCommon
* extension contains
    $mCODEProcedureIntent named treatment-intent 0..1 MS and
    $mCODERadiotherapySessions named radiotherapy-sessions 0..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume]
  * extension[fractionDosePrescribed] 0..0
  * extension[fractionDosePrescribed] ^short = "Not used in this profile. See Phase Prescriptions for detailed Fractionation."
  * extension[fractionDosePrescribed] ^definition = "Fraction dose is not defined in the Course Prescription because dose may not be equal in all Fractions in which this volume receives dose."
* code = RadiotherapyRequest#radiotherapy-course-prescription "Radiotherapy Course Prescription"
* occurrencePeriod only Period
* occurrencePeriod MS
