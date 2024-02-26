RuleSet: CategorySlicing
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing requires the given value but allows additional categories"
* category 1.. MS
* category contains
  required 1..1

RuleSet: OpenProfileBasedSlicing(field)
* {field} ^slicing.discriminator.type = #profile
* {field} ^slicing.discriminator.path = "$this.resolve()"
* {field} ^slicing.rules = #open
* {field} ^slicing.description = "Slicing based on the profile"

RuleSet: OpenProfileBasedSlicingSubfield(field, subfield)
* {field} ^slicing.discriminator.type = #profile
* {field} ^slicing.discriminator.path = "{subfield}.resolve()"
* {field} ^slicing.rules = #open
* {field} ^slicing.description = "Slicing based on the profile"

RuleSet: Identifiers
* identifier 2..* MS
* identifier ^definition = "SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "use"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "At least one display name and and one DICOM style UID as technical globally unqiue key"
* identifier contains
    displayName 1..1 MS and
    official 1..* MS
* identifier[displayName]
  ^short = "The name that is displayed to the user."
  * use = #usual
  * system 1..1 MS
  * value 1..1 MS
* identifier[official]
  ^short = "A business identifier for the request or procedure, which is independent of its FHIR representation, such as a GUID or DICOM UID."
  * use = #official
  * system 1..1 MS
  * value 1..1 MS

RuleSet: BodySiteQualifierAndLaterality
* bodySite.extension contains
     BodyLocationQualifier named locationQualifier 0..*   and
     LateralityQualifier named lateralityQualifier 0..1
* bodySite.extension[locationQualifier] ^short = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[locationQualifier] ^definition = "General location qualifier (excluding laterality) for this bodySite"
* bodySite.extension[lateralityQualifier] ^short = "Laterality qualifier for this bodySite"
* bodySite.extension[lateralityQualifier] ^definition = "Laterality qualifier for this bodySite"

RuleSet: ModalityAndTechniqueExtensions
* extension[modalityAndTechnique].extension contains
    RadiotherapyEnergyOrIsotope named radiotherapyEnergyOrIsotope 0..* MS and
    RadiotherapyTreatmentApplicatorType named radiotherapyTreatmentApplicatorType 0..* MS

RuleSet: ModalityAndTechniqueZeroToMany
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..* MS and
    ImageGuidedRadiotherapyModality named imageGuidedRadiotherapyModality 0..* MS
* insert ModalityAndTechniqueExtensions

RuleSet: ModalityAndTechniqueZeroToOne
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..1 MS and
    ImageGuidedRadiotherapyModality named imageGuidedRadiotherapyModality 0..* MS
* insert ModalityAndTechniqueExtensions

RuleSet: MotionManagement
* extension contains
    RadiotherapyRespiratoryMotionManagement named respiratoryMotionManagement 0..* MS and
    RadiotherapyFreeBreathingMotionManagementTechnique named freeBreathingMotionManagementTechnique 0..* MS
* extension[respiratoryMotionManagement] ^short = "Respiratory Motion Management"
* extension[respiratoryMotionManagement] ^definition = "Method applied to manage respiratory motion."
* extension[freeBreathingMotionManagementTechnique] ^short = "Free-Breathing Motion Management Technique"
* extension[freeBreathingMotionManagementTechnique] ^definition = "Technique to manage respiratory motion with free-breathing. Only allowed if respiratory motion management is free-breathing."
* obeys codexrt-motion-management-none
* obeys codexrt-free-breathing-technique

Invariant:  codexrt-motion-management-none
Description: "If the respiratory motion management is 'none', then no other respiratory motion management extensions are allowed.
They would also be 'none' or contradict the 'none'.
SNOMEDCT code 721031000124102 is \"Radiotherapy without respiratory motion management (regime/therapy)\""
Severity: #error
Expression: "extension.exists(url = 'http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-respiratory-motion-management' and value.exists(coding.exists(code = '721031000124102' and system = 'http://hl7.org/fhir/us/codex-radiation-therapy/CodeSystem/snomed-requested-cs'))) implies extension.where(url = 'http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-respiratory-motion-management').count() = 1"

Invariant:  codexrt-free-breathing-technique
Description: "The extension for the technique of free-breathing motion management is only allowed if motion management is free-breathing.
SNOMEDCT code 721071000124104 is \"Radiotherapy with free breathing (regime/therapy)\""
Severity: #error
Expression: "extension.exists(url = 'http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-free-breathing-motion-mgmt-technique') implies extension.exists(url = 'http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-respiratory-motion-management' and value.exists(coding.exists(code = '721071000124104' and system = 'http://hl7.org/fhir/us/codex-radiation-therapy/CodeSystem/snomed-requested-cs')))"


RuleSet: RadiotherapyRequestCommon
// * meta MS
// * meta.versionId MS
// * meta.lastUpdated MS
* extension MS
* extension contains
    IntrafractionVerification named intrafractionVerification 0..* MS
