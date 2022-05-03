CodeSystem: SnomedRequestedCS
Id: snomed-requested-cs
Title: "Requested SNOMED Codes Code System"
Description: "Codes requested from SNOMED by mCODE, to be issued at a later date. Where numeric codes are given, these correspond to the expected SNOMED-CT codes. Terms beginning with 'USCRS-' (for United States Content Request Service) represent request identifiers with no SNOMED code yet approved or assigned."
* ^caseSensitive = true
* #USCRS-33527  "Radiotherapy Treatment Phase (therapy/regime)"
* #USCRS-33951  "Radiotherapy Treatment Plan (therapy/regime)"
* #seedsonstrand "Seeds on Strand"
* #seedsonmesh "Seeds on Mesh"
* #afterloader "Brachy Afterloader"

ValueSet: RadiotherapyRequest
Id: radiotherapy-request
Title: "Radiotherapy Request"
Description: "Codes to specify which kind of Radiotherapy request is covered by a request resource."
* ^status = #draft
* codes from system RadiotherapyRequest

CodeSystem: RadiotherapyRequest
Id: radiotherapy-request
Title: "Radiotherapy Request"
Description: "Specifies which kind of Radiotherapy request is covered by a request resource."
* ^status = #draft
* ^caseSensitive = true
//* #radiotherapy-course-prescription	"Radiotherapy Course Prescription" 	"Identifies a ServiceRequest resource for prescribing complete Course of Radiotherapy treatment."
//* #radiotherapy-phase-prescription "Radiotherapy Phase Prescription" "Identifies a ServiceRequest resource for prescribing a Phase of radiotherapy treatment."
//* #radiotherapy-plan-prescription "Radiotherapy Plan Prescription" "Identifies a ServiceRequest resource for prescribing a treatment with single Radiotherapy Treatment Plan."
//* #radiotherapy-planned-course	"Radiotherapy Planned Course" 	"Identifies a ServiceRequest resource that covers all Treatment Plans for a complete Course of Radiotherapy treatment."
//* #radiotherapy-planned-phase "Radiotherapy Planned Phase" "Identifies a ServiceRequest resource that covers all Treatment Plans for a single Phase of radiotherapy treatment."
//* #radiotherapy-QA-plan	"Radiotherapy QA Plan" 	"Identifies a ServiceRequest resource for one Radiotherapy QA Plan."
//* #radiotherapy-treatment-plan	"Radiotherapy Treatment Plan" 	"Identifies a ServiceRequest or Procedure resource for one Radiotherapy Treatment Plan."
//* #radiotherapy-treatment-phase	"Radiotherapy Treatment Phase" 	"Identifies a ServiceRequest or Procedure resource for one Radiotherapy Treatment Phase."
//* #radiotherapy-QA-plan	"Radiotherapy QA Plan" 	"Identifies a ServiceRequest resource for one Radiotherapy QA Plan."

ValueSet: RadiotherapyProcedure
Id: radiotherapy-procedure
Title: "Radiotherapy Procedure"
Description: "Codes to specify which kind of Radiotherapy procedure is covered by a Procedure resource."
* ^status = #draft
* codes from system RadiotherapyProcedure

CodeSystem: RadiotherapyProcedure
Id: radiotherapy-procedure
Title: "Radiotherapy Procedure"
Description: "Specifies which kind of Radiotherapy procedure is covered by a Procedure resource."
* ^status = #draft
* ^caseSensitive = true
* #radiotherapy-treated-plan	"Treated Radiotherapy Treatment Plan" 	"Identifies a Procedure that decribes the treamtent delivery of one Radiotherapy Treatment Plan."


ValueSet: RadiotherapyEnergyUnits
Id: radiotherapy-energy-units
Title: "Unit to characterize Energy in Radiotherapy"
Description: "Unit to characterize the Energy spectrum used in Radiotherapy.
For electrons, the maximum energy is given in MeV.
For photons, the maximum acceleration voltage is given in MV or kV, although those are not units of energy."
* ^copyright = "This value set includes content from The Unified Code for Units of Measure (UCUM), also known as the UCUM Specification which is copyright ©1999-2021, Regenstrief Institute, Inc. All rights reserved."
//* ^copyright = "This value set includes content from The Unified Code for Units of Measure (UCUM), also known as the \“UCUM Specification,\” which is copyright ©1999-2021, Regenstrief Institute, Inc. All rights reserved."
* ^status = #draft
* UCUM#MeV "megaelectronvolt"
* UCUM#MV "megavolt"
* UCUM#kV "kilovolt"
