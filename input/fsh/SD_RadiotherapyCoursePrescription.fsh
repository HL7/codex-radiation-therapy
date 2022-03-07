Profile: RadiotherapyCoursePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-course-prescription
Title: "Radiotherapy Course Cumulative Prescription"
Description: "A Radiotherapy Course Prescription is a high-level request for a complete Course of Radiotherapy, which may be fulfilled by one or more Phases."
* ^status = #draft
* insert RadiotherapyRequestCommon
* extension contains
    $mCODEProcedureIntent named treatment-intent 0..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume]
  * extension[fractionDosePrescribed] 0..0
  * extension[fractionDosePrescribed] ^short = "Not used in this profile. See Phase Prescriptions for detailed Fractionation."
  * extension[fractionDosePrescribed] ^definition = "Fraction dose is not defined in the Course Prescription because dose may not be equal in all Fractions in which this volume receives dose."
* intent = ReqIntent#original-order "Original Order"
* code = RadiotherapyRequest#radiotherapy-course-prescription "Radiotherapy Course Prescription"
* occurrencePeriod only Period
* occurrencePeriod MS