* insert MotionManagement
* insert Identifiers
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
* requester only Reference(USCorePractitioner or USCorePractitionerRole or USCoreOrganization)
* reasonCode MS
* reasonCode from $mCODECancerDisorderVS (extensible)
* reasonReference MS
* reasonReference only Reference(Condition)
* specimen 0..0
* bodySite from RadiotherapyTreatmentLocationVS (required) //TBD For now required as in mCODE
* bodySite MS
* bodySite ^short = "Body site that is treated with radiotherapy"
* insert BodySiteQualifierAndLaterality
* insert OpenProfileBasedSlicing(performer)
* performer contains
    treatmentOrSeedDevice 0..* MS
* performer[treatmentOrSeedDevice] only  Reference(RadiotherapyTreatmentDevice or RadiotherapySeedDevice)
* performer MS
* performer[treatmentOrSeedDevice] ^short = "Radiotherapy Treatment Device or Seed Device used as part of therapy."
* locationReference only Reference(USCoreLocation)
* locationReference MS

RuleSet: RadiotherapyProcedureCommon
* insert MotionManagement
* insert Identifiers
* extension contains
    IntrafractionVerification named intrafractionVerification 0..* MS
* extension[doseDeliveredToVolume].extension contains
    PointDose named pointDose 0..1 MS and
<<<<<<< HEAD
    PrimaryPlanDose named primaryPlanDose 0..1 MS and 
    RadiobiologicMetric named radiobiologicMetric 0..* MS
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^short = "Total Physical Radiation Dose Delivered"
=======
    PrimaryPlanDose named primaryPlanDose 0..1 MS
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy"
>>>>>>> master
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date is expected if the status is 'stopped' or 'completed'"
* insert OpenProfileBasedSlicing(usedReference)
* usedReference contains
    treatmentDevice 0..* MS
* usedReference[treatmentDevice] only Reference(RadiotherapyTreatmentDevice)
* usedReference[treatmentDevice] ^short = "Radiotherapy Treatment Device used as part of therapy."
* usedReference MS
* insert OpenProfileBasedSlicingSubfield(focalDevice,manipulated)
* focalDevice contains
    seedDevice 0..* MS
* focalDevice[seedDevice].manipulated only Reference(RadiotherapySeedDevice)
* focalDevice[seedDevice] ^short = "Radiotherapy Seed Device used as part of therapy."
* location only Reference(USCoreLocation)
* location MS
* insert BodySiteQualifierAndLaterality

RuleSet: RadiotherapyPrescriptionsCommon
* insert RadiotherapyRequestCommon
* intent = ReqIntent#original-order "Original Order"
* replaces MS
* replaces ^short = "Previous retired prescription that is replaced by this prescription"

RuleSet: RadiotherapyPlansCommon
* insert RadiotherapyRequestCommon
* extension[radiotherapyDosePlannedToVolume].extension contains
    PointDose named pointDose 0..1 MS and
    PrimaryPlanDose named primaryPlanDose 0..1 MS and 
    RadiobiologicMetric named radiobiologicMetric 0..* MS 
* intent = ReqIntent#filler-order "Filler Order"

RuleSet: RadiotherapyPlannedPhaseAndTreatmentPlanCommon
* insert ModalityAndTechniqueZeroToOne
* extension contains
    RadiotherapyFractionsPlanned named radiotherapyFractionsPlanned 1..1 MS and
    RadiotherapyDosePlannedToVolume named radiotherapyDosePlannedToVolume 0..* MS and
    RadiotherapyReasonForRevisionOrAdaptation named radiotherapyReasonForRevisionOrAdaptation 0..* MS
* insert RadiotherapyPlansCommon
* extension[radiotherapyDosePlannedToVolume]
  * extension[fractions] 0..0
  * extension[fractions] ^short = "Not used in this profile. In a phase, all volumes are involved in all fractions."
  * extension[fractions] ^definition = "Not used in this profile. In a phase, all volumes are involved in all fractions and the number of fractions is defined in extension radiotherapyFractionsPlanned. To achieve different numbers of fractions for different volumes, multiple phases have to be defined."
  * extension[totalDose] ^short = "Total Physical Radiation Dose Planned"


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
  * extension[totalDose] ^short = "Total Physical Radiation Dose Prescribed"
  * extension contains
    RadiobiologicMetric named radiobiologicMetric 0..* MS 

RuleSet: RadiotherapyTreatedPhaseAndPlanCommon
* obeys codexrt-procedure-status
* insert ModalityAndTechniqueZeroToOne
* extension contains
    RadiotherapyFractionsDelivered named fractionsDelivered 0..1 MS and
    $mCODERadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS and
    RadiotherapyReasonForRevisionOrAdaptation named radiotherapyReasonForRevisionOrAdaptation 0..* MS
* insert RadiotherapyProcedureCommon
* extension[doseDeliveredToVolume].extension[fractionsDelivered] 0..0
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^short = "Not used in this profile."
* subject only Reference($mCODECancerPatient)   // must reference mCODE Cancer Patient
* reasonCode MS
* reasonCode from $mCODECancerDisorderVS (extensible)
* reasonReference MS
* bodySite MS
* bodySite from $mCODERadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "All body structure(s) treated with this procedure."
* bodySite ^definition = "Coded body structure(s) treated with this radiotherapy treatment procedure. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."

RuleSet: SCTCopyright
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
