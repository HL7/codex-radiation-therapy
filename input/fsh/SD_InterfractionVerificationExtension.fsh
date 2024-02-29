// Extension: IntrafractionVerification
// Id: codexrt-intrafraction-verification
// Description: "Verification of the patient or target position during a treatment fraction."
// Title: "Intrafraction Verification"
// * . ^short = "Intrafraction Verification"
// * value[x] only CodeableConcept
// * value[x] from IntrafractionVerificationProcedureVS (extensible)
// * value[x] 1..1

Extension: IntrafractionVerification
Id: codexrt-intrafraction-verification
Description: "Verification of the patient or target position during a treatment fraction."
Title: "Intrafraction Verification"
// Add invariant that "the qualifier is only present when the procedure is xray"
// Need a table with the documentation of the combinations, and clarifying that xray without a qualifer = xray + singular.
* . ^short = "Intrafraction Verification"
* insert UsualContexts //Those can be reduced. E.g. I don't expect Obervation(Definition) or Extension as contexts. Maybe remove more.
* obeys IntrafractionVerificationQualifierAllowed
* value[x] 0..0
* extension contains
    procedure 1..1 and
    qualifier 0..1
* extension[procedure]
  * value[x] only CodeableConcept 
  * value[x] from IntrafractionVerificationProcedureVS (extensible)
  * value[x] 1..1
  * extension 0..0
* extension[qualifier]
  * value[x] only CodeableConcept 
  * value[x] from IntrafractionVerificationQualifierVS (extensible)
  * value[x] 1..1
  * extension 0..0


Invariant: IntrafractionVerificationQualifierAllowed
Description: "Qualifier is only allowed for X-Ray procedure."
Severity: #error
//* SCT#168537006 "Plain radiography (procedure)"  // XRay
Expression: "extension.where(url = 'qualifier').exists() implies \n
               (extension.where(url = 'procedure').exists() and \n
                extension.where(url = 'procedure').value.exists() and \n
                extension.where(url = 'procedure').value.coding.all(\n
                    (system = 'http://snomed.info/sct') and \n
                    (code = '168537006') \n
                 )\n
               )"
XPath: "true()"