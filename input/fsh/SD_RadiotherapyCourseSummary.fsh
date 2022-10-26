Profile: RadiotherapyCourseSummary
Parent: $mCODERadiotherapyCourseSummary
Id: codexrt-radiotherapy-course-summary
Title: "Radiotherapy Course Summary"
Description: "A summary of the treatment progress in a radiotherapy course.
Whenever new contributions in the scope of the same course are delivered, this resource is updated (no new resource created)."
* insert RadiotherapyProcedureCommon
* obeys codexrt-procedure-status
* insert ModalityAndTechniqueExtensions
* extension[doseDeliveredToVolume].extension contains
    UniformFractionation named uniformFractionation 1..1 MS
* insert BasedOnSlicing
* basedOn contains
    planned-course 0..1 MS and
    course-prescription 0..1 MS
* basedOn[course-prescription] ^short = "Radiotherapy Course Prescription that prescribed the treatment summarized in this Radiotherapy Course Summary."
* basedOn[planned-course] ^short = "Radiotherapy Planned Course that planned the treatment summarized in this Radiotherapy Course Summary."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* basedOn[planned-course] only Reference(RadiotherapyPlannedCourse)


// Not all values from http://hl7.org/fhir/ValueSet/event-status are expected for radiotherapy summary procedures.
// preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown
Invariant:  codexrt-procedure-status
Description: "Only the following status values are supported: in-progress | not-done | on-hold | stopped | completed"
Expression: "status = 'in-progress' or status = 'not-done' or status = 'on-hold' or status = 'stopped' or status = 'completed'"
Severity:   #error
