### CodeX Radiation Therapy STU 1.1 Work in Progress
These are the unballoted changes that were made after STU 1 publication.

#### Profile Additions
* Added [Radiotherapy Treated Fraction](StructureDefinition-codexrt-radiotherapy-treated-fraction.html) and [Radiotherapy Treatment Session](StructureDefinition-codexrt-radiotherapy-treatment-session.html) profiles to model treatment sessions.  ([FHIR-42773](https://jira.hl7.org/browse/FHIR-42773))

#### Narrative Changes
* Extended the [overview](overview.html) with exaplanations of the added [Radiotherapy Treated Fraction](StructureDefinition-codexrt-radiotherapy-treated-fraction.html) and [Radiotherapy Treatment Session](StructureDefinition-codexrt-radiotherapy-treatment-session.html) profiles, including the newly added section [Session and Fraction Numbering](overview.html#session-and-fraction-numbering).
* Changed references from outdated "Operational Ontology for Radiation Oncology (OORO)" to "Operational Ontology for Oncology (O3)" ([FHIR-41682](https://jira.hl7.org/browse/FHIR-41682)).

#### Profile Changes
* Added required code for Procedure.category in [RadiotherapyCourseSummary](StructureDefinition-codexrt-radiotherapy-course-summary.html). The category was inherited from mCODE [RadiotherapyCourseSummary](https://hl7.org/fhir/us/mcode/STU2.1/StructureDefinition-mcode-radiotherapy-course-summary.html) up to mCODE 2.1.0, but removed in mCODE 3.0.0. Now CodeX RT defines the category for Radiotherapy Course Summary instead of inheriting from mCODE ([FHIR-41764](https://jira.hl7.org/browse/FHIR-41764)).
* In the [RadiotherapyVolume](StructureDefinition-codexrt-radiotherapy-volume.html), changed the cardinality of the identifier slice for display name from the 0..1 of mCODE to 1..1. In CodeX RT, the display name is mandatory. The identifier cardinality was already 2..* to reflect the two mandatory slices ([FHIR-41885](https://jira.hl7.org/browse/FHIR-41885)).

### CodeX Radiation Therapy STU1 Publication Version
These are the changes that were made during ballot reconciliation.

#### Narrative Changes
* Added description of [relationship between the profiles](overview.html#relationships-between-profiles)
* Added description of [revision or adaptation of prescriptions and plans](overview.html#revision-or-adaptation)
* Updated the [data elements diagram](overview.html#data-elements) to reflect changes in the profiles

#### Profile Additions
* Added [Radiotherapy Adverse Event](StructureDefinition-codexrt-radiotherapy-adverse-event.html) profile based on Vulcan and CTCAE, along with associated ValueSets ([FHIR-40654](https://jira.hl7.org/browse/FHIR-40654))

#### Profile Changes
* The [relationship between the profiles](overview.html#relationships-between-profiles) have been implemented with open, profile-based slicing of the basedOn and replaces fields of the profiles. ([FHIR-38231](https://jira.hl7.org/browse/FHIR-38231))
* Treatment devices are represented as proper references to [RadiotherapyTreatmentDevice], rather than using an extension. ([FHIR-38220](https://jira.hl7.org/browse/FHIR-38220) and [FHIR-38114](https://jira.hl7.org/browse/FHIR-38114))
* Radioactive Seeds are represented with new references to [RadiotherapySeedDevice]
* Device references have been moved out of extensions into the built-in fields with the ServiceRequest and Procedure resources ([FHIR-38220](https://jira.hl7.org/browse/FHIR-38220) and [FHIR-38114](https://jira.hl7.org/browse/FHIR-38114))
* A new [RadiotherapyDiseaseStatus](StructureDefinition-codexrt-radiotherapy-disease-status.html) profile was added based on mCODE's [CancerDiseaseStatus](https://hl7.org/fhir/us/mcode/STU2.1/StructureDefinition-mcode-cancer-disease-status.html) profile with an additional qualifier for [disease progression](StructureDefinition-codexrt-radiotherapy-progression-qualifier.html)).([FHIR-37922](https://jira.hl7.org/browse/FHIR-37922))
* The mCODE [DoseDeliveredToVolume](https://hl7.org/fhir/us/mcode/STU2.1/StructureDefinition-mcode-radiotherapy-dose-delivered-to-volume.html) extension has been extended with
a boolean uniformFractionation flag when incorporated into the [RadiotherapyCourseSummary](StructureDefinition-codexrt-radiotherapy-course-summary.html) profile. ([FHIR-37976](https://jira.hl7.org/browse/FHIR-37976))
* The extensions [DosePlannedToVolume](StructureDefinition-codexrt-radiotherapy-dose-planned-to-volume.html) and [DoseDeliveredToVolume](https://hl7.org/fhir/us/mcode/STU2.1/StructureDefinition-mcode-radiotherapy-dose-delivered-to-volume.html) were extended in all profiles in which they were used, i.e. [RadiotherapyPlannedCourse](StructureDefinition-codexrt-radiotherapy-planned-course.html), [RadiotherapyPlannedPhase](StructureDefinition-codexrt-radiotherapy-planned-phase.html), [RadiotherapyTreatmentPlan](StructureDefinition-codexrt-radiotherapy-treatment-plan.html), [RadiotherapyCourseSummary](StructureDefinition-codexrt-radiotherapy-course-summary.html), [RadiotherapyTreatedPhase](StructureDefinition-codexrt-radiotherapy-treated-phase.html), and [RadiotherapyTreatedPlan](StructureDefinition-codexrt-radiotherapy-treated-plan.html), with the following boolean flags.
  * [Primary Plan Dose](StructureDefinition-codexrt-radiotherapy-primary-plan-dose.html) flag, which indicates whether the dose is the primary plan dose in a radiotherapy treatment plan.
  * [Point Dose](StructureDefinition-codexrt-radiotherapy-point-dose.html) flag, which indicates whether the dose is determined at at a single point.

* An extension with a codeable concept for [reason for revision and adaptiation](ValueSet-codexrt-radiotherapy-reason-for-revision-or-adaptation-vs.html) was added to all Plan and Phase profiles. ([FHIR-38231](https://jira.hl7.org/browse/FHIR-38231))
* An extension with a [Reference to DICOM SOP Instance](StructureDefinition-codexrt-dicom-reference.html) was added to RadiotherapyTreatmentPlan and RadiotherapyTreatedPlan profiles.
* An extension with a boolean for [course involves reirradiation](StructureDefinition-codexrt-radiotherapy-course-involves-reirradiation.html) was added to the 3 course-level profiles.
* An extension supporting [Image Guided Radiotherapy (IGRT)](StructureDefinition-codexrt-image-guided-radiotherapy-modality.html) was added everywhere Therapeutic Modality and Technique was present. This is supported by a ValueSet of IGRT [modalities](ValueSet-codexrt-image-guided-radiotherapy-modality-vs.html) and [energies](ValueSet-codexrt-image-guided-radiotherapy-energy-unit-vs.html).
* Extensions [Respiratory Motion Management](StructureDefinition-codexrt-radiotherapy-respiratory-motion-management.html) and [Free-Breathing Motion Management Technique](StructureDefinition-codexrt-radiotherapy-free-breathing-motion-mgmt-technique.html) were added everywhere Therapeutic Modality and Technique was present. Those are supported by the ValueSets [Motion Management](ValueSet-codexrt-radiotherapy-respiratory-motion-management-vs.html) and [Free Breathing Motion Management Technique](ValueSet-codexrt-radiotherapy-free-breathing-motion-mgmt-technique-vs.html).

#### Valueset Changes
* The [Brachytherapy Applicator Types](ValueSet-codexrt-brachytherapy-applicator-type-vs.html) ValueSet has been reworked using new codes requested from SNOMEDCT.
* New SNOMEDCT codes requested by the authors have replaced local codes as they have been issued.

#### Codesystem Changes
* New SNOMEDCT codes requested by the authors have replaced local codes as they have been issued.

### Capability Statement Changes
* Added a server [capabilty statement](CapabilityStatement-CodexRTServerCapabilityStatement.html) based on XRTS requirements.  Included credits for rendering.

### Added Data Dictionary
* Add a [data dictionary](dictionary.html) with the same format as the mCODE data dictionary.