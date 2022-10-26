Instance: RadiotherapyTreatedPhase-05-Prostate-Phase1
InstanceOf: RadiotherapyTreatedPhase
Description: "Treatment Summary for first phase"
Usage: #example
//* id = "RadiotherapyTreatedPhase-05-Prostate-Phase1" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[0] = Canonical(RadiotherapyTreatedPhase)
* extension[fractionsDelivered].valueUnsignedInt = 2
// Prescription Target Site "Prostate"
* extension[$mCODERadiotherapyDoseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[totalDoseDelivered].valueQuantity.value = 360
// Prescription Target Site "Pelv Ns"
* extension[$mCODERadiotherapyDoseDeliveredToVolume][+]
  * extension[volume].valueReference. = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[totalDoseDelivered].valueQuantity.value = 360
// Prescription Target Site "Sem Vs"
* extension[$mCODERadiotherapyDoseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[totalDoseDelivered].valueQuantity.value = 360
* identifier[+]
  * use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
  * system = VarianRadiotherapyPrescriptionId
  * value = "Prostate-Phase1"
* basedOn[+] = Reference(RadiotherapyPhasePrescription-04-Prostate-Phase1)
* basedOn[=].display = "Prostate-Phase1"
* partOf = Reference(RadiotherapyCourseSummary-04-Prostate) //Can reference another summary of larger scope
* status = #in-progress
//* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy" //Filled automatically without listing in instance because fixed value in profile.
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"