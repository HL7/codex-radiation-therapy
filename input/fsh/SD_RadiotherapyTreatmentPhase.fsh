

/*  We have an open request for a Radiotherapy Treatment Phase (USCRS-33527)
CodeSystem: ResourceIdentifierCS
Id: codexrt-resource-identifier-cs
Title: "codexrt Resource Identifier Code System"
Description: "Concepts describing instance types, to be used in the `code` element of instances. These codes were created because no appropriate concept could be found in established vocabularies. These concepts are analogous to LOINC codes for laboratory observations: they identify the type of thing an instance represents.

Please note that while these codes may imply conformance to the profiles that use them, they are not synonymous with profiles and do not serve the same purpose in a FHIR resource for several reasons:

1. An instance of a resource like Group, Observation, or Procedure may conform to multiple profiles, but may only have one 'type of thing' as determined by the value of `code` (which has a maximum cardinality of 1).
2. `Procedure.code`, `Observation.code`, and `Group.code` elements require a [CodeableConcept data type](http://www.hl7.org/fhir/datatypes.html#CodeableConcept), which can be satisfied with a code from this code system. In contrast, a profile is identified with a [canonical URL](http://www.hl7.org/fhir/structuredefinition-definitions.html#StructureDefinition.url), which is represented by a [URI data type](http://www.hl7.org/fhir/datatypes.html#uri). In other words, a profile's canonical URL belongs in the `meta.profile` element, whereas the codes in this code system belong in `Resource.code` elements.
3. The same `code` can correspond to more than one profile (although not the case here)."

* #codexrt-teleradiotherapy-treatment-phase "Teleradiotherapy Treatment Phase Resource" "Identifies a Procedure resource that describes delivery of teleradiotherapy (external beam radiation) and conforms to the TeleradiotherapyTreatmentPhase profile." // SNOMED Code Requested USCRS-33293
* #codexrt-brachytherapy-treatment-phase "Brachytherapy Treatment Phase Resource" "Identifies a Procedure resource that describes delivery of brachytherapy (internal or surface radiation) and conforms to the BrachytherapyTreatmentPhase profile." // SNOMED Code Requested USCRS-33294
*/

Profile:  RadiotherapyTreatmentPhase
Parent:   USCoreProcedure
Id:       codexrt-radiotherapy-treatment-phase
Title: "Radiotherapy Treatment Phase"
Description: "A summary of a phase of radiotherapy treatment that has been delivered. The scope is a treatment consisting of one or multiple identical fractions.  A phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same treatment volume or volumes. Because of their spatial relationship or the technique used,  all treatment volumes do not necessarily receive the same total dose during a phase."
* obeys codexrt-procedure-status
* ^status = #draft
* extension contains
    $mCODERadiotherapyModalityAndTechnique named modalityAndTechnique 0..1 MS and
    RadiotherapyFractionsDelivered named fractionsDelivered 0..1 MS and
    $mCODERadiotherapyDoseDeliveredToVolume named doseDeliveredToVolume 0..* MS
* extension[doseDeliveredToVolume].extension[fractionsDelivered] 0..0
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^short = "Not used in this profile."
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[fractionsDelivered] ^definition = "Record the fractions delivered in this phase in the top-level extension also named fractionDelivered."
* extension[doseDeliveredToVolume].extension[totalDoseDelivered] ^definition = "The total amount of radiation delivered to this volume within the scope of this phase, not including dose from any other phase. For summary over multiple phases, see Radiotherapy Course Summary."
* extension[fractionsDelivered] ^short = "Number of Fractions Delivered"
* extension[fractionsDelivered] ^definition = "The number of fractions delivered during this phase."
* basedOn MS
* basedOn ^short = "Should Reference a http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotheraphy-phase-prescription" // only Reference(RadiotherapyPhasePrescription)
* partOf MS
* partOf only Reference($mCODERadiotherapyCourseSummary)
* partOf ^definition = "The partOf element, if present, MUST reference an mCODE RadiotherapyCourseSummary-conforming Procedure resource."
* category 1.. MS
* category = SCT#108290001 // "Radiation oncology AND/OR radiotherapy (procedure)"
* code = SnomedRequestedCS#USCRS-33527  // Radiotherapy Treatment Phase (therapy/regime)
* subject only Reference($mCODECancerPatient)   // must reference mCODE Cancer Patient
* performed[x] only Period
* performedPeriod.start MS
* performedPeriod.start ^short = "The date and time when the first therapeutic radiation was delivered."
* performedPeriod.end MS
* performedPeriod.end ^short = "An end date should be present if the status is 'stopped' or 'completed'"
* bodySite from $mCODERadiotherapyTreatmentLocationVS (required)
* bodySite ^short = "All body structure(s) treated in this phase"
* bodySite ^definition = "Coded body structure(s) treated in this phase of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension."


