Profile: RadiotherapyPlannedCourse
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-course
Title: "Radiotherapy Planned Course"
Description: "A Radiotherapy Planned Course covers all radiotherapy plans to deliver a complete course."
* ^status = #draft
* insert ModalityAndTechniqueZeroToMany
* extension contains
    $mCODEProcedureIntent named treatmentIntent 0..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapyDosePlannedToVolume 0..* MS
* insert RadiotherapyPlansCommon
* extension[radiotherapyDosePlannedToVolume]
  * extension[fractionDose] ^short = "Not used in this profile. See Planned Phase for detailed fractionation."
  * extension[fractionDose] ^definition = "Fraction dose is not defined in the Planned Course because dose may not be equal in all fractions in which this volume receives dose."
  * extension[fractionDose] 0..0
* code = SCT#1217123003 "Radiotherapy course of treatment (regime/therapy)"
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    course-prescription 0..1 MS
* basedOn[course-prescription] ^short = "Radiotherapy Course Prescription that this Radiotherapy Planned Course fulfills."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* replaces only Reference(RadiotherapyPlannedCourse)