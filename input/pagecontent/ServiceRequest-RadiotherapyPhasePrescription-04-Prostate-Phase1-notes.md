```
Instance: RadiotherapyPhasePrescription-04-Prostate-Phase1
InstanceOf: RadiotherapyPhasePrescription
Title: "RadiotherapyPhasePrescription-04-Prostate-Phase1"
Description: "Radiotherapy Phase Prescription to cover IHE-RO XRTS profile for a Prostate example, phase 1."
Usage: #example
* meta
  * versionId = "219952"
  * lastUpdated = "2020-07-03T10:07:41.050+02:00"
* extension[0]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-prescribed"
  * valuePositiveInt = 25
* extension[+]
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
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-03-Prostate)
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 180 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 4500 'cGy'
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-04-PelvNs)
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 180 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 4500 'cGy'
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
* extension[+]
  * extension[0]
    * url = "volume"
    * valueReference = Reference(RadiotherapyVolume-05-SemVs)
  * extension[+]
    * url = "fractionDose"
    * valueQuantity = 180 'cGy'
  * extension[+]
    * url = "totalDose"
    * valueQuantity = 4500 'cGy'
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
* identifier[0]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyPrescriptionId"
  * value = "Prostate-Phase1"
* identifier[+]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:2.16.124.113543.1154777499.30246.19789.3503430456"
* basedOn = Reference(RadiotherapyCoursePrescription-04-Prostate) "Prostate-2Phases"
* status = #active
* intent = #original-order
* category = http://snomed.info/sct#108290001 "Radiation oncology AND/OR radiotherapy"
* code = http://snomed.info/sct#1222565005 "Radiotherapy treatment phase (regime/therapy)"
* subject = Reference(Patient-6) "Peter Venkman"
* authoredOn = "2020-07-02T00:00:00+02:00"
* requester = Reference(Practitioner-1005) "aria\user1"
* locationReference = Reference(TreatmentLocation-1)
* reasonCode = http://hl7.org/fhir/sid/icd-10-cm#C61 "Malignant neoplasm of prostate"
  * text = "Malignant neoplasm of prostate"
* reasonReference = Reference(Diagnosis-2-Prostate)
* bodySite = http://snomed.info/sct#41216001 "Prostatic structure (body structure)"
  * text = "Prostate"
```