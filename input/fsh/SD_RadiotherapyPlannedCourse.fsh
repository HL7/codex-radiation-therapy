Profile: RadiotherapyPlannedCourse
Parent: ServiceRequest
Id: codexrt-radiotherapy-planned-course
Title: "Radiotherapy Planned Course"
Description: "A Radiotherapy Planned Course covers all Radiotherapy Plans to deliver a complete Course."
* ^status = #draft
* insert RadiotherapyPlansCommon
* insert ModalityAndTechniqueZeroToMany
* extension contains
    $mCODEProcedureIntent named treatmentIntent 0..1 MS and
    $mCODERadiotherapySessions named radiotherapySessions 0..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapyDosePlannedToVolume 0..* MS
* extension[radiotherapyDosePlannedToVolume]
  * extension[fractionDose] ^short = "Not used in this profile. See Planned Phase for detailed Fractionation."
  * extension[fractionDose] ^definition = "Fraction dose is not defined in the Planned Course because dose may not be equal in all Fractions in which this volume receives dose."
  * extension[fractionDose] 0..0
* code = $mCODESCT_TBD#USCRS-33529 "Radiotherapy Course of Treatment (regime/therapy)"
* occurrencePeriod only Period
* occurrencePeriod MS
* insert BasedOnSlicing
* basedOn contains
    course-prescription 0..1 MS
* basedOn[course-prescription] ^short = "RadiotherapyCoursePrescription that this RadiotherapyPlannedCourse fulfills."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)