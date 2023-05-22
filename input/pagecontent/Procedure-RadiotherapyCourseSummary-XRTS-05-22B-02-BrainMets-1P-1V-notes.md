```
Instance: RadiotherapyCourseSummary-XRTS-05-22B-02-BrainMets-1P-1V
InstanceOf: Procedure
Title: "RadiotherapyCourseSummary-XRTS-05-22B-02-BrainMets-1P-1V"
Description: "Radiotherapy Course Summary example, test case XRTS-05, Course 2 completely treated."
Usage: #example
* meta
  * versionId = "5"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
* extension[0]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-involves-reirradiation"
  * valueBoolean = true
* extension[+]
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
  * valueCodeableConcept = http://snomed.info/sct#373808002 "Curative - procedure intent"
    * text = "Curative"
* extension[+]
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#1156506007 "External beam radiation therapy using photons (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#1156530009 "Volumetric modulated arc therapy (procedure)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-respiratory-motion-management"
  * valueCodeableConcept = SnomedRequestedCS#USCRS-34886 "Radiotherapy without respiratory motion management (regime/therapy)"
* extension[+]
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions"
  * valueUnsignedInt = 5
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-XRTS-05-22B-02-BrainMets) "Brain Mets"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
    * valueBoolean = true
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 2000 'cGy'
  * extension[+]
    * url = "fractionsDelivered"
    * valueUnsignedInt = 5
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "C2BrainMets"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.72.842418.2121.20150602151.05.02.22.1"
* basedOn = Reference(RadiotherapyPlannedCourse-XRTS-05-22B-02-BrainMets-1P-1V)
* status = #completed
* category = http://snomed.info/sct#108290001
* code = http://snomed.info/sct#1217123003
* subject = Reference(Patient-XRTS-05-22B)
* performedPeriod
  * start = "2021-09-20T13:15:17+01:00"
  * end = "2021-09-24T13:21:17+01:00"
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C71.9 "Malignant neoplasm of brain, unspecified"
* bodySite = http://snomed.info/sct#12738006 "Brain structure (body structure)"
```