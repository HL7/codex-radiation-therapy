```
Instance: RadiotherapyPlannedPhase-XRTS-07-22B-01-01-Primary
InstanceOf: RadiotherapyPlannedPhase
Title: "RadiotherapyPlannedPhase-XRTS-07-22B-01-01-Primary"
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-07, Phase 1."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[0]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-planned"
  * valuePositiveInt = 1
* extension[+]
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#169359004 "Internal radiotherapy - permanent seeds (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#113120007 "Interstitial brachytherapy (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope"
    * valueCodeableConcept = http://snomed.info/sct#68630002 "Iodine-125 (substance)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-07-22B-01-Uterus) "Uterus"
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 14500 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 14500 'cGy'
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.75.842419.2121.20150602151.07.01.01.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-07-22B-01-Uterus-1P-1V) "C1Uterus"
* status = #completed
* intent = #filler-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-07-22B)
* performer = Reference(RadiotherapySeedDevice-Mesh)
* bodySite = http://snomed.info/sct#71252005 "Cervix uteri structure (body structure)"
```