
Profile: RadiotherapyPlanPrescription
Parent: ServiceRequest
Id: codexrt-radiotheraphy-plan-prescription
Title: "Radiotherapy Plan Prescription"
Description: "A Radioherapy Plan Prescription is a request for Radiotherapy treatment with a single Radiotherapy Treamtent Plan."
* insert RadiotherapyRequestCommon
* extension contains
    RadiotherapyFractionsPrescribed named radiotherapy-fractions-prescribed 1..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume] 0..* MS
  * extension[fractionsPrescribed] 0..0
  * extension[fractionsPrescribed] ^short = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions."
  * extension[fractionsPrescribed] ^definition = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-prescribed."
* code = RadiotherapyRequest#radiotherapy-plan-prescription "Radiotherapy Plan Prescription"
* occurrenceTiming only Timing
* occurrenceTiming MS
  * repeat
    * boundsPeriod 0..1
    * boundsPeriod only Period
    * frequency 0..1
    * period 0..1
    * periodUnit 0..1
