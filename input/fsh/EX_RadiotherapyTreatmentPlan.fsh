Instance: RadiotherapyTreatmentPlan-04-Prostate-Phase1-Plan1
InstanceOf: RadiotherapyTreatmentPlan
Description: "Radiotherapy Treatment Plan to cover IHE-RO XRTS profile for a Prostate example, phase 1, plan 1."
Usage: #example
//* id = "RadiotherapyTreatmentPlan-04-Prostate-Phase1-Plan1" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. See separate extentsion for modification date of clinical contents.
* meta.profile = Canonical(RadiotherapyTreatmentPlan)
* extension[modalityAndTechnique]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  //* extension[technique][=].valueCodeableConcept[=].coding[+] = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc" //violates mCODE invariant
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18 //unit is fixed in profile
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
* extension[radiotherapyDicomPlan]
  * extension[instanceUid].valueId = "1.2.246.352.71.5689073982433245406.1530811633039636638"
  * extension[sopClass].valueCoding = urn:ietf:rfc:3986#"urn:oid:1.2.840.10008.5.1.4.1.1.481.5"
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPlanId
  * value = "Prostate-Phase1-Plan1"
* identifier[+]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-04-Prostate-Phase1)
* basedOn[=].display =  "Prostate-Phase1"
* basedOn[+] = Reference(RadiotherapyPlanPrescription-04-Prostate-Phase1-Plan1)
* basedOn[=].display =  "Prostate-Phase1-Plan1"
* status = #active
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* occurrenceTiming.repeat.boundsPeriod.start = "2020-07-03T00:00:00+02:00" //Expected start date
* occurrenceTiming.code.text = "5 Times a week"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Intent was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // "Body site that is treated with Radiotherapy"
* bodySite.text = "Prostate"
* note.text = "Free text note in Radiotherapy Treatment Plan"

Instance: RadiotherapyTreatmentPlan-05-Prostate-Phase2-Plan1
InstanceOf: RadiotherapyTreatmentPlan
Description: "Radiotherapy Treatment Plan, Prostate example, phase 2, plan 1."
Usage: #example
//* id = "RadiotherapyTreatmentPlan-05-Prostate-Phase2-Plan1" //id of the FHIR Resource
* meta.versionId = "219952" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. See separate extentsion for modification date of clinical contents.
* meta.profile = Canonical(RadiotherapyTreatmentPlan)
* extension[modalityAndTechnique]
  * extension[modality].valueCodeableConcept = SCT#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[technique][0].valueCodeableConcept = $mCODESCT_TBD#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  //* extension[technique][=].valueCodeableConcept[=].coding[+] = http://varian.com/fhir/CodeSystem/aria-radiotherapyPrescriptionTechnique#ARC "Arc" //violates mCODE invariant
  * extension[radiotherapyEnergyOrIsotope].valueQuantity.value = 18 //unit is fixed in profile
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
* identifier[+]
  * use = #usual
  * system = VarianRadiotherapyPlanId
  * value = "Prostate-Phase2-Plan1"
* identifier[+]
  * system = DICOMUID
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-05-Prostate-Phase2) //Intent that this prescription bases on
* basedOn[=].display = "Prostate-Phase2"
* basedOn[+] = Reference(RadiotherapyPlanPrescription-05-Prostate-Phase2-Plan1)
* basedOn[=].display = "Prostate-Phase2-Plan1"
* status = #active
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* occurrenceTiming.repeat.boundsPeriod.start = "2020-07-03T00:00:00+02:00" //Expected start date
* occurrenceTiming.code.text = "5 Times a week"
* authoredOn =  "2020-07-02T00:00:00+02:00" // "Date and time the Intent was signed"
* requester = Reference(Practitioner-1005)
* requester.display = "aria\\user1"
* reasonCode = ICD10#C61 "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonCode.text = "Malignant neoplasm of prostate" //Try to use Condition resource for diagnosis in XRTS
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = SCT#41216001 "Prostatic structure (body structure)" // This is the SCT term for TG263 'Prostate'
* bodySite.text = "Prostate"
* note.text = "Free text note in Radiotherapy Planned Phase"