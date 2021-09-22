
CodeSystem: ResourceIdentifierCS
Id: codexrt-resource-identifier-cs
Title: "codexrt Resource Identifier Code System"
Description: "Concepts describing instance types, to be used in the `code` element of instances. These codes were created because no appropriate concept could be found in established vocabularies. These concepts are analogous to LOINC codes for laboratory observations: they identify the type of thing an instance represents.

Please note that while these codes may imply conformance to the profiles that use them, they are not synonymous with profiles and do not serve the same purpose in a FHIR resource for several reasons:

1. An instance of a resource like Group, Observation, or Procedure may conform to multiple profiles, but may only have one 'type of thing' as determined by the value of `code` (which has a maximum cardinality of 1).
2. `Procedure.code`, `Observation.code`, and `Group.code` elements require a [CodeableConcept data type](http://www.hl7.org/fhir/datatypes.html#CodeableConcept), which can be satisfied with a code from this code system. In contrast, a profile is identified with a [canonical URL](http://www.hl7.org/fhir/structuredefinition-definitions.html#StructureDefinition.url), which is represented by a [URI data type](http://www.hl7.org/fhir/datatypes.html#uri). In other words, a profile's canonical URL belongs in the `meta.profile` element, whereas the codes in this code system belong in `Resource.code` elements.
3. The same `code` can correspond to more than one profile (although not the case here)."

* #codexrt-treatment-phase "Radiotherapy Treatment Phase Resource" "Identifies a Procedure resource that describes delivery of radiotherapy and conforms to the RadiotherapyTreatmentPhase profile." // SNOMED Code to be requested
* #codexrt-course-prescription	"Radiotherapy Course Prescription" 	"Identifies a ServiceRequest resource for a complete Course of Radiotherapy treatment."
* #codexrt-phase-prescription "Radiotherapy Phase Prescription" "Identifies a ServiceRequest resource for a single Phase of radiotherapy treatment."
* #codexrt-treatment-plan	"Radiotherapy Treatment Plan" 	"Identifies a ServiceRequest resource for one Radiotherapy Treatment Plan."
