```
Instance: RadiotherapyVolume-XRTS-02-22B-01-Prostate
InstanceOf: BodyStructure
Title: "RadiotherapyVolume-XRTS-02-22B-01-Prostate"
Description: "Example target volume XRTS-02 'Prostate'."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.02.01.22.1"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
  * value = "Prostate"
* morphology = http://snomed.info/sct#228793007 "Planning target volume (observable entity)"
* location = http://snomed.info/sct#41216001 "Prostatic structure (body structure)"
* locationQualifier = http://snomed.info/sct#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-XRTS-02-22B)
```