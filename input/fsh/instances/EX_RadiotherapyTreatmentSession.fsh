Instance: RadiotherapyTreatmentSession-2
InstanceOf: RadiotherapyTreatmentSession
Title: "Radiotherapy Treatment Session 2"
Description: "An example radiotherapy treatment session."
Usage: #example
* meta.security = v3-ActReason#HTEST
* extension[radiotherapySessionNumber].valuePositiveInt = 2
* status = #finished
* class =  v3-ActCode#AMB "ambulatory"
// type is mandatory in US Core. Extensible binding to http://hl7.org/fhir/us/core/STU4/ValueSet-us-core-encounter-type.html
* type = SCT#308335008 "Patient encounter procedure (procedure)"
* subject = Reference(Patient-6)
* subject.display = "Peter Venkman"
* basedOn[+] = Reference(RadiotherapyTreatmentPlan-04-Prostate-Phase1-Plan1)
* basedOn[=].display = "Prostate-Phase1-Plan1"
* basedOn[+] = Reference(RadiotherapyPlannedPhase-04-Prostate-Phase1)
* basedOn[=].display = "Prostate-Phase1"
* period.start = "2020-10-27T13:10:17+01:00"
* period.end = "2020-10-28T13:25:17+01:00"
* location.location = Reference(TreatmentLocation-1)
//* serviceProvider = Reference(RadiotherapyDepartment-1)
* identifier[dicomTreatmentSessionUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151846" // DICOM UID