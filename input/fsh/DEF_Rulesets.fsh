
// Common for all RT Requests including Course Summary
RuleSet: RadiotherapyRequestCommon
// * meta MS
// * meta.versionId MS
// * meta.lastUpdated MS
* extension MS
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modality-and-technique 0..* MS
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
