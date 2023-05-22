```
Instance: RadiotherapyTreatedPlan-05-Prostate-Phase1-Plan1
InstanceOf: RadiotherapyTreatedPlan
Title: "RadiotherapyTreatedPlan-05-Prostate-Phase1-Plan1"
Description: "Treatment Summary for treamtment plan in the first phase"
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
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope"
    * valueQuantity = 18 'MV' "MV"
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
* extension[+]
  * extension[0]
    * url = "modality"
    * valueCodeableConcept = http://snomed.info/sct#717193008 "Cone beam computed tomography (procedure)"
  * extension[+]
    * url = "energy"
    * valueCodeableConcept = http://unitsofmeasure.org#kV "kV"
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-image-guided-radiotherapy-modality"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-delivered"
  * valueUnsignedInt = 2
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 360 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 360 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[+]
    * url = "totalDoseDelivered"
    * valueQuantity = 360 'cGy'
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
* extension[+]
  * extension[0]
    * url = "instanceUid"
    * valueId = "1.2.246.352.82.6.4636367585964072832.169625210960980125580.444"
  * extension[+]
    * url = "sopClass"
    * valueCoding = urn:ietf:rfc:3986#urn:oid:1.2.840.10008.5.1.4.1.1.481.4
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-dicom-reference"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPrescriptionId"
  * value = "Prostate-Phase1-Plan1"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.555.05.1.1"
* basedOn = Reference(RadiotherapyPlanPrescription-04-Prostate-Phase1-Plan1) "Prostate-Phase1-Plan1"
* partOf = Reference(RadiotherapyTreatedPhase-05-Prostate-Phase1)
* status = #in-progress
* code = http://snomed.info/sct#1255724003 "Radiotherapy treatment plan (regime/therapy)"
* subject = Reference(Patient-6) "Peter Venkman"
* performedPeriod
  * start = "2020-10-27T13:15:17+01:00"
  * end = "2020-10-28T13:21:17+01:00"
* location = Reference(TreatmentLocation-1)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C61 "Malignant neoplasm of prostate"
  * text = "Malignant neoplasm of prostate"
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = http://snomed.info/sct#41216001 "Prostatic structure (body structure)"
  * text = "Prostate"
```