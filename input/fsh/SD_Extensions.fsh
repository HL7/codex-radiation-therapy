//From mCODE:

RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

RuleSet: ExtensionContextResource(path)
* insert ExtensionContext({path})
//* insert ExtensionContext({path}.Extension)

RuleSet: ExtensionContextExtension(uri)
* ^context[+].type = #extension
* ^context[=].expression = "{uri}"


RuleSet: Contexts1
// radiotherapy-course-involves-reirradiation.html
// radiotherapy-dose-planned-to-volume.html
// radiotherapy-dose-prescribed-to-volume.html
// radiotherapy-fraction-number-in-phase.html
// radiotherapy-fraction-number-in-plan.html
// radiotherapy-reason-for-revision-or-adaptation.html
// radiotherapy-free-breathing-motion-mgmt-technique.html
// radiotherapy-respiratory-motion-management.html
// image-guided-radiotherapy-modality.html
// intrafraction-verification.html
* insert ExtensionContextResource(Procedure)
* insert ExtensionContextResource(ServiceRequest)
* insert ExtensionContextResource(ActivityDefinition)

RuleSet: Contexts2
// radiotherapy-energy-or-isotope.html
// radiotherapy-treatment-applicator-type.html
* insert Contexts1
* insert ExtensionContextResource(Device)
* insert ExtensionContextExtension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique)

RuleSet: Contexts4 
// radiotherapy-fractions-planned.html
// radiotherapy-fractions-prescribed.html
* insert ExtensionContextResource(ServiceRequest)
* insert ExtensionContextResource(ActivityDefinition)

RuleSet: Contexts5
// radiotherapy-point-dose.html
// radiotherapy-primary-plan-dose.html
// radiotherapy-uniform-fractionation.html
* insert ExtensionContextExtension(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume)
* insert ExtensionContextExtension(http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume)
* insert ExtensionContextExtension(http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume)

Extension: RadiotherapyFractionsPrescribed
Id: codexrt-radiotherapy-fractions-prescribed
Title: "Number of Prescribed Fractions"
Description: "The number of prescribed fractions in this scope.
This extension SHALL only be present if the treatment is structured as countable fractions, for example in a Radiotherapy Phase Prescription."
* . ^short = "Number of Prescribed Fractions"
* . 0..1
* value[x] ^short = "Number of Prescribed Fractions"
* value[x] only positiveInt
* value[x] 1..1
* insert Contexts4 

Extension: RadiotherapyFractionsPlanned
Id: codexrt-radiotherapy-fractions-planned
Title: "Number of Planned Fractions"
Description: "The number of planned fractions in this scope.
This extension SHALL only be present if the treatment is structured as countable fractions, for example in a Radiotherapy Planned Phase or in a Radiotherapy Treatment Plan."
* . ^short = "Number of Planned Fractions"
* . 0..1
* value[x] ^short = "Number of Planned Fractions"
* value[x] only positiveInt
* value[x] 1..1
* insert Contexts4 

Extension: RadiotherapyFractionsDelivered
Id: codexrt-radiotherapy-fractions-delivered
Title: "Number of Delivered Fractions"
Description: "The total number of fractions (treatment divisions) actually delivered for this volume."
* . ^short = "Number of Delivered Fractions"
* . 0..1
* value[x] ^short = "Number of Delivered Fractions"
* value[x] only unsignedInt //as opposed to planned or prescribed fractions, delivered fractions can be zero.
* value[x] 1..1
* insert ExtensionContextResource(Procedure)

Extension: RadiotherapyFractionNumberInPlan
Id: codexrt-radiotherapy-fraction-number-in-plan
Title: "Fraction Number in Plan"
Description: "The number of the fraction in a radiotherapy treatment plan."
* . ^short = "Fraction Number in Plan"
* . 0..1
* value[x] ^short = "Fraction Number in Plan"
* value[x] only positiveInt
* value[x] 1..1
* insert Contexts1 

