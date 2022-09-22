Profile: RadiotherapyCourseSummary
Parent: $mCODERadiotherapyCourseSummary
Id: codexrt-radiotherapy-course-summary
Title: "Radiotherapy Course Summary"
Description: "A Summary of the Treatment Progress in a Radiotherapy Course.
Whenever new contributions in the scope of the same Course are delivered, this resource is updated (no new resource created)."
* insert RadiotherapyProcedureCommon
* obeys codexrt-procedure-status
* extension[modalityAndTechnique].extension contains
    RadiotherapyEnergyOrIsotope named radiotherapyEnergyOrIsotope 0..* MS and
    RadiotherapyTreatmentDevice named radiotherapyTreatmentDevice 0..* MS and
    RadiotherapyTreatmentApplicatorType named radiotherapyTreatmentApplicatorType 0..* MS
* extension[doseDeliveredToVolume].extension contains
    UniformFractionation named uniformFractionation 1..1 MS
* basedOn MS
* insert BasedOnSlicing
* basedOn contains
    planned-course 0..1 MS and
    course-prescription 0..1 MS
* basedOn[course-prescription] ^short = "RadiotherapyCoursePrescription that prescribed the treatment summarized in this RadiotherapyCourseSummary."
* basedOn[planned-course] ^short = "RadiotherapyPlannedCourse that planned the treatment summarized in this RadiotherapyCourseSummary."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* basedOn[planned-course] only Reference(RadiotherapyPlannedCourse)


// Not all values from http://hl7.org/fhir/ValueSet/event-status are expected for Radiotherapy Summaries
// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
Invariant:  codexrt-procedure-status
Description: "Only the following status values are supported for Radiotherapy Summaries: in-progress | not-done | on-hold | stopped | completed"
Expression: "status = 'in-progress' or status = 'not-done' or status = 'on-hold' or status = 'stopped' or status = 'completed'"
Severity:   #error
