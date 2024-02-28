Instance: RadiotherapyTreatedFraction-05-Prostate-Phase1-Plan1-Fx2
InstanceOf: RadiotherapyTreatedFraction
Description: "Treatment of one fraction in the first treamtment plan of the first phase"
Usage: #example
//* id = "RadiotherapyTreatedPlan-05-Prostate-Phase1-Plan1-Fx2" //id of the FHIR Resource
* meta.versionId = "1233456"
* meta.lastUpdated = "2020-10-28T13:22:17+01:00"
* meta.profile[0] = Canonical(RadiotherapyTreatedFraction)
* extension[modalityAndTechnique]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18
  * extension[radiotherapyEnergyOrIsotope].valueQuantity = UCUM#MV "MV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#717193008 "Cone beam computed tomography (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[radiotherapyFractionNumberInPlan].valuePositiveInt = 2
* extension[radiotherapyFractionNumberInPhase].valuePositiveInt = 2
// Prescription Target Site "Prostate"
* extension[$mCODERadiotherapyDoseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[totalDoseDelivered].valueQuantity.value = 180
// Prescription Target Site "Pelv Ns"
* extension[$mCODERadiotherapyDoseDeliveredToVolume][+]
  * extension[volume].valueReference. = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[totalDoseDelivered].valueQuantity.value = 180
// Prescription Target Site "Sem Vs"
* extension[$mCODERadiotherapyDoseDeliveredToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[totalDoseDelivered].valueQuantity.value = 180
* extension[radiotherapyDicomRecord]
  * extension[instanceUid].valueId = "1.2.246.352.82.6.4636367585964072832.169625210960980125580.444"
  * extension[sopClass].valueCoding = urn:ietf:rfc:3986#"urn:oid:1.2.840.10008.5.1.4.1.1.481.4"
* identifier[displayName]
  * system = VarianRadiotherapyFractionId
  * value = "2"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.555.05.1.1.2"
* basedOn[+] = Reference(RadiotherapyTreatmentPlan-04-Prostate-Phase1-Plan1)
* basedOn[=].display = "Prostate-Phase1-Plan1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-04-Prostate-Phase1)
* basedOn[=].display = "Prostate-Phase1"
* partOf = Reference(RadiotherapyTreatedPlan-04-Prostate-Phase1-Plan1)
* partOf = Reference(RadiotherapyTreatedPhase-05-Prostate-Phase1)
* status = #completed
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* encounter = Reference(RadiotherapyTreatmentSession-2)
* performedPeriod.start = "2020-10-27T13:15:17+01:00"
* performedPeriod.end = "2020-10-28T13:21:17+01:00"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
* location = Reference(TreatmentLocation-1)
* insert $CodexRTCategoryCode