Extension: RadiotherapyFractionNumberInPhase
Id: codexrt-radiotherapy-fraction-number-in-phase
Title: "Fraction Number in Phase"
Description: "The number of the fraction in a radiotherapy treatment phase."
* . ^short = "Fraction Number in Phase"
* . 0..1
* value[x] ^short = "Fraction Number in Phase"
* value[x] only positiveInt
* value[x] 1..1
* insert Contexts1 

Extension: RadiotherapySessionNumber
Id: codexrt-radiotherapy-session-number
Title: "Session Number"
Description: "The number of the session in a radiotherapy treatment course."
* . ^short = "Session Number"
* . 0..1
* value[x] ^short = "Session Number"
* value[x] only positiveInt
* value[x] 1..1
* insert ExtensionContextResource(Procedure)
* insert ExtensionContextResource(Encounter)
* insert ExtensionContextResource(ServiceRequest)

// Defined similar to the corresponding delivered dose in mCODE STU2.
// http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume
RuleSet: DoseToVolumeCommon
* extension contains
    volume 1..1 MS and
    fractionDose 0..1 MS and
    totalDose 0..1 MS and
    fractions 0..1 MS
* extension[volume]
  * value[x] only Reference(RadiotherapyVolume)
  * value[x] 1..1
* extension[fractionDose]
  * value[x] only Quantity
  * value[x] 0..1
  * valueQuantity = UCUM#cGy
* extension[totalDose]
  * value[x] only Quantity
  * value[x] 1..1
  * valueQuantity = UCUM#cGy
* extension[fractions]
  * value[x] only positiveInt
  * value[x] 0..1


Extension: RadiotherapyDosePrescribedToVolume
Id: codexrt-radiotherapy-dose-prescribed-to-volume
Title: "Dose Prescribed to Volume"
Description: "Dose parameters prescribed for one radiotherapy volume."
* insert DoseToVolumeCommon
* . ^short = "Prescribed Dose to a Dose Reference"
* extension[volume]
  * ^short = "Volume targeted by the prescribed dose"
  * ^definition = "A BodyStructure resource representing the body structure to be treated, for example, Chest Wall Lymph Nodes."
* extension[fractionDose]
  * ^short = "Radiation Dose Prescribed per Fraction"
  * ^definition = "The dose prescribed per fraction to this volume."
* extension[totalDose]
  * ^short = "Total Radiation Dose Prescribed"
  * ^definition = "The total dose prescribed to this volume within the scope of this ServiceRequest."
* extension[fractions]
  * ^short = "Number of Prescribed Fractions"
  * ^definition = "The prescribed number of fractions to deliver the dose. See also extension RadiotherapyFractionsPrescribed which is used instead if fractions are not per volume, e.g. in phases or plans."
* insert Contexts1


Extension: RadiotherapyDosePlannedToVolume
Id: codexrt-radiotherapy-dose-planned-to-volume
Title: "Dose Planned to Volume"
Description: "Dose parameters planned for one radiotherapy volume."
* insert DoseToVolumeCommon
* . ^short = "Planned Dose to a Dose Reference"
* extension[volume]
  * ^short = "Volume targeted by the planned dose"
  * ^definition = "A BodyStructure resource representing the body structure to be treated, for example, Chest Wall Lymph Nodes."
* extension[totalDose]
  * ^short = "Total Planned Radiation Dose"
  * ^definition = "The total dose planned to this volume within the scope of this ServiceRequest."
* extension[fractionDose]
  * ^short = "Radiation Dose Planned per Fraction"
  * ^definition = "The dose planned per fraction to this volume."
* extension[fractions]
  * ^short = "Number of Planned Fractions"
  * ^definition = "The planned number of fractions to deliver the dose. See also extension RadiotherapyFractionsPlanned which is used instead if fractions are the same for all volumes, i.e. in phases or plans."
* insert Contexts1 

