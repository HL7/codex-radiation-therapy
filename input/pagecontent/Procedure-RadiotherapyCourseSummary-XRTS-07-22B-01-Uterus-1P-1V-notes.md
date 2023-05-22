```
Instance: RadiotherapyCourseSummary-XRTS-07-22B-01-Uterus-1P-1V
InstanceOf: Procedure
Title: "RadiotherapyCourseSummary-XRTS-07-22B-01-Uterus-1P-1V"
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-07 after 1 fraction."
Usage: #example
* meta
  * versionId = "1"
  * lastUpdated = "2021-09-06T13:21:17+01:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
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
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions"
  * valueUnsignedInt = 1
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-07-22B-01-Uterus) "Uterus"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
    * valueBoolean = true
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 14500 'cGy'
  * extension[+]
    * url = "fractionsDelivered"
    * valueUnsignedInt = 1
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C1Uterus"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.72.842419.2121.20150602151.07.01.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-07-22B-01-Uterus-1P-1V)
* status = #completed
* category = http://snomed.info/sct#108290001
* code = http://snomed.info/sct#1217123003
* subject = Reference(Patient-XRTS-07-22B)
* performedPeriod
  * start = "2021-09-06T13:15:17+01:00"
  * end = "2021-09-06T13:21:17+01:00"
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* bodySite = http://snomed.info/sct#71252005 "Cervix uteri structure (body structure)"
* focalDevice.manipulated = Reference(RadiotherapySeedDevice-Mesh)
```