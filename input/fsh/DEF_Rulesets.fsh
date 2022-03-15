
// Common for all RT Requests
RuleSet: RadiotherapyRequestCommon
// * meta MS
// * meta.versionId MS
// * meta.lastUpdated MS
* extension MS
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..* MS
* extension[modalityAndTechnique].extension contains
    RadiotherapyEnergyOrIsotope named radiotherapyEnergyOrIsotope 0..* MS and
    RadiotherapyTreatmentDeviceType named radiotherapyTreatmentDeviceType 0..* MS
* identifier MS
* identifier.system MS
* identifier.value 1..1 MS
* replaces MS
* replaces ^short = "Previous retired request that is replaced by this request" //Defined a short so the element is shown even if it is not MS
* status MS
* intent MS
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
* reasonCode from $mCODECancerDisorderVS (extensible)
* reasonReference MS
* reasonReference only Reference(Condition)
* specimen 0..0
* bodySite from RadiotherapyTreatmentLocationVS (required) //TBD For now required as in mCODE
* bodySite MS
* bodySite ^short = "Body site that is treated with Radiotherapy"
* note MS

RuleSet: RadiotherapyPrescriptionsCommon
* insert RadiotherapyRequestCommon
* intent = ReqIntent#original-order "Original Order"

RuleSet: RadiotherapyPlansCommon
* insert RadiotherapyRequestCommon
* intent = ReqIntent#filler-order "Filler Order"

RuleSet: RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* insert RadiotherapyPlansCommon
* extension contains
    RadiotherapyFractionsPlanned named radiotherapy-fractions-planned 1..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapy-dose-planned-to-volume 0..* MS
* extension[radiotherapy-dose-planned-to-volume]
  * extension[fractions] 0..0
  * extension[fractions] ^short = "Not used in this profile. In a Phase, all volumes are involved in all Fractions."
  * extension[fractions] ^definition = "Not used in this profile. In a Phase, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-planned. To achieve different numbers of Fractions for different volumes, multiple Phases have to be defined."
* occurrenceTiming only Timing
* occurrenceTiming MS
  * repeat
    * boundsPeriod 0..1
    * boundsPeriod only Period
    * frequency 0..1
    * period 0..1
    * periodUnit 0..1

RuleSet: RadiotherapyPhaseAndPlanPrescriptionCommon
* insert RadiotherapyPrescriptionsCommon
* extension contains
    RadiotherapyFractionsPrescribed named radiotherapy-fractions-prescribed 1..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS
* extension[radiotherapy-dose-prescribed-to-volume]
  * extension[fractions] 0..0
  * extension[fractions] ^short = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions."
  * extension[fractions] ^definition = "Not used in this profile. In a Treatment Plan, all volumes are involved in all Fractions and the number of Fractions is defined in extension radiotherapy-fractions-prescribed."
* occurrenceTiming only Timing
* occurrenceTiming MS
  * repeat
    * boundsPeriod 0..1
    * boundsPeriod only Period
    * frequency 0..1
    * period 0..1
    * periodUnit 0..1

RuleSet: SCTCopyright
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
