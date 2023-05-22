```
Instance: RadiotherapyTreatedPhase-XRTS-04-22B-01-02-RightBreastTang
InstanceOf: RadiotherapyTreatedPhase
Title: "RadiotherapyTreatedPhase-XRTS-04-22B-01-02-RightBreastTang"
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-04, Phase 2 completely treated."
Usage: #example
* meta
  * versionId = "3"
  * lastUpdated = "2021-09-15T13:21:17+01:00"
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
  * valueCodeableConcept = SnomedRequestedCS#USCRS-34883 "Radiotherapy with free breathing (regime/therapy)"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-free-breathing-motion-mgmt-technique"
  * valueCodeableConcept = SnomedRequestedCS#USCRS-34881 "Radiotherapy with respiratory gating (regime/therapy)"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-delivered"
  * valueUnsignedInt = 3
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22B-03-RightBreast) "Right Breast"
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 900 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Right Breast Tangents"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.04.01.02.22.1"
* basedOn = Reference(RadiotherapyPlannedPhase-XRTS-04-22B-01-02-RightBreastTang)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-04-22B-01-Breast-2P-3V)
* status = #completed
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-04-22B)
* performedPeriod
  * start = "2021-09-13T13:15:17+01:00"
  * end = "2021-09-15T13:21:17+01:00"
* bodySite = http://snomed.info/sct#76752008 "Breast structure (body structure)"
  * extension
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#24028007 "Right (qualifier value)"
```