Extension: RadiotherapyEnergyOrIsotope
Id: codexrt-radiotherapy-energy-or-isotope
Title: "Energy or Isotope"
Description: "The radiation energy used for radiotherapy. The energy spectrum is characterized
by the maximum energy, the maximum acceleration voltage, or the used isotope."
* . ^short = "Radiotherapy Energy or Isotope"
* value[x] only SimpleQuantity or CodeableConcept
* valueQuantity ^short = "The spectrum of radiation energy characterized by a maximum value.
For electrons, the maximum energy is given in MeV. For photons, the maximum acceleration voltage is given in MV or kV, although those are not units of energy."
* valueQuantity from RadiotherapyEnergyUnitVS (required)
* valueQuantity.value 1..1
* valueQuantity.system 1..1
* valueQuantity.code 1..1
* valueCodeableConcept ^short = "The isotope used for radiotherapy."
* valueCodeableConcept from RadiotherapyIsotopeVS (extensible)
* value[x] 1..1
* insert Contexts2 

//Copied from https://hl7.org/fhir/R4/imagingstudy.html which contains DICOM references for all images in an imaging study.
//For general DICOM refernece we may add Series and Study UID.
//TBD if endpoint is added where the SOP Instance can be retrieved.
Extension: DicomReference
Id: codexrt-dicom-reference
Title: "Reference to DICOM SOP Instance"
Description: "A reference to a DICOM SOP Instance."
* . ^short = "Reference to DICOM SOP Instance"
* extension contains
    instanceUid 1..1 MS and
    // seriesUid 1..1 MS and
    // studyUid 1..1 MS and
    sopClass 0..1 MS
* extension[instanceUid]
  * value[x] only id
  * value[x] 1..1
  * ^short = "DICOM SOP Instance UID"
  * ^definition = "A single SOP instance."
// * extension[seriesUid]
//   * value[x] only id
//   * value[x] 1..1
//   * ^short = "DICOM Series UID"
//   * ^definition = "The UID of the DICOM Series."
// * extension[studyUid]
//   * value[x] only id
//   * value[x] 1..1
//   * ^short = "DICOM Study UID"
//   * ^definition = "The UID of the DICOM Study."
* extension[sopClass]
  * value[x] only Coding
  * value[x] 1..1
  * ^short = "DICOM SOP Class"
  * ^definition = "The type of DICOM Service Object Pair (SOP)."
* insert ExtensionContext(Procedure)
* insert ExtensionContext(ServiceRequest)
* insert ExtensionContext(Observation)
* insert ExtensionContext(DiagnosticReport)
* insert ExtensionContext(DetectedIssue)

Extension: RadiotherapyTreatmentApplicatorType
Id: codexrt-radiotherapy-treatment-applicator-type
Title: "Treatment Applicator Type"
Description: "Radiotherapy Treatment Applicator Type."
* . ^short = "Radiotherapy Treatment Applicator Type"
* value[x] ^short = "Radiotherapy Treatment Applicator Type"
* value[x] only CodeableConcept
* value[x] from BrachytherapyApplicatorTypeVS (extensible)
* insert Contexts2 

Extension: UniformFractionation
Id: codexrt-radiotherapy-uniform-fractionation
Title: "Uniform Fractionation"
Description: "This flag is true if the fractionation was uniform (i.e., treated with same modality and dose per fraction) and false if the fractionation was mixed. Treatment technique may vary in uniform fractionation.
If the fractionation was uniform, then the correspondence between the physical and biologically effective dose can be determined at the course level.
If the fractionation was not uniform, then the correspondence between the physical and biologically effective dose has to be determined per the phase level.
The flag was introduced to support determination of whether fractionation was uniform when viewing the Radiotherapy Course Summary (without first checking the details of each treatment phase).
This is important in registry use cases to efficiently assess whether checking phase level information is needed."
* . ^short = "Uniform Fractionation"
* . 0..1
* value[x] ^short = "Uniform Fractionation Was Used"
* value[x] only boolean
* insert Contexts5


