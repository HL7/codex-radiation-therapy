```
Instance: RadiotherapyPlannedCourse-XRTS-07-22B-01-Uterus-1P-1V
InstanceOf: RadiotherapyPlannedCourse
Title: "RadiotherapyPlannedCourse-XRTS-07-22B-01-Uterus-1P-1V"
Description: "Radiotherapy Planned Course example from Codex XRTS collection, test case XRTS-07."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
* extension[0]
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
  * valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent"
    * text = "Curative"
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
    * url = "totalDose"
    * valueQuantity = 14500 'cGy'
  * extension[+]
    * url = "fractions"
    * valuePositiveInt = 1
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-planned-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C1Uterus"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.74.842419.2121.20150602151.07.01.22.1"
* status = #completed
* intent = #filler-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1217123003 "Radiotherapy course of treatment (regime/therapy)"
* subject = Reference(Patient-XRTS-07-22B)
* performer = Reference(RadiotherapySeedDevice-Mesh)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* bodySite = http://snomed.info/sct#71252005 "Cervix uteri structure (body structure)"
```