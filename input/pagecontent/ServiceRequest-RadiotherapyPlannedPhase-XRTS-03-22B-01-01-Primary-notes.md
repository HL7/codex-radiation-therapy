```
Instance: RadiotherapyPlannedPhase-XRTS-03-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Title: "RadiotherapyPlannedPhase-XRTS-03-22B-01-01-Primary"
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-03, Phase 1."
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
    * url = "modality"
    * valueCodeableConcept = http://snomed.info/sct#168537006 "Plain radiography (procedure)"
  * extension[+]
    * url = "energy"
    * valueCodeableConcept = http://unitsofmeasure.org#kV "kV"
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-image-guided-radiotherapy-modality"
* extension[+]
  * extension[0]
    * url = "modality"
    * valueCodeableConcept = http://snomed.info/sct#168537006 "Plain radiography (procedure)"
  * extension[+]
    * url = "energy"
    * valueCodeableConcept = http://unitsofmeasure.org#MV "MV"
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-image-guided-radiotherapy-modality"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-01-Prostate) "Prostate"
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 200 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 800 'cGy'
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-point-dose"
    * valueBoolean = false
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-primary-plan-dose"
    * valueBoolean = true
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-02-PelvNs) "PelvNs"
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 180 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 720 'cGy'
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-point-dose"
    * valueBoolean = false
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-primary-plan-dose"
    * valueBoolean = false
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-03-22B-03-SemVs) "SemVs"
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 200 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 800 'cGy'
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-point-dose"
    * valueBoolean = false
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-primary-plan-dose"
    * valueBoolean = false
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.03.01.01.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-03-22B-01-Prostate-1P-3V) "C1Prostate"
* status = #completed
* intent = #filler-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-03-22B)
* bodySite[0] = http://snomed.info/sct#41216001 "Prostatic structure (body structure)"
* bodySite[+] = http://snomed.info/sct#245294005 "Pelvic lymph node group (body structure)"
* bodySite[+] = http://snomed.info/sct#64739004 "Seminal vesicle"
```