```
Instance: RadiotherapyVolume-XRTS-03-22B-02-PelvNs
InstanceOf: BodyStructure
Title: "RadiotherapyVolume-XRTS-03-22B-02-PelvNs"
Description: "Example target volume XRTS-03 'Pelvic Lymph Nodes'."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.03.02.22.1"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
  * value = "PelvNs"
* morphology = http://snomed.info/sct#228793007 "Planning target volume (observable entity)"
* location = http://snomed.info/sct#245294005 "Pelvic lymph node group (body structure)"
* patient = Reference(Patient-XRTS-03-22B)
```