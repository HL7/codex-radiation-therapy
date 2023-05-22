```
Instance: RadiotherapyPhasePrescription-102-RTTD-LeftBreastBoost
InstanceOf: RadiotherapyPhasePrescription
Title: "RadiotherapyPhasePrescription-102-RTTD-LeftBreastBoost"
Description: "Radiotherapy Phase Prescription example from Codex RTTD collection."
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-prescribed"
  * valuePositiveInt = 5
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
    * valueReference = Reference(RadiotherapyVolume-102-LeftBreastBoost)
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 200 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 1000 'cGy'
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPhaseId"
  * value = "Left Breast Boost"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.333.102"
* basedOn = Reference(RadiotherapyCoursePrescription-101-RTTD-BilateralBreast)
* status = #active
* intent = #original-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-101)
* bodySite = http://snomed.info/sct#76752008 "Breast structure (body structure)"
  * extension
    * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-laterality-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#7771000 "Left (qualifier value)"
```