// Common for External Beam and Brachy Phase Prescription
RuleSet: RadiotherapyPhasePrescriptionCommon
* extension contains
    RadiotherapyFractionsPrescribed named radiotherapy-fractions-prescribed 1..1 MS and
    RadiotherapyEnergy named radiotherapy-energy 0..* and
    RadiotherapyTreatmentDeviceType named radiotherapy-treatment-device-type 0..*
* extension[radiotherapy-dose-prescribed-to-volume] 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume].extension[fractionsPrescribed] 0..0
* extension[radiotherapy-dose-prescribed-to-volume].extension[fractionsPrescribed] ^short = "Not used in this profile. In a Phase, all volumes are involved in all Fractions."
* extension[radiotherapy-dose-prescribed-to-volume].extension[fractionsPrescribed] ^definition = "Not used in this profile. In a Phase, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-prescribed. To achieve different numbers of Fractions for different volumes, multiple Phases have to be defined."
* occurrenceTiming only Timing
* occurrenceTiming MS
* occurrenceTiming.repeat.boundsPeriod 0..1
* occurrenceTiming.repeat.boundsPeriod only Period
* occurrenceTiming.repeat.frequency 0..1
* occurrenceTiming.repeat.period 0..1
* occurrenceTiming.repeat.periodUnit 0..1

// Common for all RT Requests including Course Summary
RuleSet: RadiotherapyRequestCommon
// * meta MS
// * meta.versionId MS
// * meta.lastUpdated MS
* extension MS
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modality-and-technique 0..* MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS
* identifier MS
* identifier.system MS
* identifier.value 1..1 MS
* replaces MS
* replaces ^short = "Previous retired request that is replaced by this request" //Defined a short so the element is shown even if it is not MS
* status MS
* intent MS
* intent = ReqIntent#order "order"
* category 1..* MS
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* code 1..1 MS
* doNotPerform 0..0
* quantity[x] 0..0 // In RT dose to multiple targets has to be covered. Therefore, we have a dedicated extension radiotherapyPrescribedDose
* subject 1..1 MS
* subject only Reference(Patient)
* asNeeded[x] 0..0
* requester MS //Approval user
* requester only Reference(Practitioner or PractitionerRole or Organization)
* reasonCode MS
* reasonReference MS
* reasonReference only Reference(Condition)
* specimen 0..0
//TBD mCODE TODO requires * bodySite from RadiotherapyTreatmentLocationVS (required).
* bodySite MS
* bodySite ^short = "Body site that is treated with Radiotherapy"
* note MS

RuleSet: RadiotherapyTreatmentPhaseCommon
* obeys xrts-procedure-status
* partOf MS
* partOf only Reference(RadiotherapyCourseSummary)
* basedOn MS
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date is expected if the status is 'stopped' or 'completed'"