```
Instance: RadiotherapyTreatedPhase-XRTS-06-22B-01-01-Primary
InstanceOf: RadiotherapyTreatedPhase
Title: "RadiotherapyTreatedPhase-XRTS-06-22B-01-01-Primary"
Description: "Radiotherapy Treated Phase example from Codex XRTS collection, test case XRTS-06, Phase 1 completely treated."
Usage: #example
* meta
  * versionId = "2"
  * lastUpdated = "2021-09-20T10:07:41.050+02:00"
* extension[0]
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#394902000 "High dose brachytherapy (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#384692006 "Intracavitary brachytherapy (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type"
    * valueCodeableConcept = http://snomed.info/sct#1254778005 "Brachytherapy ring (physical object)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type"
    * valueCodeableConcept = http://snomed.info/sct#1254776009 "Brachytherapy tandem (physical object)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope"
    * valueCodeableConcept = http://snomed.info/sct#48341001 "Iridium-192 (substance)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-delivered"
  * valueUnsignedInt = 5
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus) "Uterus"
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 3000 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Primary"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.73.842419.2121.20150602151.06.01.01.22.1"
* basedOn = Reference(RadiotherapyPlannedPhase-XRTS-06-22B-01-01-Primary)
* partOf = Reference(RadiotherapyCourseSummary-XRTS-06-22B-01-Uterus-1P-1V)
* status = #completed
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-XRTS-06-22B)
* performedPeriod
  * start = "2021-09-06T13:15:17+01:00"
  * end = "2021-09-20T13:21:17+01:00"
* bodySite = http://snomed.info/sct#71252005 "Cervix uteri structure (body structure)"
* usedReference = Reference(RadiotherapyTreatmentDevice-ACMETurbo3000Afterloader)
```