
Profile: RadiotherapyPhasePrescription
Parent: ServiceRequest
Id: codexrt-radiotheraphy-phase-prescription
Title: "(Future) Radiotherapy Phase Prescription"
Description: "A Radioherapy Phase Prescription is a request for one series of fractionated treatments using Radiotherapy. It can define treatment parameters such as modality or technique,
and prescribe dose to multiple targets."
* insert RadiotherapyRequestCommon
* extension contains
    RadiotherapyFractionsPrescribed named radiotherapy-fractions-prescribed 1..1 MS and
    RadiotherapyEnergy named radiotherapy-energy 0..* and
    RadiotherapyTreatmentDeviceType named radiotherapy-treatment-device-type 0..*
* extension[radiotherapy-dose-prescribed-to-volume] 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume].extension[fractionsPrescribed] 0..0
* extension[radiotherapy-dose-prescribed-to-volume].extension[fractionsPrescribed] ^short = "Not used in this profile. In a Phase, all volumes are involved in all Fractions."
* extension[radiotherapy-dose-prescribed-to-volume].extension[fractionsPrescribed] ^definition = "Not used in this profile. In a Phase, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-prescribed. To achieve different numbers of Fractions for different volumes, multiple Phases have to be defined."
* code = RadiotherapyRequest#radiotherapy-phase-prescription "Radiotherapy Phase Prescription"
* occurrenceTiming only Timing
* occurrenceTiming MS
* occurrenceTiming.repeat.boundsPeriod 0..1
* occurrenceTiming.repeat.boundsPeriod only Period
* occurrenceTiming.repeat.frequency 0..1
* occurrenceTiming.repeat.period 0..1
* occurrenceTiming.repeat.periodUnit 0..1
