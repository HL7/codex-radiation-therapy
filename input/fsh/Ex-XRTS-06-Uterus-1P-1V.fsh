// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapyTreatmentDevice-ACMETurbo3000Afterloader
InstanceOf: RadiotherapyTreatmentDevice
Description: "ACMETurbo3000 Afterloader Device"
Usage: #example
* manufacturer = "ACME"
* deviceName[model-name].name = "Turbo3000Afterloader"

RuleSet: RadiotherapyCourseSummary-XRTS-06-22B-01-Common
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#394902000 "High dose brachytherapy (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#384692006 "Intracavitary brachytherapy (procedure)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254778005 "Brachytherapy ring (physical object)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254776009 "Brachytherapy tandem (physical object)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#48341001 "Iridium-192 (substance)"
* identifier[+]
  * use = #usual //Can use general identifiers. Here j ust using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C1Uterus"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.72.842419.2121.20150602151.06.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-06-22B-01-Uterus-1P-1V)
* subject = Reference(Patient-XRTS-06-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* reasonCode = ICD10#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* usedReference[treatmentDevice] = Reference(RadiotherapyTreatmentDevice-ACMETurbo3000Afterloader)

Instance: RadiotherapyCourseSummary-XRTS-06-22B-01-Uterus-1P-1V-1Fx
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-06 after 1 fraction."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-06-22B-01-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 1
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus)
    * valueReference.display = "Cervix"
  * extension[totalDoseDelivered].valueQuantity.value = 600
  * extension[fractionsDelivered].valueUnsignedInt = 1
  * extension[uniformFractionation].valueBoolean = true
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"

Instance: RadiotherapyCourseSummary-XRTS-06-22B-01-Uterus-1P-1V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-06 completely treated."
Usage: #example
* insert RadiotherapyCourseSummary-XRTS-06-22B-01-Common
* meta.versionId = "2"
* meta.lastUpdated = "2021-09-20T13:21:17+01:00"
* extension[actualNumberOfSessions].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus)
    * valueReference.display = "Cervix"
  * extension[totalDoseDelivered].valueQuantity.value = 3000
  * extension[fractionsDelivered].valueUnsignedInt = 5
  * extension[uniformFractionation].valueBoolean = true
* status = #completed
* performedPeriod.end = "2021-09-20T13:21:17+01:00"


// --- Treated Phases ---------------------------------------------------------------------------------

RuleSet: RadiotherapyTreatedPhase-XRTS-06-22B-01-01-Primary-Common
* meta.profile = Canonical(RadiotherapyTreatedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#394902000 "High dose brachytherapy (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#384692006 "Intracavitary brachytherapy (procedure)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254778005 "Brachytherapy ring (physical object)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254776009 "Brachytherapy tandem (physical object)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#48341001 "Iridium-192 (substance)"
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.73.842419.2121.20150602151.06.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-XRTS-06-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-06-22B-01-Uterus-1P-1V)
* subject = Reference(Patient-XRTS-06-22B)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* note.text = "Free text note in Radiotherapy Treated Phase"
* usedReference[treatmentDevice] = Reference(RadiotherapyTreatmentDevice-ACMETurbo3000Afterloader)

Instance: RadiotherapyTreatedPhase-XRTS-06-22B-01-01-Primary-1Fx
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-06, Phase 1 after 1 fraction."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-06-22B-01-01-Primary-Common
* meta.versionId = "1"
* meta.lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[fractionsDelivered].valueUnsignedInt = 1
* extension[doseDeliveredToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus)
    * valueReference.display = "Cervix"
  * extension[totalDoseDelivered].valueQuantity.value = 600
* status = #in-progress
* performedPeriod.end = "2021-09-06T13:21:17+01:00"

Instance: RadiotherapyTreatedPhase-XRTS-06-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-06, Phase 1 completely treated."
Usage: #example
* insert RadiotherapyTreatedPhase-XRTS-06-22B-01-01-Primary-Common
* meta.versionId = "2"
* meta.lastUpdated = "2021-09-20T10:07:41.050+02:00"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus)
    * valueReference.display = "Cervix"
  * extension[totalDoseDelivered].valueQuantity.value = 3000
* status = #completed
* performedPeriod.end = "2021-09-20T13:21:17+01:00"

// --- Planned Course ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedCourse-XRTS-06-22B-01-Uterus-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-06."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyPlannedCourse)
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#394902000 "High dose brachytherapy (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#384692006 "Intracavitary brachytherapy (procedure)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254778005 "Brachytherapy ring (physical object)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254776009 "Brachytherapy tandem (physical object)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#48341001 "Iridium-192 (substance)"
* extension[radiotherapySessions].valueUnsignedInt = 5
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus)
    * valueReference.display = "Cervix"
  * extension[totalDose].valueQuantity.value = 3000
  * extension[fractions].valuePositiveInt = 5
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyCourseId
  * value = "C1Uterus"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.74.842419.2121.20150602151.06.01.22.1"
* status = #completed
* subject = Reference(Patient-XRTS-06-22B)
* reasonCode = ICD10#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* performer[treatmentOrSeedDevice] = Reference(RadiotherapyTreatmentDevice-ACMETurbo3000Afterloader)

// --- Planned Phases ---------------------------------------------------------------------------------

Instance: RadiotherapyPlannedPhase-XRTS-06-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-06, Phase 1."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#394902000 "High dose brachytherapy (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#384692006 "Intracavitary brachytherapy (procedure)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254778005 "Brachytherapy ring (physical object)"
  * extension[radiotherapyTreatmentApplicatorType][+].valueCodeableConcept = SnomedRequestedCS#1254776009 "Brachytherapy tandem (physical object)"
  * extension[radiotherapyEnergyOrIsotope][+].valueCodeableConcept = SCT#48341001 "Iridium-192 (substance)"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 5
* extension[radiotherapyDosePlannedToVolume]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus)
    * valueReference.display = "Cervix"
  * extension[fractionDose].valueQuantity.value = 600
  * extension[totalDose].valueQuantity.value = 3000
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPhaseId
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.75.842419.2121.20150602151.06.01.01.22.1"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-XRTS-06-22B-01-Uterus-1P-1V)
* basedOn[=].display = "C1Uterus"
* status = #completed
* subject = Reference(Patient-XRTS-06-22B)
* bodySite[+] = SCT#71252005 "Cervix uteri structure (body structure)"
* note.text = "Free text note in Radiotherapy Planned Phase"
* performer[treatmentOrSeedDevice] = Reference(RadiotherapyTreatmentDevice-ACMETurbo3000Afterloader)

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-06-22B-01-Uterus
InstanceOf: RadiotherapyVolume
Description: "Example target volume XRTS-06 'Cervix Uteri'."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Cervix" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842419.2121.20150602151.06.01.22.1" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#71252005 "Cervix uteri structure (body structure)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-06-22B)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-06-22B
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient 6"
Description: "An example patient, test case XRTS-06."
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
  * value = "XRTS-06_22B"
* name[+]
  * use = #usual
  * family = "Mother-22B"
  * given = "Jill"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1980-11-01"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
