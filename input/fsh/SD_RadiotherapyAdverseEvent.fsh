Profile: RadiotherapyAdverseEvent
Parent: AdverseEvent
Id: codexrt-radiotherapy-adverse-event
Title: "Radiotherapy Adverse Event"
Description: "A Radiotherapy Adverse Event is an adverse event resulting from radiation toxicity.   This profile is based on the work of the [Vulcan project](http://www.hl7.org/vulcan/).
Future versions of this IG should reference adverse event profiles from Vulcan, once they are published.  The current profile is inspired by the work of Vulcan and Common Terminology Criteria (CTC) Adverse Event (CTCAE."
* ^status = #draft
* ^experimental = true
* obeys adverse-event-grade-zero-invariant
// * subject only Reference(CancerPatient)
* subject and date and outcome and recorder and actuality and encounter and study MS
* actuality = #actual
// ------Event-----
* event 1..1 MS
* event.text 0..1 MS
* event.coding 1..*
* event from CTCAETermVS (preferred)
* event.coding ^short = "CTCAE Term"
* event.coding ^definition = "The term taken from CTCAE."
* event.coding.code ^short = "MedDRA or NCIT code"
* event.coding.code ^definition = "The MedDRA or NCIT code for the CTCAE Term. The code should not precoordinate the adverse event grade"
* event.coding.display ^short = "Preferred name"
* event.coding.display ^definition = "The preferred name corresponding to the NCIT or MedDRA code."
* event.coding.version ^short = "CTCAE Version"
* event.coding.version ^definition = "The version of CTCAE supplying the MedDRA preferred term."
* event.text ^short = "Verbatim Text"
* event.text ^definition = "The original, verbatim word or phrase as entered by the clinician describing the advese event. The verbatim text may be different than the CTCAE Term given in event.coding.display, since the latter is derived, coded version of the verbatim text. If the AE was selected from a pick list, the event.text must be text displayed in the user interface that was selected by the clinician."
// ------Grade-----
* severity 0..0  // replaced with extension because severity has a required value set we don't want
* extension contains
    CTCAEGrade named grade 1..1 MS and
    AdverseEventExpectation named expectation 0..1 MS and
    AdverseEventResolvedDate named resolvedDate 0..1 MS and
    AdverseEventParticpant named participant 0..* MS and
    AdverseEventSeriousnessOutcome named seriousnessOutcome 0..1 MS
// ------Seriousness------
* seriousness 0..1 MS
* seriousness from AdverseEventSeriousnessVS (required)
// ------Suspect Entity--------
// * suspectEntity.instance only Reference(Medication or MedicationAdministration)
// ------Causality------
* suspectEntity and suspectEntity.instance and suspectEntity.causality and suspectEntity.causality.assessment and suspectEntity.causality.assessment.text MS
* suspectEntity.causality.assessment from AdverseEventRelatednessVS (required)
// ------Recorder, Contributor --------
* recorder only Reference(Practitioner)
* contributor only Reference(Practitioner)


Invariant: adverse-event-grade-zero-invariant
Description: "If the adverse event grade is 0, seriousness and suspectEntity must not be specified."
Expression: "extension('http://hl7.org/fhir/us/mcode/StructureDefinition/ctcae-grade').value.coding.where(code = '0').exists() implies seriousness.exists().not() and suspectEntity.exists().not()"
Severity:   #error


RuleSet: AdverseEventExtensionPreamble
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "AdverseEvent"


Extension: CTCAEGrade
Id: ctcae-grade
Title: "CTC Adverse Event Grade"
Description: "The grade associated with the severity of an adverse event, using CTCAE criteria. The code '0' representing no adverse event may be used to provide positive confirmation that the clinician assessed or considered this particular AE, although the absence of an adverse event is generally not reportable. See https://ctep.cancer.gov/protocolDevelopment/electronic_applications/ctc.htm"
* insert AdverseEventExtensionPreamble
* value[x] only CodeableConcept
* value[x] from CTCAEGradeVS (required)

Extension: AdverseEventExpectation
Id: adverse-event-expectation
Title: "Adverse Event Expectation"
Description: "A determination if the adverse event is or is not one whose nature and severity have been previously observed, identified in nature, severity, or frequency, and documented in the investigator brochure, investigational plan, protocol, current consent form, scientific publication, or in other relevant and reliable document."
* insert AdverseEventExtensionPreamble
* value[x] only CodeableConcept
* value[x] from AdverseEventExpectationVS (required)

Extension: AdverseEventResolvedDate
Id: adverse-event-resolved-date
Title: "Adverse Event Resolved Date"
Description: "The date (and time) when the adverse event ends or returns to baseline (NCI Thesaurus)."
* insert AdverseEventExtensionPreamble
* value[x] only dateTime

// from R5 AE profile to assign approver
Extension: AdverseEventParticpant
Id: adverse-event-participant
Title: "Adverse Event Participant"
Description: "Participant can be used to represent the approver of the adverse event"
* extension contains
    function 0..1 and
    actor 1..1
* extension[function].value[x] only CodeableConcept
* extension[function].value[x] from AdverseEventParticipantFunctionVS (required)
* extension[actor].value[x] only Reference(Practitioner)

Extension: AdverseEventSeriousnessOutcome // named seriousnessOutcome 0..1 MS
Id: adverse-event-seriousness-outcome
Title: "Adverse Event Seriousness Outcome"
Description: "The reason an adverse event is serious"
* value[x] only CodeableConcept
* value[x] from AdverseEventSeriousnessOutcomeVS (required)
