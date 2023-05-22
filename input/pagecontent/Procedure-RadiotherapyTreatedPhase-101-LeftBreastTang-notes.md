```
Instance: RadiotherapyTreatedPhase-101-LeftBreastTang
InstanceOf: RadiotherapyTreatedPhase
Title: "RadiotherapyTreatedPhase-101-LeftBreastTang"
Description: "Radiotherapy Treated Phase example from Codex RTTD collection."
Usage: #example
* meta
  * versionId = "1233456"
  * lastUpdated = "2020-10-28T13:22:17+01:00"
* extension[0]
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-delivered"
  * valueUnsignedInt = 25
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 5000 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 5000 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Left Breast Tangents"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.556.101"
* basedOn = Reference(RadiotherapyPhasePrescription-101-RTTD-LeftBreastTang)
* partOf = Reference(RadiotherapyCourseSummary-101-RTTD-BilateralBreast)
* status = #completed
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-101)
* performedPeriod
  * start = "2020-10-27T13:15:17+01:00"
  * end = "2020-10-28T13:21:17+01:00"
* bodySite = http://snomed.info/sct#76752008 "Breast structure (body structure)"
  * extension
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#7771000 "Left (qualifier value)"
```