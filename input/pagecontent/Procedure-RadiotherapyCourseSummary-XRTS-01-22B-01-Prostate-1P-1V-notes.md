```
Instance: RadiotherapyCourseSummary-XRTS-01-22B-01-Prostate-1P-1V
InstanceOf: Procedure
Title: "RadiotherapyCourseSummary-XRTS-01-22B-01-Prostate-1P-1V"
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-01 completely treated."
Usage: #example
* meta
  * versionId = "2"
  * lastUpdated = "2021-09-07T13:21:17+01:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
* extension[0]
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
  * valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent"
    * text = "Curative"
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
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions"
  * valueUnsignedInt = 2
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-01-22B-01-Prostate) "Prostate"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
    * valueBoolean = true
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 400 'cGy'
  * extension[+]
    * url = "fractionsDelivered"
    * valueUnsignedInt = 2
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C1Prostate"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.01.01.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-01-22B-01-Prostate-1P-1V)
* status = #completed
* category = http://snomed.info/sct#108290001
* code = http://snomed.info/sct#1217123003
* subject = Reference(Patient-XRTS-01-22B)
* performedPeriod
  * start = "2021-09-06T13:15:17+01:00"
  * end = "2021-09-07T13:21:17+01:00"
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C61 "Malignant neoplasm of prostate"
* bodySite = http://snomed.info/sct#41216001 "Prostatic structure (body structure)"
```