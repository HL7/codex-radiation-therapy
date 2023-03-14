This profile is used to capture a prescription for a course of radiotherapy delivered to a patient. A course of therapy systematically addresses a condition or set of related conditions. The course can include multiple sessions, can be divided into multiple phases, and can last for several months. A course of treatment has a distinct beginning and end.

This profile is based on the [FHIR Service Request resource][ServiceRequest] profile.  The CodexRT profile has added considerable content to the Service Request, and that is the focus of the documentation here.

CodexRT extends the base resource by adding:
  * Adding identifiers for official and display names
  * Adding extensions for [mCodeTreatmentIntent] and [dose prescribed to volume]
  * Extending the [mCODE modalityAndTechnique] extension with:
    * an EnergyOrIsotope extension
    * a TreatmentApplicatorType extension
  * Extending the bodySite field with qualifiers for location and laterality, as was done in [mCode Cancer-related Surgical Procedure][http://hl7.org/fhir/us/mcode/

### Conformance

ServiceRequest resources whose code is `codexrt-radiotherapy-course-prescription` (code system `http://hl7.org/fhir/us/mcode/CodeSystem/mcode-resource-identifier-cs`) MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.