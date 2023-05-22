```
Instance: RadiotherapyTreatedPhase-XRTS-02-22B-01-01-Primary-1Fx
InstanceOf: RadiotherapyTreatedPhase
Title: "RadiotherapyTreatedPhase-XRTS-02-22B-01-01-Primary-1Fx"
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-02, Phase 1 after 1 fraction."
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2021-09-06T13:21:17+01:00"
* extension[0]
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-respiratory-motion-management"
  * valueCodeableConcept = SnomedRequestedCS#USCRS-34886 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-delivered"
  * valueUnsignedInt = 1
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate) "Prostate"
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 180 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.02.01.01.22.1"
* basedOn = Reference(RadiotherapyPlannedPhase-XRTS-02-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-02-22B-01-Prostate-2P-1V)
* status = #in-progress
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-02-22B)
* performedPeriod
  * start = "2021-09-06T13:15:17+01:00"
  * end = "2021-09-06T13:21:17+01:00"
* bodySite = http://snomed.info/sct#41216001 "Prostatic structure (body structure)"
```