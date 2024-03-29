Instance: RadiotherapyPlannedPhase-04-Prostate-Phase1
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase, Prostate example, phase 1."
Usage: #example
//* id = "RadiotherapyPlannedPhase-04-Prostate-Phase1" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. See separate extentsion for modification date of clinical contents.
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18
  * extension[radiotherapyEnergyOrIsotope].valueQuantity = UCUM#MV "MV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#717193008 "Cone beam computed tomography (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 25
// Target Site "Prostate"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[fractionDose].valueQuantity.value = 180 //unit cGy is automatically added because fixed in the profile
  * extension[totalDose].valueQuantity.value = 4500
// Target Site "Pelv Ns"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 4500
// Target Site "Sem Vs"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 4500
* identifier[displayName]
  * system = VarianRadiotherapyPlanId
  * value = "Prostate-Phase1"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-04-Prostate)
* basedOn[=].display = "Prostate-2Phases"
* basedOn[+] = Reference(RadiotherapyPhasePrescription-04-Prostate-Phase1)
* basedOn[=].display = "Prostate-Phase1"
* status = #active
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Intent was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // "Body site that is treated with radiotherapy"
* bodySite.text = "Prostate"
* locationReference = Reference(TreatmentLocation-1)
* insert $CodexRTCategoryCodeRequired

Instance: RadiotherapyPlannedPhase-05-Prostate-Phase2
InstanceOf: RadiotherapyPlannedPhase
Description: "Radiotherapy Planned Phase, Prostate example, phase 2."
Usage: #example
//* id = "RadiotherapyPlannedPhase-05-Prostate-Phase2" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. See separate extentsion for modification date of clinical contents.
* meta.profile = Canonical(RadiotherapyPlannedPhase)
* extension[modalityAndTechnique]
  * extension[modality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][+].valueCodeableConcept = SCT#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18
  * extension[radiotherapyEnergyOrIsotope].valueQuantity = UCUM#MV "MV"
* extension[imageGuidedRadiotherapyModality][+]
  * extension[modality][+].valueCodeableConcept = SCT#717193008 "Cone beam computed tomography (procedure)"
  * extension[energy][+].valueCodeableConcept = UCUM#kV "kV"
* extension[radiotherapyFractionsPlanned].valuePositiveInt = 19
// Target Site "Prostate"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[fractionDose].valueQuantity.value = 200 //unit cGy is automatically added because fixed in the profile
  * extension[totalDose].valueQuantity.value = 3800
// Target Site "Sem Vs"
* extension[radiotherapyDosePlannedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 3420
* identifier[displayName]
  * system = VarianRadiotherapyPlanId
  * value = "Prostate-Phase2"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456"
* basedOn[+] = Reference(RadiotherapyPlannedCourse-04-Prostate)
* basedOn[=].display = "Prostate-2Phases"
* basedOn[+] = Reference(RadiotherapyPhasePrescription-05-Prostate-Phase2)
* basedOn[=].display = "Prostate-Phase2"
* status = #active
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Intent was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
* locationReference = Reference(TreatmentLocation-1)
* insert $CodexRTCategoryCodeRequired
