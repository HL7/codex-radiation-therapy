```
Instance: RadiotherapyAdverseEvent-XRTS-07-22B
InstanceOf: RadiotherapyAdverseEvent
Title: "Example Adverse Event from Radiotherapy"
Description: "Adverse Event, Nausea following course of treatment."
Usage: #example
* extension
  * url = "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotheraphy-adverse-event-severity-or-grade"
  * valueCodeableConcept = AdverseEventSeverityOrGradeCS#1 "Mild Adverse Event"
* actuality = #actual
* event = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl#C146764 "Nausea"
* subject = Reference(Patient-XRTS-07-22B)
* suspectEntity.instance = Reference(RadiotherapyCourseSummary-XRTS-07-22B-01-Uterus-1P-1V)
```