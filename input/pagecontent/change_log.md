### CodeX Radiation Therapy STU 1 Publication Version (soon)
These are the changes that have been made since the ballot version.

#### Narrative Changes
* Added description of [relationship between the profiles](overview.html#relationships-between-profiles)
* Added description of [revision or adaptation of prescriptions and plans](overview.html#revision-or-adaptation)
* Updated the [data elements diagram](overview.html#data-elements) to reflect changes in the profiles

#### Profile Changes
* The [relationship between the profiles](overview.html#relationships-between-profiles) have been implemented with open, profile-based slicing of the basedOn and replaces fields of the profiles. ([FHIR-38231](https://jira.hl7.org/browse/FHIR-38231))
* Treatment devices are represented as proper references to [RadiotherapyTreatmentDevice], rather than using an extension. ([FHIR-38220](https://jira.hl7.org/browse/FHIR-38220) and [FHIR-38114](https://jira.hl7.org/browse/FHIR-38114))
* Radioactive Seeds are represented with new references to [RadiotherapySeedDevice]
* Device references have been moved out of extensions into the built-in fields with the ServiceRequest and Procedure resources ([FHIR-38220](https://jira.hl7.org/browse/FHIR-38220) and [FHIR-38114](https://jira.hl7.org/browse/FHIR-38114))
* A new [RadiotherapyDiseaseStatus](StructureDefinition-codexrt-radiotherapy-disease-status.html) profile was added based on mCODE's [CancerDiseaseStatus](http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-cancer-disease-status.html) profile with an additional qualifier for [disease progression](StructureDefinition-codexrt-radiotherapy-progression-qualifier.html)).([FHIR-37922](https://jira.hl7.org/browse/FHIR-37922))
* The mCODE [DoseDeliveredToVolume](http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-dose-delivered-to-volume.html) extension has been extended with a boolean uniformFractionation flag when incorporated into the [RadiotherapyCourseSummary](StructureDefinition-codexrt-radiotherapy-course-summary.html) profile. ([FHIR-37976](https://jira.hl7.org/browse/FHIR-37976))
* An extension with a codeable concept for [reason for revision and adaptiation](ValueSet-codexrt-radiotherapy-reason-for-revision-or-adaptation-vs.html) was added to all Plan and Phase profiles. ([FHIR-38231](https://jira.hl7.org/browse/FHIR-38231))
* An extension with a [Reference to DICOM SOP Instance](StructureDefinition-codexrt-dicom-reference.html) was added to RadiotherapyTreatmentPlan and RadiotherapyTreatedPlan profiles.

#### Valueset Changes
* The [Brachytherapy Applicator Types](ValueSet-codexrt-brachytherapy-applicator-type-vs.html) valueset has been reworked using new codes requested from SNOMEDCT.
* New SNOMEDCT codes requested by the authors have replaced local codes as they have been issued.

#### Codesystem Changes
* New SNOMEDCT codes requested by the authors have replaced local codes as they have been issued.

### Capability Statement Changes
* Added a server [capabilty statement](CapabilityStatement-CodexRTServerCapabilityStatement.html) based on XRTS requirements.  Included credits for rendering.

### Added Data Dictionary
* Add a [data dictionary](dictionary.html) with the same format as the mCODE data dictionary.