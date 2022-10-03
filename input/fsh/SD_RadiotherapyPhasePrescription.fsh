
Profile: RadiotherapyPhasePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-phase-prescription
Title: "Radiotherapy Phase Prescription"
Description: "A Radiotherapy Phase Prescription is a request for one series of fractionated treatments using Radiotherapy. It can define treatment parameters such as modality or technique,
and prescribe dose to multiple targets."
* insert RadiotherapyPhaseAndPlanPrescriptionCommon
* code = SnomedRequestedCS#USCRS-33527 "Radiotherapy Treatment Phase (therapy/regime)"
* insert BasedOnSlicing
* basedOn contains
    course-prescription 0..1 MS
* basedOn[course-prescription] ^short = "RadiotherapyCoursePrescription that this RadiotherapyPhasePrescription fulfills."
* basedOn[course-prescription] only Reference(RadiotherapyCoursePrescription)
* replaces only Reference(RadiotherapyPhasePrescription)