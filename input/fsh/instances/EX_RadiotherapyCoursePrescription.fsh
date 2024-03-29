
Instance: RadiotherapyCoursePrescription-04-Prostate
InstanceOf: RadiotherapyCoursePrescription
Description: "Radiotherapy CoursePrescription with elements of IHE-RO XRTS profile for a prostate example."
Usage: #example
//* id = "RadiotherapyCoursePrescription-04-Prostate" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Added modification date of clinical contents as extension.
* meta.profile = Canonical(RadiotherapyCoursePrescription) //"https://profiles.ihe.net/RO.XRTS/StructureDefinition/RadiotherapyCoursePrescription"
// * extension[concurrentTherapy].valueCodeableConcept = SCT#367336001 "Chemotherapy"
// * extension[concurrentTherapy].valueCodeableConcept.text = "Chemotherapy"
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
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[totalDose].valueQuantity.value = 8300 //unit cGy is automatically added because fixed in the profile
  * extension[fractions].valuePositiveInt = 44
// Prescription Target Site "Pelv Ns"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[totalDose].valueQuantity.value = 4500
  * extension[fractions].valuePositiveInt = 25
// Prescription Target Site "Sem Vs"
* extension[radiotherapyDosePrescribedToVolume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[totalDose].valueQuantity.value = 7920
  * extension[fractions].valuePositiveInt = 44
* identifier[displayName]
  * system = VarianRadiotherapyCourseId
  * value = "Prostate-2Phases"
* identifier[official]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456.2"
//* replaces.reference = ... //XRTSIntent."Predecessor" In FHIR, this can reference another resource instead of only identifier.
* status = #active
* subject = Reference(Patient-6)
* subject.display = "Pater Venkman"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the prescription was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* reasonCode.text = "Malignant neoplasm of prostate"
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
* locationReference = Reference(TreatmentLocation-1)
* insert $CodexRTCategoryCodeRequired
// ------------------------------------------------------------------------------------
