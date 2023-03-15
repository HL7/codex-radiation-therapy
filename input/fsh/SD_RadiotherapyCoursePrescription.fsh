Profile: RadiotherapyCoursePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-course-prescription
Title: "Radiotherapy Course Prescription"
Description: "A Radiotherapy Course Prescription is a high-level request for a complete course of radiotherapy, which may be fulfilled by one or more phases."
* ^status = #draft
* insert RadiotherapyPrescriptionsCommon
* insert ModalityAndTechniqueZeroToMany
* extension contains
    $mCODEProcedureIntent named treatmentIntent 0..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapyDosePrescribedToVolume 0..* MS and
    CourseInvolvesReirradiation named courseInvolvesReirradiation 0..1 MS
* extension[radiotherapyDosePrescribedToVolume]
  * extension[fractionDose] 0..0
  * extension[fractionDose] ^short = "Not used in this profile. See Radiotherapy Phase Prescriptions for detailed fractionation."
  * extension[fractionDose] ^definition = "Fraction dose is not defined in the Radiotherapy Course Prescription because dose may not be equal in all fractions in which this volume receives dose."
* code = SCT#1217123003 "Radiotherapy course of treatment (regime/therapy)"
* replaces only Reference(RadiotherapyCoursePrescription)
