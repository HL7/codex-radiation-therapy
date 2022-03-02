
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
* reasonCode from $mCODECancerDisorderVS (extensible)
* reasonReference MS
* reasonReference only Reference(Condition)
* specimen 0..0
* bodySite from RadiotherapyTreatmentLocationVS (required) //TBD For now required as in mCODE
* bodySite MS
* bodySite ^short = "Body site that is treated with Radiotherapy"
* note MS

RuleSet: SCTCopyright
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
