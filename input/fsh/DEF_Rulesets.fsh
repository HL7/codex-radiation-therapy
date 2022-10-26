RuleSet: CategorySlicing
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing requires the given value but allows additional categories"
* category 1.. MS
* category contains
  required 1..1

RuleSet: BasedOnSlicing
* basedOn ^slicing.discriminator.type = #profile
* basedOn ^slicing.discriminator.path = "$this.resolve()"
* basedOn ^slicing.rules = #open
* basedOn ^slicing.description = "Slicing based on the profile"

RuleSet: PartOfSlicing
* partOf ^slicing.discriminator.type = #profile
* partOf ^slicing.discriminator.path = "$this.resolve()"
* partOf ^slicing.rules = #open
* partOf ^slicing.description = "Slicing based on the profile"

RuleSet: ModalityAndTechniqueExtensions
* extension[modalityAndTechnique].extension contains
    RadiotherapyEnergyOrIsotope named radiotherapyEnergyOrIsotope 0..* MS and
    RadiotherapyDevice named radiotherapyDevice 0..* MS and
    RadiotherapyTreatmentApplicatorType named radiotherapyTreatmentApplicatorType 0..* MS

RuleSet: ModalityAndTechniqueZeroToMany
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..* MS
* insert ModalityAndTechniqueExtensions

RuleSet: ModalityAndTechniqueZeroToOne
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..1 MS
* insert ModalityAndTechniqueExtensions

RuleSet: RadiotherapyRequestCommon
// * meta MS
// * meta.versionId MS
// * meta.lastUpdated MS
* extension MS
* identifier MS
* identifier.system MS
* identifier.value 1..1 MS
* replaces MS
* replaces ^short = "Previous retired request that is replaced by this request" //Defined a short so the element is shown even if it is not MS
* status MS
* intent MS
* insert CategorySlicing
* category[required] = SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* code 1..1 MS
* doNotPerform 0..0
* quantity[x] 0..0 // In RT dose to multiple targets has to be covered. Therefore, we have a dedicated extension radiotherapyPrescribedDose
* subject 1..1 MS
* subject only Reference(USCorePatient)
* asNeeded[x] 0..0
* requester MS //Approval user
* requester only Reference(USCorePractitioner or USCorePractitionerRole or USCoreOrganization)
* reasonCode MS
* reasonCode from $mCODECancerDisorderVS (extensible)
* reasonReference MS
* reasonReference only Reference(Condition)
* specimen 0..0
* bodySite from RadiotherapyTreatmentLocationVS (required) //TBD For now required as in mCODE
* bodySite MS
* bodySite ^short = "Body site that is treated with radiotherapy"
* note MS

RuleSet: RadiotherapyProcedureCommon
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date is expected if the status is 'stopped' or 'completed'"

RuleSet: RadiotherapyPrescriptionsCommon
* insert RadiotherapyRequestCommon
* intent = ReqIntent#original-order "Original Order"

RuleSet: RadiotherapyPlansCommon
* insert RadiotherapyRequestCommon
* intent = ReqIntent#filler-order "Filler Order"

RuleSet: RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* insert RadiotherapyPlansCommon
* insert ModalityAndTechniqueZeroToOne
* extension contains
    RadiotherapyFractionsPlanned named radiotherapyFractionsPlanned 1..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapyDosePlannedToVolume 0..* MS and
    RadiotherapyReasonForRevisionOrAdaptation named radiotherapyReasonForRevisionOrAdaptation 0..* MS
* extension[radiotherapyDosePlannedToVolume]
  * extension[fractions] 0..0
  * extension[fractions] ^short = "Not used in this profile. In a phase, all volumes are involved in all fractions."
  * extension[fractions] ^definition = "Not used in this profile. In a phase, all volumes are involved in all fractions and the number of fractions is defined in extension radiotherapyFractionsPlanned. To achieve different numbers of fractions for different volumes, multiple phases have to be defined."
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
* insert ModalityAndTechniqueZeroToOne
* extension contains
    RadiotherapyFractionsPrescribed named radiotherapyFractionsPrescribed 1..1 MS and
    RadiotherapyDosePrescribedToVolume named radiotherapyDosePrescribedToVolume 0..* MS and
    RadiotherapyReasonForRevisionOrAdaptation named radiotherapyReasonForRevisionOrAdaptation 0..* MS
* extension[radiotherapyDosePrescribedToVolume]
  * extension[fractions] 0..0
  * extension[fractions] ^short = "Not used in this profile. In a Treatment Plan, all volumes are involved in all fractions."
  * extension[fractions] ^definition = "Not used in this profile. In a Treatment Plan, all volumes are involved in all fractions and the number of fractions is defined in extension radiotherapyFractionsPrescribed."
* occurrenceTiming only Timing
* occurrenceTiming MS
  * repeat
    * boundsPeriod 0..1
    * boundsPeriod only Period
    * frequency 0..1
    * period 0..1
    * periodUnit 0..1

RuleSet: RadiotherapyTreatedPhaseAndPlanCommon
* insert RadiotherapyProcedureCommon
* obeys codexrt-procedure-status
* insert ModalityAndTechniqueZeroToOne
* extension contains
    RadiotherapyFractionsDelivered named fractionsDelivered 0..1 MS and
    $mCODERadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS and
    RadiotherapyReasonForRevisionOrAdaptation named radiotherapyReasonForRevisionOrAdaptation 0..* MS
* extension[doseDeliveredToVolume].extension[fractionsDelivered] 0..0
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^short = "Not used in this profile."
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* subject only Reference($mCODECancerPatient)   // must reference mCODE Cancer Patient
* reasonCode MS
* reasonCode from $mCODECancerDisorderVS (extensible)
* reasonReference MS
* bodySite MS
* bodySite from $mCODERadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "All body structure(s) treated with this plan"
* bodySite ^definition = "Coded body structure(s) treated with this radiotherapy treatment plan. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."

RuleSet: SCTCopyright
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
