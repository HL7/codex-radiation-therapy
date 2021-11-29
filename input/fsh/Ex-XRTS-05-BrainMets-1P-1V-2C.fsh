// --- Course Summary ---------------------------------------------------------------------------------

Instance: RadiotherapyCourseSummary-XRTS-05-BrainMets-1P-1V-C1BrainMets
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example."
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
* extension[actualNumberOfSessions].valueUnsignedInt = 6
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-05-01-BrainMets"
    * display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2500
  * extension[fractionsDelivered].valueUnsignedInt = 5
* identifier
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C1BrainMets"
* status = #completed
* subject = Reference(Patient-XRTS-05)
* performedPeriod.start = "2020-09-06T13:15:17+01:00"
* performedPeriod.end = "2020-09-13T13:21:17+01:00"
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"

Instance: RadiotherapyCourseSummary-XRTS-05-BrainMets-1P-1V-C2BrainMets
InstanceOf: RadiotherapyCourseSummary
Description: "Radiotherapy Course Summary example."
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
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[actualNumberOfSessions].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume]
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-01-BrainMets)
    * valueReference.display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2000
  * extension[fractionsDelivered].valueUnsignedInt = 5
* identifier
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C2BrainMets"
* status = #completed
* subject = Reference(Patient-XRTS-05)
* performedPeriod.start = "2021-09-20T13:15:17+01:00"
* performedPeriod.end = "2021-09-24T13:21:17+01:00"
* reasonCode = ICD10#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"

// --- Phase Summaries ---------------------------------------------------------------------------------

Instance: RadiotherapyTreatmentPhase-XRTS-05-01-01-Primary
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#441799006 "Intensity modulated radiation therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-05-01-BrainMets"
    * display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2500
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* partOf = Reference(RadiotherapyCourseSummary-XRTS-05-BrainMets-1P-1V-C1BrainMets)
* status = #completed
* subject = Reference(Patient-XRTS-05)
* performedPeriod.start = "2020-09-06T13:15:17+01:00"
* performedPeriod.end = "2020-09-13T13:21:17+01:00"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

Instance: RadiotherapyTreatmentPhase-XRTS-05-01-02-Primary
InstanceOf: RadiotherapyTreatmentPhase
Description: "Radiotherapy Treatment Phase example from Codex RTTD collection."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile = Canonical(RadiotherapyTreatmentPhase)
* extension[modalityAndTechnique][+]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1156530009 "Volumetric modulated arc therapy (procedure)"
* extension[fractionsDelivered].valueUnsignedInt = 5
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference
    * reference = "BodyStructure/RadiotherapyVolume-XRTS-05-01-BrainMets"
    * display = "Brain Mets"
  * extension[totalDoseDelivered].valueQuantity.value = 2000
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* partOf = Reference(RadiotherapyCourseSummary-XRTS-05-BrainMets-1P-1V-C1BrainMets)
* status = #completed
* subject = Reference(Patient-XRTS-05)
* performedPeriod.start = "2021-09-20T13:15:17+01:00"
* performedPeriod.end = "2021-09-24T13:21:17+01:00"
* bodySite[+] = SCT#12738006 "Brain structure (body structure)"
* note.text = "Free text note in Radiotherapy Phase"

// --- Radiotherapy Volumes ---------------------------------------------------------------------------------

Instance: RadiotherapyVolume-XRTS-05-01-BrainMets
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
  * value = "Brain Mets" // display id
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151.05.01" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* location = SCT#12738006 "Brain structure (body structure)"
* locationQualifier[+] = SCT#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-05)

// --- Patient ---------------------------------------------------------------------------------

Instance:   Patient-XRTS-05
InstanceOf: $mCODECancerPatient
Title: "Example XRTS Patient"
Description: "An example patient to relate Radiotherapy resources to."
Usage: #example
* meta.versionId = "123"
* meta.lastUpdated = "2021-10-16T10:07:41.050+02:00"
* meta.profile[+] = $mCODECancerPatient
* meta.profile[+] = USCorePatient
* extension[birthsex].valueCode = #F
* identifier[+]
  * use = #usual
  * type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "XRTS-05"
* name[+]
  * use = #usual
  * family = "Daughter"
  * given = "Joan"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #female
* birthDate = "1960-02-05"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
