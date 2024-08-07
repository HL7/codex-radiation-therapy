### CodeX Radiation Therapy May 2024 STU2 Ballot Reconciliation
* IG Dependencies
  * Changed dependence on mCODE to STU4 (currently the [CI build](https://build.fhir.org/ig/HL7/fhir-mCODE-ig))
  * Added dependence on [Adverse Event Clinical Research IG STU1.0.1](https://hl7.org/fhir/uv/ae-research-ig/)
* [FHIR-45531](https://jira.hl7.org/browse/FHIR-45531):  Added reference to Device to AdverseEvent.contributor
* [FHIR-45576](https://jira.hl7.org/browse/FHIR-45576):  Adopt Vulcan Severity and Grade Extensions
* [FHIR-45491](https://jira.hl7.org/browse/FHIR-45491):  Added new profiles to Capability Statement
* [FHIR-45499](https://jira.hl7.org/browse/FHIR-45499):  Added Surface Guided Code to IGRT Modality ValueSet
* [FHIR-45489](https://jira.hl7.org/browse/FHIR-45489):  Use active SNOMED CT code for event type
* [FHIR-45492](https://jira.hl7.org/browse/FHIR-45492):  Added MS to [Radiotherapy Course Summary](StructureDefinition-codexrt-radiotherapy-course-summary.html).statusReason field 
* [FHIR-46243](https://jira.hl7.org/browse/FHIR-46243):  Added a DICOM Treatment Session UID (300A,0700) identifier to [Radiotherapy Treatment Session](StructureDefinition-codexrt-radiotherapy-treatment-session.html) 

### CodeX Radiation Therapy May 2024 STU2 Ballot
These changes were ballotted in May 2024:

* Eliminated local code system for Adverse Event Stages or Grades, and used NCI Thesaurus terms instead.   Impacts [AdverseEventSeverityOrGradeVS](https://hl7.org/fhir/us/codex-radiation-therapy/ValueSet-codexrt-radiotheraphy-adverse-event-severity-or-gradeVS.html).
* Dependency Changes
  * Changed mCODE dependency to [STU3]({{site.data.fhir.ver.fhirmcode}}/index.html)
  * Changed USCore dependency to [5.0.1]({{site.data.fhir.ver.hl7fhiruscore}}/index.html)
* USCore Changes
  * ServiceRequest profiles are now based on USCoreServiceRequest.
* Extension Contexts
  * All extension contexts have been tightened ([FHIR-43335](https://jira.hl7.org/browse/FHIR-43335)).
* Rename of Disease Progression Qualifier Extension
  * [Disease Progression Qualifier](https://hl7.org/fhir/us/codex-radiation-therapy/STU1/StructureDefinition-codexrt-radiotherapy-progression-qualifier.html) extension has been renamed to [Radiotherapy Disease Progression Qualifier](StructureDefinition-codexrt-radiotherapy-disease-progression-qualifier.html).
* Additions
  * Added [Radiotherapy Treated Fraction](StructureDefinition-codexrt-radiotherapy-treated-fraction.html) and [Radiotherapy Treatment Session](StructureDefinition-codexrt-radiotherapy-treatment-session.html) profiles to model treatment sessions ([FHIR-42773](https://jira.hl7.org/browse/FHIR-42773)).
  * Added extension [Intrafraction Verification](StructureDefinition-codexrt-intrafraction-verification.html) to all radiotherapy Procedures and ServiceRequests. This extension is used to annotate the procedure that is used to verify the position of the patient during treatment fractions.
  * Added a [Radiobiologic Metric](StructureDefinition-codexrt-radiobiologic-metric.html) extension to capture a radiobiologic metric of effective dose, as defined by the TG-263. The extension has been added to all ServiceRequest and Procedure profiles, i.e. [Radiotherapy Course Prescription](StructureDefinition-codexrt-radiotherapy-course-prescription.html), [Radiotherapy Phase Prescription](StructureDefinition-codexrt-radiotherapy-phase-prescription.html), [Radiotherapy Plan Prescription](StructureDefinition-codexrt-radiotherapy-plan-prescription.html), [Radiotherapy Planned Course](StructureDefinition-codexrt-radiotherapy-planned-course.html), [Radiotherapy Planned Phase](StructureDefinition-codexrt-radiotherapy-planned-phase.html), [Radiotherapy Treatment Plan](StructureDefinition-codexrt-radiotherapy-treatment-plan.html), [Radiotherapy Course Summary](StructureDefinition-codexrt-radiotherapy-course-summary.html), [Radiotherapy Treated Phase](StructureDefinition-codexrt-radiotherapy-treated-phase.html), [Radiotherapy Treated Plan](StructureDefinition-codexrt-radiotherapy-treated-plan.html), and [Radiotherapy Treated Fraction](StructureDefinition-codexrt-radiotherapy-treated-fraction.html).
* Narrative Changes
  * Extended the [overview](overview.html) with explanations of the added [Radiotherapy Treated Fraction](StructureDefinition-codexrt-radiotherapy-treated-fraction.html) and [Radiotherapy Treatment Session](StructureDefinition-codexrt-radiotherapy-treatment-session.html) profiles, including the newly added section [Session and Fraction Numbering](overview.html#session-and-fraction-numbering).
  * Changed references from outdated "Operational Ontology for Radiation Oncology (OORO)" to "Operational Ontology for Oncology (O3)" ([FHIR-41682](https://jira.hl7.org/browse/FHIR-41682)).
* Profile Changes
  * Procedure.category and ServiceRequest.category: [mCODE STU2.1 RadiotherapyCourseSummary](https://hl7.org/fhir/us/mcode/STU2.1/StructureDefinition-mcode-radiotherapy-course-summary.html) had a required Procedure.category value for RadiotherapyCourseSummary that used a SNOMEDCT code ([108290001 Radiation oncology AND/OR radiotherapy (procedure)](https://dailybuild.ihtsdotools.org/?perspective=full&conceptId1=108290001&edition=MAIN&release=&languages=en)) that has become inactive.  mCODE STU3 dropped the Procedure.category binding completely.   CodeXRT STU1 required all ServiceRequest.category to include the same SNOMEDCT code.   In CodeXRT STU2, a requirement for a category code has been added to all of the Procedure and ServiceRequest profiles with a required binding to a valueset that includes the old code as well as a new SNOMEDCT code ([1287742003 "Radiotherapy (procedure)"](https://dailybuild.ihtsdotools.org/?perspective=full&conceptId1=1287742003&edition=MAIN&release=&languages=en)).   An invariant warns if the old code is used.
  * Fixed typo (radiotheraphy) in extension url for [Reason for Revision or Adaptation](StructureDefinition-codexrt-radiotherapy-reason-for-revision-or-adaptation.html) ([FHIR-42893](https://jira.hl7.org/browse/FHIR-42893)). Fixed the same typo in Radiotherapy Adverse Event Grade, and Adverse Event Severity or Grade Value Set ([FHIR-43372](https://jira.hl7.org/browse/FHIR-43372)).
  * In the [Radiotherapy Volume](StructureDefinition-codexrt-radiotherapy-volume.html), changed the cardinality of the identifier slice for display name from the 0..1 of mCODE to 1..1. In CodeX RT, the display name is mandatory. The identifier cardinality was already 2..* to reflect the two mandatory slices ([FHIR-41885](https://jira.hl7.org/browse/FHIR-41885)).
* Changed Binding Strengths 
  * As discussed and changed in mCODE 3.0.0, some binding strengths were relaxed because required bindings were a barrier to broader implementation (CodeX RT finding [FHIR-42775](https://jira.hl7.org/browse/FHIR-42775), corresponding mCODE change [FHIR-41503](https://jira.hl7.org/browse/FHIR-41503)). The binding strength was changed from required to extensible on the following elements.
    * bodySite in all Procedure and ServiceRequest (as in the [mCODE STU3 Radiotherapy Course Summary]({{site.data.fhir.ver.fhirmcode}}/StructureDefinition-mcode-radiotherapy-course-summary.html)).
    * [Reason for Revision or Adaptation](StructureDefinition-codexrt-radiotherapy-reason-for-revision-or-adaptation.html)
    * [Free-Breathing Motion Management Technique](StructureDefinition-codexrt-radiotherapy-free-breathing-motion-mgmt-technique.html)
    * [Image Guided Radiotherapy (IGRT)](StructureDefinition-codexrt-image-guided-radiotherapy-modality.html)
* ValueSet Changes
  * Redefine Adverse Event Severity or Grade Value Set using NCI Thesaurus terms for the CTCAE grades of adverse effects instead of an unnecessary local code system.  This eliminates a local code system [Severity or Grade CodeSystem based on CTCAE ](https://hl7.org/fhir/us/codex-radiation-therapy/STU1/CodeSystem-codexrt-radiotheraphy-adverse-event-severity-or-gradeCS.html).

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
* Treatment devices are represented as proper references to [Radiotherapy Treatment Device](StructureDefinition-codexrt-radiotherapy-treatment-device.html), rather than using an extension. ([FHIR-38220](https://jira.hl7.org/browse/FHIR-38220) and [FHIR-38114](https://jira.hl7.org/browse/FHIR-38114))
* Radioactive Seeds are represented with new references to [Radiotherapy Seed Device](StructureDefinition-codexrt-radiotherapy-seed-device.html)
* Device references have been moved out of extensions into the built-in fields with the ServiceRequest and Procedure resources ([FHIR-38220](https://jira.hl7.org/browse/FHIR-38220) and [FHIR-38114](https://jira.hl7.org/browse/FHIR-38114))
* A new [RadiotherapyDiseaseStatus](StructureDefinition-codexrt-radiotherapy-disease-status.html) profile was added based on mCODE's [CancerDiseaseStatus]({{site.data.fhir.ver.fhirmcode}}/StructureDefinition-mcode-cancer-disease-status.html) profile with an additional [qualifier](StructureDefinition-codexrt-radiotherapy-disease-progression-qualifier.html) for disease progression.([FHIR-37922](https://jira.hl7.org/browse/FHIR-37922))
* The [mCODE Radiotherapy Dose Delivered To Volume] extension has been extended with
a boolean uniformFractionation flag when incorporated into the [RadiotherapyCourseSummary](StructureDefinition-codexrt-radiotherapy-course-summary.html) profile. ([FHIR-37976](https://jira.hl7.org/browse/FHIR-37976))
* The extensions [CodeX RT Radiotherapy Dose Planned To Volume] and [mCODE Radiotherapy Dose Delivered To Volume] were extended in all profiles in which they were used, i.e. [RadiotherapyPlannedCourse](StructureDefinition-codexrt-radiotherapy-planned-course.html), [RadiotherapyPlannedPhase](StructureDefinition-codexrt-radiotherapy-planned-phase.html), [RadiotherapyTreatmentPlan](StructureDefinition-codexrt-radiotherapy-treatment-plan.html), [RadiotherapyCourseSummary](StructureDefinition-codexrt-radiotherapy-course-summary.html), [RadiotherapyTreatedPhase](StructureDefinition-codexrt-radiotherapy-treated-phase.html), and [RadiotherapyTreatedPlan](StructureDefinition-codexrt-radiotherapy-treated-plan.html), with the following boolean flags.
  * [Primary Plan Dose](StructureDefinition-codexrt-radiotherapy-primary-plan-dose.html) flag, which indicates whether the dose is the primary plan dose in a radiotherapy treatment plan.
  * [Point Dose](StructureDefinition-codexrt-radiotherapy-point-dose.html) flag, which indicates whether the dose is determined at a single point.

* An extension with a codeable concept for [reason for revision and adaptation](ValueSet-codexrt-radiotherapy-reason-for-revision-or-adaptation-vs.html) was added to all Plan and Phase profiles. ([FHIR-38231](https://jira.hl7.org/browse/FHIR-38231))
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
* Added a server [Capability Statement](CapabilityStatement-CodexRTServerCapabilityStatement.html) based on XRTS requirements.  Included credits for rendering.

### Added Data Dictionary

* Added a [data dictionary](dictionary.html) with the same format as the mCODE data dictionary.

{% include markdown-link-references.md %}