Extension: PrimaryPlanDose
Id: codexrt-radiotherapy-primary-plan-dose
Title: "Primary Plan Dose"
Description: "This flag is true if the dose is the primary plan dose in a radiotherapy treatment plan.
For a single treatment plan, the primary plan dose serves as the main dose value for tracking delivered dose vs. planned dose.
In summaries over multiple treatment plans, the flag indicates that the dose is a primary plan dose in any of the summarized plans."
* . ^short = "Primary Plan Dose"
* . 0..1
* value[x] ^short = "Primary Plan Dose"
* value[x] only boolean
* insert Contexts5

Extension: PointDose
Id: codexrt-radiotherapy-point-dose
Title: "Point Dose"
Description: "This flag is true if the dose is determined at a single point.
Point doses are often used to check dose at a specific point in a calculated 3D dose distribution.
Since point doses mostly have a technical role, high-level summaries may decide to exclude them from displays."
* . ^short = "Point Dose"
* . 0..1
* value[x] ^short = "Point Dose"
* value[x] only boolean
* insert Contexts5

Extension: RadiotherapyReasonForRevisionOrAdaptation
Id: codexrt-radiotherapy-reason-for-revision-or-adaptation
Title: "Reason for Revision or Adaptation"
Description: "The reason a planned or prescribed radiotherapy treatment was revised, superceded, or adapted."
* . ^short = "Reason for Revision or Adaptation"
* value[x] ^short = "Reason for Revision or Adaptation"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from RadiotherapyReasonForRevisionOrAdaptationVS (extensible)
* insert Contexts1 

Extension: RadiotherapyRespiratoryMotionManagement
Id: codexrt-radiotherapy-respiratory-motion-management
Title: "Respiratory Motion Management"
Description: "Method applied to manage respiratory motion."
* . ^short = "Respiratory Motion Management"
* value[x] ^short = "Respiratory Motion Management"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from RadiotherapyRespiratoryMotionManagementVS (required)
* insert Contexts1 

Extension: RadiotherapyFreeBreathingMotionManagementTechnique
Id: codexrt-radiotherapy-free-breathing-motion-mgmt-technique
Title: "Free-Breathing Motion Management Technique"
Description: "Technique to manage respiratory motion with free-breathing."
* . ^short = "Free-Breathing Motion Management Technique"
* value[x] ^short = "Free-Breathing Motion Management Technique"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from RadiotherapyFreeBreathingMotionManagementTechniqueVS (extensible)
* insert Contexts1 

Extension: CourseInvolvesReirradiation
Id: codexrt-radiotherapy-course-involves-reirradiation
Title: "Course Involves Reirradiation"
Description: "This flag is true if the radiotherapy course of treatment involves reirradiation of targets or organs at risk that were already irradiated in previous courses."
* . ^short = "Course Involves Reirradiation"
* . 0..1
* value[x] ^short = "Course Involves Reirradiation"
* value[x] only boolean
* insert Contexts1


Extension: ImageGuidedRadiotherapyModality
Id: codexrt-image-guided-radiotherapy-modality
Description: "The modality and associated energy used for imaging in Image Guided Radiotherapy (IGRT)"
Title: "Image Guided Radiotherapy Modality"
* . ^short = "Image Guided Radiotherapy Modality"
* obeys IGRTEnergyAllowed
* extension contains
    modality 1..1 MS and
    energy 0..1 MS
* extension[modality]
  * value[x] only CodeableConcept
  * value[x] from ImageGuidedRadiotherapyModalityVS (extensible)
* extension[energy]
  * value[x] only CodeableConcept
  * value[x] from ImageGuidedRadiotherapyEnergyUnitVS (required)
* insert Contexts1 

Extension: RadiotherapyVolumeExtension
Id: codexrt-radiotherapy-volume-extension
Title: "Radiotherapy Volume Extension"
Description: "Extension providing a reference to a RadiotherapyVolume"
* . ^short = "Radiotherapy Volume Extension"
* value[x] only Reference(RadiotherapyVolume)
* value[x] 1..1
* insert ExtensionContextResource(Procedure)
* insert ExtensionContextResource(Observation)
* insert ExtensionContextResource(ServiceRequest)
* insert ExtensionContextResource(ActivityDefinition)
* insert ExtensionContextResource(ObservationDefinition)
* insert ExtensionContextResource(ImagingStudy)
* insert ExtensionContextResource(DiagnosticReport)
* insert ExtensionContextResource(DetectedIssue)

