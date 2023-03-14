//From mCODE:
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

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

Extension: RadiotherapyFractionsDelivered
Id: codexrt-radiotherapy-fractions-delivered
Title: "Number of Delivered Fractions"
Description: "The total number of fractions (treatment divisions) actually delivered for this volume."
* . ^short = "Number of Delivered Fractions"
* . 0..1
* value[x] ^short = "Number of Delivered Fractions"
* value[x] only unsignedInt //as opposed to planned or prescribed fractions, delivered fractions can be zero.
* value[x] 1..1

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


Extension: RadiotherapyEnergyOrIsotope
Id: codexrt-radiotherapy-energy-or-isotope
Title: "Energy or Isotope"
Description: "The radiation energy used for radiotherapy. The energy spectrum is characterized
by the maximum energy, the maximum accelaration voltage, or the used isotope."
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

Extension: RadiotherapyTreatmentApplicatorType
Id: codexrt-radiotherapy-treatment-applicator-type
Title: "Treatment Applicator Type"
Description: "Radiotherapy Treatment Applicator Type."
* . ^short = "Radiotherapy Treatment Applicator Type"
* value[x] ^short = "Radiotherapy Treatment Applicator Type"
* value[x] only CodeableConcept
* value[x] from BrachytherapyApplicatorTypeVS (extensible)

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

Extension: RadiotherapyReasonForRevisionOrAdaptation
Id: codexrt-radiotheraphy-reason-for-revision-or-adaptation
Title: "Reason for Revision or Adaptation"
Description: "The reason a planned or prescribed radiotherapy treatment was revised, superceded, or adapted."
* . ^short = "Reason for Revision or Adaptation"
* value[x] ^short = "Reason for Revision or Adaptation"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from RadiotherapyReasonForRevisionOrAdaptationVS (required)

Extension: CourseInvolvesReirradiation
Id: codexrt-radiotherapy-course-involves-reirradiation
Title: "Course Involves Reirradiation"
Description: "This flag is true if the radiotherapy course of treatment involves reirradiation of targets or organs at risk that were already irradiated in previous courses."
* . ^short = "Course Involves Reirradiation"
* . 0..1
* value[x] ^short = "Course Involves Reirradiation"
* value[x] only boolean

Extension: ImageGuidanceModality
Id: codexrt-radiotherapy-image-guidance-modality
Description: "The modality and associated energy used for Image Guided Radiotherapy (IGRT)"
Title: "Image Guidance Modality"
* . ^short = "Image Guidance Modality"
* obeys ImageGuidanceEnergyAllowed
* extension contains
    modality 1..1 MS and
    energy 0..1 MS
* extension[modality].value[x] from ImageGuidanceModalityVS (required)
* extension[energy].value[x] from ImageGuidanceEnergyUnitVS (required)

Invariant: ImageGuidanceEnergyAllowed
Description: "Energy is only allowed for X-Ray, Fluorograph, or CT Modalities."
Severity: #error
//* SCT#168537006 "Plain radiography (procedure)"  // XRay
//* SCT#44491008 "Fluoroscopy (procedure)"         // Flurograph
//* SCT#77477000 "Computed tomography (procedure)" // CT
//* SCT#717193008 "Cone beam computed tomography (procedure)" // Cone beam CT
Expression: "extension.where(url = 'energy').exists() implies \n
               (extension.where(url = 'modality').exists() and \n
                (extension.where(url = 'modality').value.exists(\n
                    (coding.system = 'http://snomed.info/sct') and \n
                      (coding.code = '168537006' or \n
                      coding.code = '44491008' or \n
                      coding.code = '77477000' or \n
                      coding.code = '717193008' \n
                    )\n
                  )\n
                )\n
              )"
XPath: "true()"
