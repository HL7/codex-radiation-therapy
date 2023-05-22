```
Instance: RadiotherapyPlannedPhase-XRTS-02-22B-01-02-PlanChange
InstanceOf: RadiotherapyPlannedPhase
Title: "RadiotherapyPlannedPhase-XRTS-02-22B-01-02-PlanChange"
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-02, Phase 2."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[0]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-planned"
  * valuePositiveInt = 4
* extension[+]
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#441799006 "Intensity modulated radiation therapy (procedure)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-respiratory-motion-management"
  * valueCodeableConcept = SnomedRequestedCS#USCRS-34886 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-02-22B-01-Prostate) "Prostate"
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 200 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 800 'cGy'
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "PlanChange"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.02.01.02.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-02-22B-01-Prostate-2P-1V) "C1Prostate"
* replaces = Reference(RadiotherapyPlannedPhase-XRTS-02-22B-01-01-Primary)
* status = #completed
* intent = #filler-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-02-22B)
* bodySite = http://snomed.info/sct#41216001 "Prostatic structure (body structure)"
```