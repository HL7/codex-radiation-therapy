// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapyCourseSummary-XRTS-01-Prostate-1P-3V
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyCourseSummary)
* meta.profile[+] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[actualNumberOfSessions].valueUnsignedInt = 2
* extension[doseDeliveredToVolume][0].extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
* extension[doseDeliveredToVolume][0].extension[volume].valueReference.display = "Prostate"
* extension[doseDeliveredToVolume][0].extension[totalDoseDelivered].valueQuantity.value = 400
* extension[doseDeliveredToVolume][0].extension[fractionsDelivered].valueUnsignedInt = 2
* identifier
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C1Prostate"
* status = #completed
* subject = Reference(Patient-XRTS-01)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* performedPeriod.end = "2021-09-07T13:21:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"

// --- Phase Summaries ---------------------------------------------------------------------------------

Instance: RadiotherapyTreatmentPhase-XRTS-01-01-Primary
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 2
* extension[doseDeliveredToVolume]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-XRTS-01-01-Prostate)
  * extension[volume].valueReference.display = "Prostate"
  * extension[totalDoseDelivered].valueQuantity.value = 400
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* partOf = Reference(RadiotherapyCourseSummary-XRTS-01-Prostate-1P-3V)
* status = #completed
* subject = Reference(Patient-XRTS-01)
* performedPeriod.start = "2021-09-06T13:15:17+01:00"
* performedPeriod.end = "2021-09-07T13:21:17+01:00"
* bodySite[+] = SCT#41216001 "Prostatic structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-01-01-Prostate
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Prostate" // display id
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.01.01" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#41216001 "Prostatic structure (body structure)"
* locationQualifier[+] = SCT#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-01)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-01
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = $mCODECancerPatient
* meta.profile[+] = USCorePatient
* extension[birthsex].valueCode = #M
* identifier[+]
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-01"
* name[+]
  * use = #usual
  * family = "Father"
  * given = "Joe"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1960-02-01"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
