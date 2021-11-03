//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Profile: RadiotherapyCoursePrescription
Parent:  ServiceRequest
Id:      codex-radiotherapy-course-prescription
Title: "(Future) Radiotherapy Course Prescription"
Description: "Radiotherapy Course Prescription is the high-level request for Radiotherapy that may be fulfilled by one or multiple Phases. 
Usually, the Course addresses one disease and anatomical treatment site and covers the whole treatment of that site."
* ^status = #draft
* insert RadiotherapyRequestCommon // See service-Request-RadiotherapyPhasePrescripion.fsh
* extension contains
    MCodeProcedureIntent named procedure-intent 0..1 MS and
    MCodeSessions named sessions 0..1 MS
* extension[dose-prescribed-to-volume]
  * extension[fractionDosePrescribed] 0..0
  * extension[fractionDosePrescribed] ^short = "Not used in this profile. See Phase Prescriptions for detailed Fractionation."
  * extension[fractionDosePrescribed] ^definition = "Fraction dose is only defined in Phases, where all fractions are equivalent. On Course the number of fractions is summarized over all Phase Prescriptions, which may prescribe different dose per Fraction."
* code = ResourceIdentifierCS#codexrt-course-prescription "Radiotherapy Course Prescription" 	
* occurrencePeriod only Period
* occurrencePeriod MS

// -------- Example Instances ---------------------------------------------------------

Instance: RadiotherapyCoursePrescription-04-Prostate
InstanceOf: RadiotherapyCoursePrescription
Description: "Radiotherapy CoursePrescription with elements of IHE-RO XRTS profile for a prostate example."
Usage: #example
* id = "RadiotherapyCoursePrescription-04-Prostate" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Added modification date of clinical contents as extension.
* meta.profile = Canonical(RadiotherapyCoursePrescription)
// * extension[concurrentTherapy].valueCodeableConcept = SCT#367336001 "Chemotherapy"
// * extension[concurrentTherapy].valueCodeableConcept.text = "Chemotherapy"
* extension[procedure-intent]
  * valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
    * text = "Curative"   
* extension[MCodeModality][+].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
// * extension[MCodeTechnique][+].valueCodeableConcept.coding[+] = SCTREQ#1162782007 "Three dimensional external beam radiation therapy (procedure)"
// * extension[MCodeTechnique][=].valueCodeableConcept.coding[+] = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc"
* extension[sessions].valueUnsignedInt = 44
// Prescription Target Site "Prostate"
* extension[dose-prescribed-to-volume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-03-Prostate" 
  * extension[totalDosePrescribed].valueQuantity.value = 8300 //unit cGy is automatically added because fixed in the profile 
  * extension[fractionsPrescribed].valuePositiveInt = 44 
// Prescription Target Site "Pelv Ns"
* extension[dose-prescribed-to-volume][+].
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-04-PelvNs"
  * extension[totalDosePrescribed].valueQuantity.value = 4500 
  * extension[fractionsPrescribed].valuePositiveInt = 25 
// Prescription Target Site "Sem Vs"
* extension[dose-prescribed-to-volume][+]
  * extension[volume].valueReference.reference = "BodyStructure/RadiotherapyVolume-05-SemVs"
  * extension[totalDosePrescribed].valueQuantity.value = 7920 
  * extension[fractionsPrescribed].valuePositiveInt = 44 
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "Prostate-2Phases"
* identifier[+]
  * system = "urn:dicom:uid"
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456.2" 
//* replaces.reference = ... //XRTSIntent."Predecessor" In FHIR, this can reference another resource instead of only identifier.
* status = #active
* code = ResourceIdentifierCS#codexrt-course-prescription	"Radiotherapy Course Prescription" 	
* subject.reference = "Patient/Patient-6"
* subject.display = "Pater Venkman"
* occurrencePeriod.start = "2020-07-03T00:00:00+02:00"
* occurrencePeriod.end = "2020-07-27T00:00:00+02:00"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Prescription was signed" 
* requester.reference = "Practitioner/Practitioner-1005"
* requester.display = "aria\\user1" 
* reasonCode = ICD10#C61.0 "Malignant neoplasm of prostate" 
* reasonCode.text = "Malignant neoplasm of prostate" 
* reasonReference.reference = "Condition/Diagnosis-2-Prostate"
* bodySite = SCT#41216001 "Prostatic structure (body structure)" 
* bodySite.text = "Prostate"
* note.text = "Free text note in Radiotherapy CoursePrescription"
