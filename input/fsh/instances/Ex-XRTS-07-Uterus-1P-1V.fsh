// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapySeedDevice-Mesh
InstanceOf: RadiotherapySeedDevice
Description: "Mesh of brachytherapy seeds."
Usage: #example
* type =  SCT#1254768007 "Radioactive seed embedded in mesh (physical object)"
* patient = Reference(Patient-XRTS-07-22B)

RuleSet: RadiotherapyCourseSummary-XRTS-07-22B-01-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#169359004 "Internal radiotherapy - permanent seeds (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#113120007 "Interstitial brachytherapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#68630002 "Iodine-125 (substance)"
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Uterus"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842419.2121.20150602151.07.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-07-22B-01-Uterus-1P-1V)
* subject = Reference(Patient-XRTS-07-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* reasonCode = ICD10#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* insert $CodexRTCategoryCode

Instance: RadiotherapyCourseSummary-XRTS-07-22B-01-Uterus-1P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-07 after 1 fraction."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-07-22B-01-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-07-22B-01-Uterus)
    * valueReference.display = "Uterus"
  * extension[totalDoseDelivered].valueQuantity.value = 14500
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
* status = #completed
* performedPeriod.end = "2021-09-06T13:21:17+01:00"
* focalDevice[seedDevice].manipulated = Reference(RadiotherapySeedDevice-Mesh)
* insert $CodexRTCategoryCode

// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-07-22B-01-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#169359004 "Internal radiotherapy - permanent seeds (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#113120007 "Interstitial brachytherapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#68630002 "Iodine-125 (substance)"
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842419.2121.20150602151.07.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-07-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-07-22B-01-Uterus-1P-1V)
* subject = Reference(Patient-XRTS-07-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* focalDevice[seedDevice].manipulated = Reference(RadiotherapySeedDevice-Mesh)
* insert $CodexRTCategoryCode

Instance: RadiotherapyTreatedPhase-XRTS-07-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-07, Phase 1 after 1 fraction."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-07-22B-01-01-Primary-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-07-22B-01-Uterus)
    * valueReference.display = "Uterus"
  * extension[totalDoseDelivered].valueQuantity.value = 14500
* status = #completed
* performedPeriod.end = "2021-09-06T13:21:17+01:00"
* insert $CodexRTCategoryCode
// --- Planned Course ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-07-22B-01-Uterus-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-07."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#169359004 "Internal radiotherapy - permanent seeds (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#113120007 "Interstitial brachytherapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#68630002 "Iodine-125 (substance)"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-07-22B-01-Uterus)
    * valueReference.display = "Uterus"
  * extension[totalDose].valueQuantity.value = 14500
  * extension[fractions].valuePositiveInt = 1
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "C1Uterus"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842419.2121.20150602151.07.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-07-22B)
* reasonCode = ICD10#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* performer[treatmentOrSeedDevice] = Reference(RadiotherapySeedDevice-Mesh)
* insert $CodexRTCategoryCodeRequired

// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-07-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-07, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#169359004 "Internal radiotherapy - permanent seeds (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#113120007 "Interstitial brachytherapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#68630002 "Iodine-125 (substance)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 1
* extension[radiotherapyDosePlannedToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-07-22B-01-Uterus)
    * valueReference.display = "Uterus"
  * extension[fractionDose].valueQuantity.value = 14500
  * extension[totalDose].valueQuantity.value = 14500
* identifier[displayName]
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842419.2121.20150602151.07.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-07-22B-01-Uterus-1P-1V)
* basedOn[=].display = "C1Uterus"
* status = #completed
* subject = Reference(Patient-XRTS-07-22B)
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* performer[treatmentOrSeedDevice] = Reference(RadiotherapySeedDevice-Mesh)
* insert $CodexRTCategoryCodeRequired

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-07-22B-01-Uterus
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-07 'Cervix Uteri'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Cervix Uteri" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842419.2121.20150602151.07.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#71252005 "Cervix uteri structure (body structure)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-07-22B)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-07-22B
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient 7"
Description: "An example patient, test case XRTS-07."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = $mCODECancerPatient
* meta.profile[+] = USCorePatient
* extension[us-core-birthsex].valueCode = 	http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F
* identifier[+]
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-07_22B"
* name[+]
  * use = #usual
  * family = "Mother-22B"
  * given = "Jane"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1980-11-02"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"

Instance: RadiotherapyAdverseEvent-XRTS-07-22B
InstanceOf: RadiotherapyAdverseEvent
Title: "Example Adverse Event from Radiotherapy"
Description: "Adverse Event, Nausea following course of treatment."
* subject = Reference(Patient-XRTS-07-22B)
* suspectEntity.instance = Reference(RadiotherapyCourseSummary-XRTS-07-22B-01-Uterus-1P-1V)
* event = NCIT#C146764  "Nausea"
* extension[severity-or-grade].valueCodeableConcept = NCIT#C41338 "Mild Adverse Event"
