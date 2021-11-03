
RuleSet: RadiotherapyCommon
* category 1.. MS
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date is expected if the status is 'stopped' or 'completed'"
* subject only Reference(CancerPatient)
* extension and category MS

// Combined from TeleradiotherapyTreatmentPhase and BrachytherapyTreatmentPhase that were moved here from mCODE
Profile:  RadiotherapyTreatmentPhase
Parent:   USCoreProcedure
Id:       codex-radiotherapy-treatment-phase
Title: "Radiotherapy Treatment Phase"
Description: "A summary of a Phase of radiotherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions.  
A Phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same treatment volume or volumes. Because of their spatial relationship or the technique used,  all treatment volumes do not necessarily receive the same total dose during a phase."
* ^status = #draft
* insert RadiotherapyCommon
* partOf only Reference(RadiotherapyCourseSummary)
* partOf ^definition = "The partOf element, if present, MUST reference a RadiotherapyCourseSummary-conforming Procedure resource."
* extension contains
    MCodeModalityAndTechnique named modalityAndTechnique 0..1 MS and
    RadiotherapyFractionsDelivered named fractionsDelivered 0..1 MS and
    RadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS
* extension[doseDeliveredToVolume]
  * extension[fractionsDelivered] 0..0
    * ^short = "Not used in this profile."
    * ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
  * extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this phase, not including dose from any other phase. For summary over multiple phases, see Radiotherapy Course Summary."
* extension[fractionsDelivered] 
  * ^short = "Number of Fractions Delivered"
  * ^definition = "The number of fractions delivered during this phase."
//* basedOn MS when prescription is modelled
//* basedOn ^short = "Should Reference a http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codex-radiotherapy-phase-prescription" // only Reference(RadiotherapyPhasePrescription)
* code = ResourceIdentifierCS#codexrt-treatment-phase 
* bodySite from RadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "All body structure(s) treated in this phase"
* bodySite ^definition = "Coded body structure(s) treated in this phase of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."
* obeys xrts-procedure-status

//Moved from mCODE because only used in Phase Summaries
Extension: RadiotherapyFractionsDelivered
Id:        mcode-radiotherapy-fractions-delivered
Title:     "Radiotherapy Fractions Delivered"
Description: "The total number of fractions (treatment divisions) actually delivered for this volume."
* insert ExtensionContext(Procedure)
* value[x] only unsignedInt
* value[x] 1..1

// -------- Example Instances ---------------------------------------------------------

Instance: radiotherapy-treatment-phase-low-dose-rate-temporary
InstanceOf: RadiotherapyTreatmentPhase
Description: "Example of a brachytherapy therapy phase."
* status = #completed "completed"
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* code = ResourceIdentifierCS#codexrt-treatment-phase
* extension[modalityAndTechnique][+]
  * extension[modality].valueCodeableConcept = SCT#1156708005 "Low dose rate brachytherapy using temporary radioactive source (procedure)"
  * extension[technique].valueCodeableConcept = SCT#113120007 "Interstitial brachytherapy (procedure)"
* subject = Reference(cancer-patient-john-anyperson)
* asserter = Reference(us-core-practitioner-kyle-anydoc)
* performedPeriod.start = "2019-03-01"
* performedPeriod.end = "2019-03-01"
* reasonReference = Reference(primary-cancer-condition-nsclc)
* extension[doseDeliveredToVolume].extension[volume].valueReference = Reference(john-anyperson-treatment-volume)

Instance: radiotherapy-treatment-phase-chest-wall-jenny-m
InstanceOf: RadiotherapyTreatmentPhase
Description: "Example of radiotherapy treatment phase involving external beam radiation to chest wall and regional node radiation"
* status = #completed "completed"
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* code = ResourceIdentifierCS#codexrt-treatment-phase
* partOf = Reference(radiotherapy-treatment-summary-chest-wall-jenny-m)
* performedPeriod.start = "2018-05-01"
* performedPeriod.end = "2018-06-29"
* extension[modalityAndTechnique][+]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique].valueCodeableConcept = SCT#1156530009 "Volumetric Modulated Arc Therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 25
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(jenny-m-chest-wall-treatment-volume)
  * extension[totalDoseDelivered].valueQuantity = 5000 'cGy'
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(jenny-m-chest-wall-lymph-nodes-treatment-volume)
  * extension[totalDoseDelivered].valueQuantity = 5000 'cGy'
* subject = Reference(cancer-patient-jenny-m)
* asserter = Reference(us-core-practitioner-kyle-anydoc)

Instance: Radiotherapy-treatment-phase-boost-jenny-m
InstanceOf: RadiotherapyTreatmentPhase
Description: "Example of radiotherapy treatment boost phase"
* status = #completed "completed"
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* code = ResourceIdentifierCS#codexrt-treatment-phase
* partOf = Reference(radiotherapy-treatment-summary-chest-wall-jenny-m)
* performedPeriod.start = "2018-08-01"
* performedPeriod.end = "2018-09-30"
* extension[modalityAndTechnique][+]
  * extension[modality].valueCodeableConcept = SCT#45643008  "External beam radiation therapy using electrons (procedure)"
  * extension[technique].valueCodeableConcept = SCTREQ#1162782007 "Three dimensional external beam radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume]
  * extension[volume].valueReference = Reference(jenny-m-chest-wall-treatment-volume)
  * extension[totalDoseDelivered].valueQuantity = 1000 'cGy'
* subject = Reference(cancer-patient-jenny-m)
* asserter = Reference(us-core-practitioner-kyle-anydoc)


Instance: RadiotherapyTreatmentPhase-05-Prostate-Phase1
InstanceOf: RadiotherapyTreatmentPhase
Description: "Treatment Summary for first phase"
Usage: #example
* id = "RadiotherapyTreatmentPhase-05-Prostate-Phase1" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase)
* extension[fractionsDelivered].valueUnsignedInt = 2
// Prescription Target Site "Prostate"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-03-Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 360 
// Prescription Target Site "Pelv Ns"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-04-PelvNs"
  * extension[totalDoseDelivered].valueQuantity.value = 360 
// Prescription Target Site "Sem Vs"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-05-SemVs"
  * extension[totalDoseDelivered].valueQuantity.value = 360 
* identifier
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = "http://varian.com/fhir/identifier/radiotherapPrescriptionId"
  * value = "Prostate-Phase1"
* basedOn.reference = "ServiceRequest/RadiotherapyPhasePrescription-04-Prostate-Phase1" 
* basedOn.display = "Prostate-Phase1"
* partOf.reference = "Procedure/RadiotherapyCourseSummary-04-Prostate" //Can reference another summary of larger scope
* status = #in-progress
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)"
* code = ResourceIdentifierCS#codexrt-treatment-phase
* subject.reference = "Patient/Patient-6"
* subject.display = "Peter Venkman"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = ICD10#C61.0 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS 
* reasonReference.reference = "Condition/Diagnosis-2-Prostate" //In ARIA, diagnoses related to Course
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // "Body site that is treated with Radiotherapy"
* bodySite.text = "Prostate"

