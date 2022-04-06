Profile: RadiotherapyCoursePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-course-prescription
Title: "Radiotherapy Course Cumulative Prescription"
Description: "A Radiotherapy Course Prescription is a high-level request for a complete Course of Radiotherapy, which may be fulfilled by one or more Phases."
* ^status = #draft
* insert RadiotherapyPrescriptionsCommon
* extension contains
    $mCODEProcedureIntent named treatment-intent 0..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume]
  * extension[fractionDose] 0..0
  * extension[fractionDose] ^short = "Not used in this profile. See Phase Prescriptions for detailed Fractionation."
  * extension[fractionDose] ^definition = "Fraction dose is not defined in the Course Prescription because dose may not be equal in all Fractions in which this volume receives dose."
* occurrencePeriod only Period
* occurrencePeriod MS
* code = SCT#1217123003 "Radiotherapy course of treatment (regime/therapy)"