```
Instance: RadiotherapyPlannedPhase-XRTS-04-22B-01-02-RightBreastTang
InstanceOf: RadiotherapyPlannedPhase
Title: "RadiotherapyPlannedPhase-XRTS-04-22B-01-02-RightBreastTang"
Description: "Radiotherapy Planned Phase example from Codex XRTS collection, test case XRTS-04, Phase 2."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[0]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-planned"
  * valuePositiveInt = 3
* extension[+]
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-respiratory-motion-management"
  * valueCodeableConcept = SnomedRequestedCS#USCRS-34883 "Radiotherapy with free breathing (regime/therapy)"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-free-breathing-motion-mgmt-technique"
  * valueCodeableConcept = SnomedRequestedCS#USCRS-34881 "Radiotherapy with respiratory gating (regime/therapy)"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22B-03-RightBreast) "Right Breast"
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 300 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 900 'cGy'
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Right Breast Tangents"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.75.842418.2121.20150602151.04.01.02.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-04-22B-01-Breast-2P-3V) "C1_Both_Breast"
* status = #completed
* intent = #filler-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-04-22B)
* bodySite = http://snomed.info/sct#76752008 "Breast structure (body structure)"
  * extension
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#24028007 "Right (qualifier value)"
```