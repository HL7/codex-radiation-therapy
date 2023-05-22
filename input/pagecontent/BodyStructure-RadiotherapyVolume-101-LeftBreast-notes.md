```
Instance: RadiotherapyVolume-101-LeftBreast
InstanceOf: BodyStructure
Title: "RadiotherapyVolume-101-LeftBreast"
Description: "Example target volume 'Left Breast'."
Usage: #example
* meta
  * versionId = "123"
  * lastUpdated = "2020-07-03T10:07:41.050+02:00"
  * profile[0] = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume"
  * profile[+] = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
* identifier[0]
  * use = #official
  * system = "urn:dicom:uid"
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151.101"
* identifier[+]
  * use = #usual
  * system = "http://varian.com/fhir/identifier/radiotherapyDoseReferenceId"
  * value = "Left Breast"
* morphology = http://snomed.info/sct#228793007 "Planning target volume (observable entity)"
* location = http://snomed.info/sct#76752008 "Breast structure (body structure)"
* locationQualifier[0] = http://snomed.info/sct#7771000 "Left (qualifier value)"
* locationQualifier[+] = http://snomed.info/sct#255503000 "Entire (qualifier value)"
* patient = Reference(Patient-101)
```