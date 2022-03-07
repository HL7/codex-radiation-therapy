
Profile: RadiotherapyPhasePrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-phase-prescription
Title: "Radiotherapy Phase Cumulative Prescription"
Description: "A Radioherapy Phase Prescription is a request for one series of fractionated treatments using Radiotherapy. It can define treatment parameters such as modality or technique,
and prescribe dose to multiple targets."
* insert RadiotherapyRequestCommon
* extension contains
    RadiotherapyFractionsPrescribed named radiotherapy-fractions-prescribed 1..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume] 0..* MS
  * extension[fractionsPrescribed] 0..0
  * extension[fractionsPrescribed] ^short = "Not used in this profile. In a Phase, all volumes are involved in all Fractions."
  * extension[fractionsPrescribed] ^definition = "Not used in this profile. In a Phase, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-prescribed. To achieve different numbers of Fractions for different volumes, multiple Phases have to be defined."
* intent = ReqIntent#original-order "Original Order"
* code = RadiotherapyRequest#radiotherapy-phase-prescription "Radiotherapy Phase Prescription"
* occurrenceTiming only Timing
* occurrenceTiming MS
  * repeat
    * boundsPeriod 0..1
    * boundsPeriod only Period
    * frequency 0..1
    * period 0..1
    * periodUnit 0..1
