Profile: RadiotherapyAdverseEvent
Parent: AdverseEvent
Id: codexrt-radiotherapy-adverse-event
Title: "Radiotherapy Adverse Event"
Description: "A Radiotherapy Adverse Event is an adverse event resulting from radiation toxicity.   This profile is based on the work of the [Vulcan project](http://www.hl7.org/vulcan/).
Future versions of this IG should reference adverse event profiles from Vulcan, once they are published.  The current profile is inspired by the work of Vulcan and Common Terminology Criteria (CTC) Adverse Event (CTCAE."
* ^status = #draft
* ^experimental = true
* subject and date and outcome and recorder and encounter and study MS
* actuality = #actual
* subject only Reference(USCorePatient)
// ------Event-----
* event 1..1 MS
* event.text 0..1 MS
* event.coding 1..*
* event from AdverseEventTermVS (preferred)

* event ^short = "Adverse Event Term"
* event ^definition = "The MedDRA or NCIT code for the Adverse Event Term. The code should not precoordinate the adverse event grade"
* event.text ^short = "Verbatim Text"
* event.text ^definition = "The original, verbatim word or phrase as entered by the clinician describing the advese event. The verbatim text may be different than the CTCAE Term given in event.coding.display, since the latter is derived, coded version of the verbatim text. If the AE was selected from a pick list, the event.text must be text displayed in the user interface that was selected by the clinician."
// ------Grade-----
* extension contains
    AdverseEventSeverityOrGrade named severity-or-grade 1..1 MS
* suspectEntity.instance only Reference( RadiotherapyTreatedPhase or RadiotherapyCourseSummary or RadiotherapyTreatedPlan)
* suspectEntity MS

RuleSet: AdverseEventExtensionPreamble
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "AdverseEvent"


Extension: AdverseEventSeverityOrGrade
Id: codexrt-radiotheraphy-adverse-event-severity-or-grade
Title: "Radiotherapy Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. The code '0' representing no adverse event may be used to provide positive confirmation that the clinician assessed or considered this particular AE, although the absence of an adverse event is generally not reportable. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* insert AdverseEventExtensionPreamble
* value[x] only CodeableConcept
* value[x] from AdverseEventSeverityOrGradeVS (required)
