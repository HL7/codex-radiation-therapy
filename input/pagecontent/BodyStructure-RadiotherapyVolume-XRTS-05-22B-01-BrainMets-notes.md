```
Instance: RadiotherapyVolume-XRTS-05-22B-01-BrainMets
InstanceOf: BodyStructure
Title: "RadiotherapyVolume-XRTS-05-22B-01-BrainMets"
Description: "Example target volume XRTS-05 'Brain Mets' Course 1."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2021-10-16T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.05.01.22.1"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
  * value = "Brain Mets"
* morphology = http://snomed.info/sct#228793007 "Planning target volume (observable entity)"
* location = http://snomed.info/sct#12738006 "Brain structure (body structure)"
* locationQualifier = http://snomed.info/sct#255609007 "Partial (qualifier value)"
* patient = Reference(Patient-XRTS-05-22B)
```