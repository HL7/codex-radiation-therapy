```
Instance: RadiotherapyCourseSummary-XRTS-04-22B-01-Breast-2P-3V-1Fx
InstanceOf: Procedure
Title: "RadiotherapyCourseSummary-XRTS-04-22B-01-Breast-2P-3V-1Fx"
Description: "Radiotherapy Course Summary example from Codex XRTS collection, test case XRTS-04 after 1 fraction."
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
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions"
  * valueUnsignedInt = 1
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22B-01-LeftBreast) "Left Breast"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
    * valueBoolean = true
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 300 'cGy'
  * extension[+]
    * url = "fractionsDelivered"
    * valueUnsignedInt = 1
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-04-22B-02-LeftBreastBoost) "Left Breast Boost"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
    * valueBoolean = true
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 300 'cGy'
  * extension[+]
    * url = "fractionsDelivered"
    * valueUnsignedInt = 1
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C1_Both_Breast"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.04.01.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-04-22B-01-Breast-2P-3V)
* status = #in-progress
* category = http://snomed.info/sct#108290001
* code = http://snomed.info/sct#1217123003
* subject = Reference(Patient-XRTS-04-22B)
* performedPeriod
  * start = "2021-09-06T13:15:17+01:00"
  * end = "2021-09-06T13:21:17+01:00"
* reasonCode = http://snomed.info/sct#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* bodySite = http://snomed.info/sct#76752008 "Breast structure (body structure)"
  * extension
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#7771000 "Left (qualifier value)"
```