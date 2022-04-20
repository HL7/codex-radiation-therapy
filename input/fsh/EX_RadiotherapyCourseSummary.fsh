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
* extension[actualNumberOfSessions].valueUnsignedInt = 2
// Target Volume "Prostate"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[totalDoseDelivered].valueQuantity.value = 360
  * extension[fractionsDelivered].valueUnsignedInt = 2
// Target Volume "Pelv Ns"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[totalDoseDelivered].valueQuantity.value = 360
  * extension[fractionsDelivered].valueUnsignedInt = 2
// Target Volume "Sem Vs"
* extension[doseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[totalDoseDelivered].valueQuantity.value = 360
  * extension[fractionsDelivered].valueUnsignedInt = 2
* identifier.use = #usual //Can use general identifiers. Here just using the same as the request on which the summary is basedOn
* identifier.system = VarianRadiotherapyCourseId //Use same id as for Course
* identifier.value = "Prostate-2Phases"
* basedOn[+] = Reference(RadiotherapyCoursePrescription-04-Prostate)
* basedOn[=].display = "Prostate-2Phases"
* status = #in-progress
//* category = SCT#108290001 "Radiation oncology AND/OR radiotherapy" //Filled automatically without listing in instance because fixed value in profile.
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate) //In ARIA, diagnoses related to Course
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