Extension: RadiotherapyDiseaseProgressionQualifier
Id: codexrt-radiotherapy-disease-progression-qualifier
Title: "Radiotherapy Disease Progression Qualifier"
Description: "Radiotherapy Disease Progression Qualifier"
* . ^short = "Progression Qualifier"
* value[x] only CodeableConcept
* value[x] from DiseaseProgressionQualifierVS (required)
* value[x] 1..1
* insert ExtensionContext(Observation)
* insert ExtensionContext(CodeableConcept)


Invariant: IGRTEnergyAllowed
Description: "Energy is only allowed for X-Ray, Fluorograph, or CT Modalities."
Severity: #error
//* SCT#168537006 "Plain radiography (procedure)"  // XRay
//* SCT#44491008 "Fluoroscopy (procedure)"         // Flurograph
//* SCT#77477000 "Computed tomography (procedure)" // CT
//* SCT#717193008 "Cone beam computed tomography (procedure)" // Cone beam CT
Expression: "extension.where(url = 'energy').exists() implies \n
               (extension.where(url = 'modality').exists() and \n
                extension.where(url = 'modality').value.exists() and \n
                extension.where(url = 'modality').value.coding.all(\n
                    (system = 'http://snomed.info/sct') and \n
                    (code = '168537006' or code  = '44491008' or code  = '77477000' or code  = '717193008') \n
                 )\n
               )"
XPath: "true()"

Invariant:   TG263RadiobiologicMetric
Description: "Unit SHOULD match TG-263 Radiobiologic Metric Regexp"
// Expression:  "$this.toString().matches('^(BED|CGE|RBE|RBE\\(factor\\s*=\\s*(\\d?(\\.\\d+)?)\\)|EQD2Gy|EQD2GY\\(a\\/b\\s*=\\s*(\\d?(\\.\\d+)?)\\))$')"
Expression:  "$this.toString().matches('^(BED|CGE|RBE|RBE\\\\(factor\\\\s*=\\\\s*(\\\\d?(\\\\.\\\\d+)?)\\\\)|EQD2Gy|EQD2Gy\\\\(a\\\\/b\\\\s*=\\\\s*(\\\\d?(\\\\.\\\\d+)?)\\\\))$')"
//                       toString().matches('^(BED|CGE|RBE|RBE\\(factor\\s*=\\s*(\\d?(\\.\\d+)?)\\)|EQD2Gy|EQD2GY\\(a\\/b\\s*=\\s*(\\d?(\\.\\d+)?)\\))$')
//                       toString().matches('^(BED|CGE|RBE|RBE\\(factor\\s*=\\s*(\\d?(\\.\\d+)?)\\)|EQD2Gy|EQD2GY\\(a\\/b\\s*=\\s*(\\d?(\\.\\d+)?)\\))$')
// Expression:  "$this.toString().matches('^(BED|CGE|RBE|RBE(factor\s*=\s*(\d?(\.\d+)?))|EQD2Gy|EQD2GY(a\/b\s*=\s*(\d?(\.\d+)?)))$')"
Severity:    #warning


Extension: RadiobiologicMetric
Id: codexrt-radiobiologic-metric
Title: "Radiobiologic Metric"
Description: """Extension providing radiobiologic dose metric using a regular expression:
 BED,
 CGE,
 RBE,
 RBE(factor = \<decimal\>),
 EQD2Gy,
 EQD2Gy(a/b = \<decimal\>).
"""
* . ^short = "Radiotherapy Biologically Effective Dose"
* insert Contexts1
* insert Contexts5
* value[x] only Quantity
//* valueQuantity.unit 1..1
* valueQuantity.unit 1..1 
* valueQuantity.unit obeys TG263RadiobiologicMetric
// valueQuantity.unit is the display value
// Code and System are optional.  Assumed to be Gy for the above forms
* valueQuantity.value 1..1
* value[x] 1..1

