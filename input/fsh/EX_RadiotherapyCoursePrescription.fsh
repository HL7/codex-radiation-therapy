
// -------- Example Instances ---------------------------------------------------------

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
* extension[treatment-intent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* extension[treatment-intent].valueCodeableConcept.text = "Curative"
* extension[modality-and-technique][0].extension[modality][0].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
// * extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[0] = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
// * extension[http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique][0].valueCodeableConcept.coding[1] = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc"
* extension[radiotherapy-sessions].valueUnsignedInt = 44
// Prescription Target Site "Prostate"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[totalDosePrescribed].valueQuantity.value = 8300 //unit cGy is automatically added because fixed in the profile
  * extension[fractionsPrescribed].valuePositiveInt = 44
// Prescription Target Site "Pelv Ns"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[totalDosePrescribed].valueQuantity.value = 4500
  * extension[fractionsPrescribed].valuePositiveInt = 25
// Prescription Target Site "Sem Vs"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[totalDosePrescribed].valueQuantity.value = 7920
  * extension[fractionsPrescribed].valuePositiveInt = 44
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyCourseId
  * value = "Prostate-2Phases"
* identifier[+]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456.2"
//* replaces.reference = ... //XRTSIntent."Predecessor" In FHIR, this can reference another resource instead of only identifier.
* status = #active
* code = RadiotherapyRequest#radiotherapy-course-prescription	"Radiotherapy Course Prescription"
* subject = Reference(Patient-6)
* subject.display = "Pater Venkman"
* occurrencePeriod.start = "2020-07-03T00:00:00+02:00"
* occurrencePeriod.end = "2020-07-27T00:00:00+02:00"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Prescription was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate"
* reasonCode.text = "Malignant neoplasm of prostate"
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
* note.text = "Free text note in Radiotherapy CoursePrescription"

// ------------------------------------------------------------------------------------
