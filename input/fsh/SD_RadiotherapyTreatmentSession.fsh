Profile:  RadiotherapyTreatmentSession
Parent:   USCoreEncounter
Id:       codexrt-radiotherapy-treatment-session
Title: "Radiotherapy Treatment Session"
Description: "A radiotherapy treatment session with the patient."
* ^status = #draft

* extension contains
  RadiotherapySessionNumber named radiotherapySessionNumber 0..1 MS
* extension[radiotherapySessionNumber] ^short = "Session Number"
* extension[radiotherapySessionNumber] ^definition = "The number of this session in a radiotherapy treatment course."
* insert OpenProfileBasedSlicing(basedOn)
* basedOn contains
    treatment-plan 0..* MS and
    planned-phase 0..* MS
* basedOn[treatment-plan] ^short = "Radiotherapy Treatment Plan for which this Session takes place or took place."
* basedOn[planned-phase] ^short = "Radiotherapy Planned Phase for which this Session takes place or took place."
* basedOn[treatment-plan] only Reference(RadiotherapyTreatmentPlan)
* basedOn[planned-phase] only Reference(RadiotherapyPlannedPhase)
* period MS // TODO invariant to have period if status is finished
* location MS
  * location MS
  * location only Reference(USCoreLocation)
//* serviceProvider MS // Add with department modelling (Organization)
* serviceType = SCT#1287742003 "Radiotherapy (procedure)" // FHIR-45489
* serviceType 1..1 
* identifier  MS // Sushi will set the required minimum slices automatically based on slice cardinalities.  No value in hardwiring it here.
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
  dicomTreatmentSessionUid 0..1 MS
* identifier[dicomTreatmentSessionUid]
  * system = DICOMUID
  * value 1..1 MS
  * ^short = "DICOM Treatment Session UID (300A,0700)"