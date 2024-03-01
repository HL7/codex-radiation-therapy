Instance: RadiotherapyCourseSummary-04-Prostate
InstanceOf: RadiotherapyCourseSummary
Description: "Treatment Summary over Radiotherapy Course with all elements expected in XRTS."
Usage: #example
// * id = "RadiotherapyCourseSummary-04-Prostate" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[0] = Canonical(RadiotherapyCourseSummary)
* meta.profile[1] = $mCODERadiotherapyCourseSummary
* extension[treatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[treatmentIntent].valueCodeableConcept.text = "Curative"
* extension[modalityAndTechnique]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18
  * extension[radiotherapyEnergyOrIsotope].valueQuantity = UCUM#MV "MV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#717193008 "Cone beam computed tomography (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[actualNumberOfSessions].valueUnsignedInt = 2
// Target Volume "Prostate"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[totalDoseDelivered].valueQuantity.value = 360
  * extension[fractionsDelivered].valueUnsignedInt = 2
  * extension[uniformFractionation].valueBoolean = true
// Target Volume "Pelv Ns"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[totalDoseDelivered].valueQuantity.value = 360
  * extension[fractionsDelivered].valueUnsignedInt = 2
  * extension[uniformFractionation].valueBoolean = true
// Target Volume "Sem Vs"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[totalDoseDelivered].valueQuantity.value = 360
  * extension[fractionsDelivered].valueUnsignedInt = 2
  * extension[uniformFractionation].valueBoolean = true
* identifier[displayName]
  * system = VarianRadiotherapyCourseId //Use same id as for course
  * value = "Prostate-2Phases"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.555.04.1"
* basedOn[+] = Reference(RadiotherapyCoursePrescription-04-Prostate)
* basedOn[=].display = "Prostate-2Phases"
* status = #in-progress
* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy" // This is the historical, inactive code, that should still be valid.
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
* location = Reference(TreatmentLocation-1)
* insert $CodexRTCategoryCode

