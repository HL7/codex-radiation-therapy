
Profile: RadiotherapyPlanPrescription
Parent: ServiceRequest
Id: codexrt-radiotherapy-plan-prescription
Title: "Radiotherapy Plan Prescription"
Description: "A Radioherapy Plan Prescription is a request for Radiotherapy treatment with a single Radiotherapy Treamtent Plan."
* insert RadiotherapyRequestCommon
* extension contains
    RadiotherapyFractionsPrescribed named radiotherapy-fractions-prescribed 1..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS and
    RadiotherapyDoseToVolume named codexrt-radiotherapy-dose-to-volume 0..*
* extension[radiotherapy-dose-prescribed-to-volume]
  * extension[fractions] 0..0
  * extension[fractions] ^short = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions."
  * extension[fractions] ^definition = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-prescribed."
* extension[codexrt-radiotherapy-dose-to-volume]
  ^short = "Prescribed Dose to a Dose Reference"
  * extension[fractions] 0..0
    * ^short = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions."
    * ^definition = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-prescribed."
  //Description: "Dose parameters prescribed for one radiotherapy volume."
  * extension[volume]
    * ^short = "Volume targeted by the prescribed dose"
    * ^definition = "A BodyStructure resource representing the body structure to be treated, for example, Chest Wall Lymph Nodes."
  * extension[fractionDose]
    * ^short = "Radiation Dose Prescribed per Fraction"
    * ^definition = "The dose prescribed per Fraction to this volume."
  * extension[totalDose]
    * ^short = "Total Radiation Dose Prescribed"
    * ^definition = "The total dose prescribed to this volume within the scope of this ServiceRequest."

* intent = ReqIntent#original-order "Original Order"
* code = RadiotherapyRequest#radiotherapy-plan-prescription "Radiotherapy Plan Prescription"
* occurrenceTiming only Timing
* occurrenceTiming MS
  * repeat
    * boundsPeriod 0..1
    * boundsPeriod only Period
    * frequency 0..1
    * period 0..1
    * periodUnit 0..1
