Invariant:   TG263BED
Description: "Unit must match TG263 BED Regexp"
Expression:  "$this.toString().matches('^(NTCP|BED|EQD2Gy|CGE|TD50)([(](([a-z][^=]*)=(.*))([,]([a-z][^=]*)([=])(.*))*[)])?')"
Severity:    #warning

Extension: BiologicallyEffectiveDose
Id: codexrt-radiotherapy-biologically-effective-dose
Title: "Biologically Effective Dose Extension"
Description: "Extension providing biologically effective dose"
* . ^short = "Radiotherapy Biologically Effective Dose"
* insert ExpandedContexts
* value[x] only Quantity
* valueQuantity.unit 1..1
* valueQuantity.unit obeys TG263BED
* valueQuantity.value 1..1
* value[x] 1..1


Profile: RadiotherapyCourseSummary
Parent: $mCODERadiotherapyCourseSummary
Id: codexrt-radiotherapy-course-summary
Title: "Radiotherapy Course Summary"
Description: "A summary of the treatment progress in a radiotherapy course.
Whenever new contributions in the scope of the same course are delivered, this resource is updated (no new resource created)."
* insert RadiotherapyProcedureCommon
* obeys codexrt-procedure-status
* insert ModalityAndTechniqueExtensions
* extension contains
    ImageGuidedRadiotherapyModality named imageGuidedRadiotherapyModality 0..* MS and
    CourseInvolvesReirradiation named courseInvolvesReirradiation 0..1 MS
* extension[doseDeliveredToVolume].extension contains
    UniformFractionation named uniformFractionation 1..1 MS and
    BiologicallyEffectiveDose named biologicallyEffectiveDose 0..1 MS 
* insert OpenProfileBasedSlicing(basedOn)
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
