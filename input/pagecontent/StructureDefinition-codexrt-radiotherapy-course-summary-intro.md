### Usage

This profile is used to capture a course of radiotherapy delivered to a patient. A course of therapy systematically addresses a condition or set of related conditions. The course can include multiple sessions, can be divided into multiple phases, and can last for several months. A course of treatment has a distinct beginning and end. While the Radiotherapy Course Summary can be incrementally updated as the treatment progresses, the primary purpose is to summarize the entire course of treatment from beginning to end. The status element indicates whether the treatment is in progress or complete.

This profile is based on the [mCODE Radiotherapy Course Summary][mCODERadiotherapyCourseSummary] profile.  The CodexRT profile has added considerable content to the mCODE profile, and that is the focus of the documentation here.

CodexRT extends the base profile by adding:
  * Adding identifiers for official and display names
  * Extending the [mCODE DoseDeliveredToVolume] extension with:
    * booleans indicating that the dose is a Point or Primary Plan dose, and indicating whether fractionan was uniform
  * Extending the [mCODE modalityAndTechnique] extension with:
    * an EnergyOrIsotope extension
    * a TreatmentApplicatorType extension
  * Slicing the usedReference field to provide a reference to a [CodexrtRadiotherapyTreatmentDevice]
  * Slicing the focalDevice field to provide a reference to a [CodexrtRadiotherapySeedDevice]
  * Extending the bodySite field with qualifiers for location and laterality, as was done in [mCode Cancer-related Surgical Procedure][http://hl7.org/fhir/us/mcode/

### Conformance

Procedure resources whose code is SNOMEDCT  `1217123003` (Radiotherapy course of treatment (regime/therapy)) MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}