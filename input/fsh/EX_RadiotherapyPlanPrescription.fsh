Instance: RadiotherapyPlanPrescription-04-Prostate-Phase1-Plan1
InstanceOf: RadiotherapyPlanPrescription
Description: "Radiotherapy Plan Prescription to cover IHE-RO XRTS profile for a Prostate example, phase 1, plan 1."
Usage: #example
//* id = "RadiotherapyPlanPrescription-04-Prostate-Phase1-Plan1" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. See separate extentsion for modification date of clinical contents.
* meta.profile = Canonical(RadiotherapyPlanPrescription)
* extension[modalityAndTechnique]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  //* extension[technique][=].valueCodeableConcept[=].coding[+] = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc" //violates mCODE invariant
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18 //unit is fixed in profile
* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 25
// Prescription Target Site "Prostate"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[fractionDose].valueQuantity.value = 180 //unit cGy is automatically added because fixed in the profile
  * extension[totalDose].valueQuantity.value = 4500
// Prescription Target Site "Pelv Ns"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 4500
// Prescription Target Site "Sem Vs"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 4500
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPrescriptionId
  * value = "Prostate-Phase1-Plan1"
* identifier[+]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456"
* basedOn = Reference(RadiotherapyPhasePrescription-04-Prostate-Phase1) //Intent that this prescription bases on
  * display =  "Prostate-Phase1"
//* replaces = Reference(RadiotherapyPhasePrescription-0" //Previous retired PhasePrescription that is replaced by this PhasePrescription
* status = #active
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* occurrenceTiming.repeat.boundsPeriod.start = "2020-07-03T00:00:00+02:00" //Expected start date
//* occurrenceTiming.code = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionFrequency#"5 TIMES A WEEK" "5 Times a week" //Probaly not coded in XRTS
* occurrenceTiming.code.text = "5 Times a week"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Intent was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // "Body site that is treated with Radiotherapy"
* bodySite.text = "Prostate"
* note.text = "Free text note in Radiotherapy Prescription"

Instance: RadiotherapyPlanPrescription-05-Prostate-Phase2-Plan1
InstanceOf: RadiotherapyPlanPrescription
Description: "Radiotherapy Plan Prescription to cover IHE-RO XRTS profile for a Prostate example, phase 2, plan 1."
Usage: #example
//* id = "RadiotherapyPlanPrescription-05-Prostate-Phase2-Plan1" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. See separate extentsion for modification date of clinical contents.
* meta.profile = Canonical(RadiotherapyPlanPrescription)
* extension[modalityAndTechnique]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  //* extension[technique][=].valueCodeableConcept[=].coding[+] = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc" //violates mCODE invariant
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18 //unit is fixed in profile
* extension[radiotherapy-fractions-prescribed].valuePositiveInt = 19
// Prescription Target Site "Prostate"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[fractionDose].valueQuantity.value = 200 //unit cGy is automatically added because fixed in the profile
  * extension[totalDose].valueQuantity.value = 3800
// Prescription Target Site "Sem Vs"
* extension[radiotherapy-dose-prescribed-to-volume][+]
  * extension[volume].valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[fractionDose].valueQuantity.value = 180
  * extension[totalDose].valueQuantity.value = 3420
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPrescriptionId
  * value = "Prostate-Phase2-Plan1"
* identifier[+]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456"
* basedOn = Reference(RadiotherapyPhasePrescription-05-Prostate-Phase2) //Intent that this prescription bases on
* basedOn.display =  "Prostate-Phase2"
//* replaces = Reference(RadiotherapyPhasePrescription-0) //Previous retired PhasePrescription that is replaced by this PhasePrescription
* status = #active
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* occurrenceTiming.repeat.boundsPeriod.start = "2020-07-03T00:00:00+02:00" //Expected start date
//* occurrenceTiming.code = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionFrequency#"5 TIMES A WEEK" "5 Times a week"
* occurrenceTiming.code.text = "5 Times a week"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Intent was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
* note.text = "Free text note in Radiotherapy PhasePrescription"