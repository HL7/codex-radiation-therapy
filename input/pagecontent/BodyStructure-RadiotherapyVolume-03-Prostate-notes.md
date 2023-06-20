```
Instance: RadiotherapyVolume-03-Prostate
InstanceOf: BodyStructure
Title: "RadiotherapyVolume-03-Prostate"
Description: "Example target volume 'Prostate'."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2020-07-03T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151825"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
  * value = "Prostate"
* morphology = http://snomed.info/sct#228793007 "Planning target volume (observable entity)"
* patient = Reference(Patient-6)
```