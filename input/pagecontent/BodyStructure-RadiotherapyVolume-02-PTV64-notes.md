```
Instance: RadiotherapyVolume-02-PTV64
InstanceOf: BodyStructure
Title: "RadiotherapyVolume-02-PTV64"
Description: "Example target volume 'PTV64'."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2020-07-03T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151824"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
  * value = "PTV64"
* morphology = http://snomed.info/sct#228793007 "Planning target volume (observable entity)"
* patient = Reference(Patient-6)
```