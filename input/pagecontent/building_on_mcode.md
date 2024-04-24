CodeX RT extends the capabilities of [mCODE](https://hl7.org/fhir/us/mcode/STU3) by incorporating and extending profiles, extensions, and ValueSets defined in mCODE.
Here we provide a descriptive summary of the reuse of mCODE resources. The CodeX RT profiles are the definitive source of this dependence.

### Profiles and Extensions
* [mCODE Radiotherapy Course Summary]
  * CodeX RT adds a [CodeX RT Radiotherapy Course Summary][codexRTRadiotherapyCourseSummary] profile that extends the base profile by adding:
    * Adding identifiers for official and display names
    * Extending the [mCODE Radiotherapy Dose Delivered To Volume] extension with:
      * booleans indicating that the dose is a Point or Primary Plan dose, and indicating whether the fractionation was uniform
    * Extending the [mCODE Radiotherapy Modality And Technique] extension with:
      * an EnergyOrIsotope extension
      * a TreatmentApplicatorType extension
    * Slicing the usedReference field to provide a reference to a [CodeX RT Radiotherapy Treatment Device][CodexrtRadiotherapyTreatmentDevice]
    * Slicing the focalDevice field to provide a reference to a [CodeX RT Radiotherapy Seed Device][CodexrtRadiotherapySeedDevice]
    * Extending the bodySite field with qualifiers for location and laterality, as was done in [mCODE Cancer-Related Surgical Procedure]
    * Slicing basedOn to link the summary to an associated plan and/or prescription
* [mCODE Cancer Disease Status]
  * This profile is the base for the [CodeX RT Radiotherapy Disease Status][CodexRTRadiotherapyDiseaseStatus] profile
  * CodeX RT extends the base profile by adding:
    * Adding a top-level extension to reference a [CodeX RT Radiotherapy Volume][CodeXRTRadiotherapyVolume]
    * Extending the valueCodeableConcept field with a [CodeX RT Radiotherapy Disease Progression Qualifier][RadiotherapyDiseaseProgressionQualifier] extension
* [mCODE Radiotherapy Volume]
  * This profile is the base for the [CodeX RT Radiotherapy Volume][CodexRTRadiotherapyVolume]
  * CodeX RT extends the base profile by:
    * Adding a DICOM identifier
* [mCODE Radiotherapy Modality And Technique]
  * This extension is used in all 10 CodeX RT profiles based on original or filler order ServiceRequests and Procedure
  * CodeX RT extends this extension with:
    * an EnergyOrIsotope extension
    * a TreatmentApplicatorType extension
* [mCODE Radiotherapy Dose Delivered To Volume]
  * This extension is used in the 4 CodeX RT profiles based on Procedure
  * CodeX RT extends this extension with:
    * boolean extensions indicating that the dose is a Point or Primary Plan dose, and indicating whether the fractionation was uniform
    * extensions to capture the delivered fractions and total delivered dose
* [mCODE Procedure Intent]
  * This is incorporated as is into the [CodeX RT Radiotherapy Course Prescription] and [CodeX RT Radiotherapy Planned Course] profiles

### Value Sets
* [mCODE Radiotherapy Treatment Location ValueSet]:
  * This ValueSet, based on the work of TG-263 is the basis for specifying treatment locations using SNOMEDCT codes and qualifiers
* [mCODE Cancer Disorder ValueSet]
  * This ValueSet is used to specify the reasonCode for radiotherapy in the 9 CodeX RT profiles based on ServiceRequests and Procedures

{% include markdown-link-references.md %}