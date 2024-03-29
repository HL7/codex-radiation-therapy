CodeX RT extends the capabilities of [mCODE](https://hl7.org/fhir/us/mcode/STU3) by incorporating and extending profiles, extensions, and ValueSets defined in mCODE.
Here we provide a descriptive summary of the reuse of mCODE resources. The CodeX RT profiles are the definitive source of this dependence.

### Profiles and Extensions
* [mCODE Radiotherapy Course Summary]
  * This profile is the base for CodeX RT Profile [CodeX RT Radiotherapy Course Summary][codexRTRadiotherapyCourseSummary]
  * CodeX RT extends the base profile by adding:
    * Adding identifiers for official and display names
    * Extending the [mCODE DoseDeliveredToVolume] extension with:
      * booleans indicating that the dose is a Point or Primary Plan dose, and indicating whether the fractionation was uniform
    * Extending the [mCODE modalityAndTechnique] extension with:
      * an EnergyOrIsotope extension
      * a TreatmentApplicatorType extension
    * Slicing the usedReference field to provide a reference to a [CodexrtRadiotherapyTreatmentDevice]
    * Slicing the focalDevice field to provide a reference to a [CodexrtRadiotherapySeedDevice]
    * Extending the bodySite field with qualifiers for location and laterality, as was done in [mCode Cancer-related Surgical Procedure]
    * Slicing basedOn to link the summary to an associated plan and/or prescription
* [mCODE CancerDiseaseStatus]
  * This profile is the base for the [CodeX RT Radiotherapy Disease Status][CodexRTRadiotherapyDiseaseStatus] profile
  * CodeX RT extends the base profile by adding:
    * Adding a top-level extension to reference a [CodeX RT Radiotherapy Volume][CodeXRTRadiotherapyVolume]
    * Extending the valueCodeableConcept field with a [disease progression qualifier] extension
* [mCODE RadiotherapyVolume]
  * This profile is the base for the [CodeX RT Radiotherapy Volume][CodexRTRadiotherapyVolume]
  * CodeX RT extends the base profile by:
    * Adding a DICOM identifier
* [mCODE modalityAndTechnique]
  * This extension is used in all 9 CodeX RT profiles based on original or filler order ServiceRequests and Procedure
  * CodeX RT extends this extension with:
    * an EnergyOrIsotope extension
    * a TreatmentApplicatorType extension
* [mCODE DoseDeliveredToVolume]
  * This extension is used in the 3 CodeX RT profiles based on Procedure
  * CodeX RT extends this extension with:
    * boolean extensions indicating that the dose is a Point or Primary Plan dose, and indicating whether the fractionation was uniform
    * extensions to capture the delivered fractions and total delivered dose
* [mCODE ProcedureIntent]
  * This is incorporated as is into the [CodexrtRadiotherapyCoursePrescription] and [CodexrtRadiotherapyPlannedCourse] profiles

### Value Sets
* [mCODE Radiotherapy Treatment Location ValueSet]:
  * This ValueSet, based on the work of TG-263 is the basis for specifying treatment locations using SNOMEDCT codes and qualifiers
* [mCODE Cancer Disorder ValueSet]
  * This ValueSet is used to specify the reasonCode for radiotherapy in the 9 CodeX RT profiles based on ServiceRequests and Procedures

{% include markdown-link-references.md %}