```
Instance: cancer-disease-status-22B
InstanceOf: RadiotherapyDiseaseStatus
Title: "cancer-disease-status-22B"
Description: "Extended example: example showing disease status (patient's condition regression)"
Usage: #example
* extension[0]
  * url = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-disease-status-evidence-type"
  * valueCodeableConcept = http://snomed.info/sct#363679005 "Imaging (procedure)"
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume-extension"
  * valueReference = Reference(RadiotherapyVolume-03-Prostate)
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume-extension"
  * valueReference = Reference(RadiotherapyVolume-04-PelvNs)
* extension[+]
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume-extension"
  * valueReference = Reference(RadiotherapyVolume-05-SemVs)
* partOf = Reference(RadiotherapyCourseSummary-04-Prostate)
* status = #final
* code = http://loinc.org#97509-4
* subject = Reference(Patient-6)
* focus = Reference(Diagnosis-2-Prostate)
* effectiveDateTime = "2020-10-22"
* performer = Reference(Practitioner-1005)
* valueCodeableConcept = http://snomed.info/sct#271299001 "Patient's condition worsened (finding)"
  * extension[0]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-progression-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#263820005 "Nodal (qualifier value)"
  * extension[+]
    * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-progression-qualifier"
    * valueCodeableConcept = http://snomed.info/sct#80534008 "Biochemical (qualifier value)"
```