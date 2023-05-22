```
Instance: RadiotherapyCourseSummary-XRTS-06-22B-01-Uterus-1P-1V
InstanceOf: Procedure
Title: "RadiotherapyCourseSummary-XRTS-06-22B-01-Uterus-1P-1V"
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-06 completely treated."
Usage: #example
* meta
  * versionId = "2"
  * lastUpdated = "2021-09-20T13:21:17+01:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
* extension[0]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-involves-reirradiation"
  * valueBoolean = false
* extension[+]
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
  * valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[+]
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
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions"
  * valueUnsignedInt = 5
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-06-22B-01-Uterus) "Uterus"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
    * valueBoolean = true
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 3000 'cGy'
  * extension[+]
    * url = "fractionsDelivered"
    * valueUnsignedInt = 5
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C1Uterus"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.72.842419.2121.20150602151.06.01.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-06-22B-01-Uterus-1P-1V)
* status = #completed
* category = http://snomed.info/sct#108290001
* code = http://snomed.info/sct#1217123003
* subject = Reference(Patient-XRTS-06-22B)
* performedPeriod
  * start = "2021-09-06T13:15:17+01:00"
  * end = "2021-09-20T13:21:17+01:00"
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C53.9 "Malignant neoplasm of cervix uteri, unspecified"
* bodySite = http://snomed.info/sct#71252005 "Cervix uteri structure (body structure)"
* usedReference = Reference(RadiotherapyTreatmentDevice-ACMETurbo3000Afterloader)
```