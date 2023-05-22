```
Instance: RadiotherapyCoursePrescription-101-RTTD-BilateralBreast
InstanceOf: RadiotherapyCoursePrescription
Title: "RadiotherapyCoursePrescription-101-RTTD-BilateralBreast"
Description: "Radiotherapy Course Prescription example from Codex RTTD collection."
Usage: #example
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
  * extension[0]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
    * valueCodeableConcept = http://snomed.info/sct#45643008 "External beam radiation therapy using electrons (procedure)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
    * valueCodeableConcept = http://snomed.info/sct#1162782007 "Three dimensional external beam radiation therapy (procedure)"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-101-LeftBreast)
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 5000 'cGy'
  * extension[+]
    * url = "fractions"
    * valuePositiveInt = 25
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 6000 'cGy'
  * extension[+]
    * url = "fractions"
    * valuePositiveInt = 30
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-103-RightBreast)
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 5000 'cGy'
  * extension[+]
    * url = "fractions"
    * valuePositiveInt = 25
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyCourseId"
  * value = "Bilateral Breast"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.111.101"
* status = #active
* intent = #original-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1217123003 "Radiotherapy course of treatment (regime/therapy)"
* subject = Reference(Patient-101)
* reasonCode = http://snomed.info/sct#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
* reasonReference = Reference(Diagnosis-101-Breast)
* bodySite = http://snomed.info/sct#76752008 "Breast structure (body structure)"
  * extension
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#51440002 "Right and left (qualifier value)"
```