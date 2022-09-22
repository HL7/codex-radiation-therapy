//From mCODE:
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

Extension: RadiotherapyFractionsPrescribed
Id: codexrt-radiotherapy-fractions-prescribed
Title: "Number of Prescribed Fractions"
Description: "The number of prescribed Fractions in this scope.
This extension SHALL only be present if the treatment is structured as countable Fractions, for example in a Phase Prescription."
* . ^short = "Number of Prescribed Fractions"
* value[x] ^short = "Number of Prescribed Fractions"
* value[x] only positiveInt
* value[x] 1..1

Extension: RadiotherapyFractionsPlanned
Id: codexrt-radiotherapy-fractions-planned
Title: "Number of Planned Fractions"
Description: "The number of planned Fractions in this scope.
This extension SHALL only be present if the treatment is structured as countable Fractions, for example in a Planned Phase or in a Treatment Plan."
* . ^short = "Number of Planned Fractions"
* value[x] ^short = "Number of Planned Fractions"
* value[x] only positiveInt
* value[x] 1..1

Extension: RadiotherapyFractionsDelivered
Id: codexrt-radiotherapy-fractions-delivered
Title: "Number of Delivered Fractions"
Description: "The total number of fractions (treatment divisions) actually delivered for this volume."
* . ^short = "Number of Delivered Fractions"
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
  * ^definition = "The dose prescribed per Fraction to this volume."
* extension[totalDose]
  * ^short = "Total Radiation Dose Prescribed"
  * ^definition = "The total dose prescribed to this volume within the scope of this ServiceRequest."
* extension[fractions]
  * ^short = "Number of Prescribed Fractions"
  * ^definition = "The prescribed number of Fractions to deliver the dose. See also extension RadiotherapyFractionsPrescribed which is used instead if fractions are not per volume, e.g. in Phase Prescriptions or Plans."


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
  * ^definition = "The dose Planned per Fraction to this volume."
* extension[fractions]
  * ^short = "Number of Planned Fractions"
  * ^definition = "The planned number of Fractions to deliver the dose. See also extension RadiotherapyFractionsPlanned which is used instead if fractions are the same for all volumes, i.e. in Planned Phases or Plans."


Extension: RadiotherapyEnergyOrIsotope
Id: codexrt-radiotherapy-energy-or-isotope
Title: "Energy or Isotope"
Description: "The radiation energy used for radiotherapy. The energy spectrum is characterized
by the maximum energy, the maximum accelaration voltage, or the used isotope."
* . ^short = "Radiotherapy Energy or Isotope"
* value[x] only SimpleQuantity or CodeableConcept
* valueQuantity ^short = "The spectrum of radiation energy characterized by a maximum value.
For electrons, the maximum energy is given in MeV. For photons, the maximum acceleration voltage is given in MV or kV, although those are not units of energy."
* valueQuantity from RadiotherapyEnergyUnits (required)
* valueCodeableConcept ^short = "The isotope used for radiotherapy."
* valueCodeableConcept from RadiotherapyIsotopes (extensible)
* value[x] 1..1


//Copied from https://hl7.org/fhir/R4/imagingstudy.html which contains DICOM references for all images in an imaging study.
//For general DICOM refernece we may add Series and Study UID.
//TBD if endpoint is added where the SOP Instance can be retrieved.
Extension: DicomReference
Id: codexrt-dicom-reference
Title: "Reference to DICOM SOP Instance"
Description: "A Reference to a DICOM SOP Instance."
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

Extension: RadiotherapyTreatmentDeviceReference
Id: codexrt-radiotherapy-treatment-device-reference
Title: "Treatment Device"
Description: "The device used for delivering the Radiotherapy. This can be a treatment machine or auxiliary device, for example a positioning device.
Could be used for a LINAC (external beam) or an Afterloader (brachytherapy). The device is specified
by at least its manufacturer and model name."
* . ^short = "Treatment Device"
* valueReference 1..1
* valueReference only Reference(RadiotherapyTreatmentDevice)


Extension: RadiotherapyTreatmentApplicatorType
Id: codexrt-radiotherapy-treatment-applicator-type
Title: "Treatment Applicator Type"
Description: "Radiotherapy Treatment Applicator Type."
* . ^short = "Radiotherapy Treatment Applicator Type"
* value[x] ^short = "Radiotherapy Treatment Applicator Type"
* value[x] only CodeableConcept
* value[x] from ApplicatorTypesVS (extensible)

Extension: UniformFractionation
Id: codexrt-radiotherapy-uniform-fractionation
Title: "Uniform Fractionation"
Description: "Uniform Fraction is true if fractionation was uniform, i.e. treated with same modality and dose per fraction, false if fractionation was mixed."
* . ^short = "Uniform Fractionation"
* value[x] ^short = "Uniform Fractionation Was Used"
* value[x] only boolean


// ValueSet: RadiotherapyTreatmentDeviceTypeVS
// Id: codex-radiotherapy-treatment-device-types-vs
// Title: "Radiotherapy Treatment Device Type"
// Description: "Radiotherapy Treatment Device Type"
// * SCT#228768005 "Seeds source (physical object)"
// * SnomedRequestedCS#seedsonstrand "Seeds on Strand"
// * SnomedRequestedCS#seedsonmesh "Seeds on Mesh"
// * SnomedRequestedCS#afterloader "Brachy Afterloader"

ValueSet: ApplicatorTypesVS
Id: codex-radiotherapy-applicator-types-vs
Title: "Brachytherapy Applicator Types"
Description: "Applicator Types Used in Brachytherapy"
* insert SCTCopyright
* ^experimental = false
* codes from system ApplicatorTypesCS
* ^experimental = false
* SCT#19923001 "Catheter, device (physical object)"
* SCT#228771002 "Needles source (physical object)"
* SCT#228778008 "Plaque source (physical object)"
* SCT#228768005 "Seeds source (physical object)"


Extension: RadiotherapyReasonForRevisionOrAdaptation
Id: codexrt-radiotheraphy-reason-for-revision-or-adaptation
Title: "Reason for Revision"
Description: "The reason a planned or prescribed radiotherapy treatment was revised, superceded, or adapted."
* . ^short = "Reason for Revision"
* value[x] ^short = "Reason for Revision"
* value[x] only CodeableConcept
* value[x] from ReasonForRevisionOrAdaptationVS (required)

ValueSet: ReasonForRevisionOrAdaptationVS
Id: codex-radiotherapy-reason-for-revision-or-adaptation-vs
Title: "Reason for Revision Value Set"
Description: "The reason a planned or prescribed radiotherapy treatment was revised, superceded, or adapted."
* insert SCTCopyright
* ^experimental = false
* SCT#373858009 "Radiotherapy course changed - acute radiotherapy toxicity (finding)"
* codes from system ReasonForRevisionOrAdaptationCS
