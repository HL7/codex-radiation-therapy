```
Instance: RadiotherapyTreatedPhase-XRTS-05-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Title: "RadiotherapyTreatedPhase-XRTS-05-22B-01-01-Primary"
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-05, Course 1, Phase 1 completely treated."
Usage: #example
* meta
  * versionId = "6"
  * lastUpdated = "2020-09-14T13:21:17+01:00"
* extension[0]
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
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-delivered"
  * valueUnsignedInt = 5
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-01-BrainMets) "Brain Mets"
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 2500 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.73.842418.2121.20150602151.05.01.01.22.1"
* basedOn = Reference(RadiotherapyPlannedPhase-XRTS-05-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-05-22B-01-BrainMets-1P-1V)
* status = #completed
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-05-22B)
* performedPeriod
  * start = "2020-09-07T13:15:17+01:00"
  * end = "2020-09-14T13:21:17+01:00"
* bodySite = http://snomed.info/sct#12738006 "Brain structure (body structure)"
```