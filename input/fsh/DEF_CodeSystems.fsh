CodeSystem: SnomedRequestedCS
Id: snomed-requested-cs
Title: "Requested SNOMED Codes Code System"
Description: "Codes requested from SNOMED by mCODE, to be issued at a later date. Where numeric codes are given, these correspond to the expected SNOMED-CT codes. Terms beginning with 'USCRS-' (for United States Content Request Service) represent request identifiers with no SNOMED code yet approved or assigned."
* ^caseSensitive = true
* ^experimental = false
* #USCRS-33527  "Radiotherapy Treatment Phase (therapy/regime)"
* #USCRS-33951  "Radiotherapy Treatment Plan (therapy/regime)"
// * #seedsonstrand "Seeds on Strand"
// * #seedsonmesh "Seeds on Mesh"
// * #afterloader "Brachy Afterloader"

// ValueSet: RadiotherapyRequest
// Id: radiotherapy-request
// Title: "Radiotherapy Request"
// Description: "Codes to specify which kind of Radiotherapy request is covered by a request resource."
// * ^status = #draft
// * codes from system RadiotherapyRequest

// CodeSystem: RadiotherapyRequest
// Id: radiotherapy-request
// Title: "Radiotherapy Request"
// Description: "Specifies which kind of Radiotherapy request is covered by a request resource."
// * ^status = #draft
// * ^caseSensitive = true
//* #radiotherapy-course-prescription	"Radiotherapy Course Prescription" 	"Identifies a ServiceRequest resource for prescribing complete Course of Radiotherapy treatment."
//* #radiotherapy-phase-prescription "Radiotherapy Phase Prescription" "Identifies a ServiceRequest resource for prescribing a Phase of radiotherapy treatment."
//* #radiotherapy-plan-prescription "Radiotherapy Plan Prescription" "Identifies a ServiceRequest resource for prescribing a treatment with single Radiotherapy Treatment Plan."
//* #radiotherapy-planned-course	"Radiotherapy Planned Course" 	"Identifies a ServiceRequest resource that covers all Treatment Plans for a complete Course of Radiotherapy treatment."
//* #radiotherapy-planned-phase "Radiotherapy Planned Phase" "Identifies a ServiceRequest resource that covers all Treatment Plans for a single Phase of radiotherapy treatment."
//* #radiotherapy-QA-plan	"Radiotherapy QA Plan" 	"Identifies a ServiceRequest resource for one Radiotherapy QA Plan."
//* #radiotherapy-treatment-plan	"Radiotherapy Treatment Plan" 	"Identifies a ServiceRequest or Procedure resource for one Radiotherapy Treatment Plan."
//* #radiotherapy-treatment-phase	"Radiotherapy Treatment Phase" 	"Identifies a ServiceRequest or Procedure resource for one Radiotherapy Treatment Phase."
//* #radiotherapy-QA-plan	"Radiotherapy QA Plan" 	"Identifies a ServiceRequest resource for one Radiotherapy QA Plan."

// ValueSet: RadiotherapyProcedure
// Id: radiotherapy-procedure
// Title: "Radiotherapy Procedure"
// Description: "Codes to specify which kind of Radiotherapy procedure is covered by a Procedure resource."
// * ^status = #draft
// * codes from system RadiotherapyProcedure

// CodeSystem: RadiotherapyProcedure
// Id: radiotherapy-procedure
// Title: "Radiotherapy Procedure"
// Description: "Specifies which kind of Radiotherapy procedure is covered by a Procedure resource."
// * ^status = #draft
// * ^caseSensitive = true
// * #radiotherapy-treated-plan	"Treated Radiotherapy Treatment Plan" 	"Identifies a Procedure that decribes the treamtent delivery of one Radiotherapy Treatment Plan."


ValueSet: RadiotherapyEnergyUnits
Id: radiotherapy-energy-units
Title: "Unit to characterize Energy in Radiotherapy"
Description: "Unit to characterize the Energy spectrum used in Radiotherapy.
For electrons, the maximum energy is given in MeV.
For photons, the maximum acceleration voltage is given in MV or kV, although those are not units of energy."
* ^copyright = "This value set includes content from The Unified Code for Units of Measure (UCUM), also known as the UCUM Specification which is copyright ©1999-2021, Regenstrief Institute, Inc. All rights reserved."
//* ^copyright = "This value set includes content from The Unified Code for Units of Measure (UCUM), also known as the \“UCUM Specification,\” which is copyright ©1999-2021, Regenstrief Institute, Inc. All rights reserved."
* ^status = #draft
* ^experimental = false
* UCUM#MeV "megaelectronvolt"
* UCUM#MV "megavolt"
* UCUM#kV "kilovolt"

CodeSystem: ReasonForRevisionOrAdaptationCS
Id: codex-radiotherapy-reason-for-revision-or-adaptation-cs
Title: "Reason for Revision Code System"
Description: "The reason a planned or prescribed radiotherapy treatment was revised, superceded, or adapted."
* ^status = #draft
* ^caseSensitive = true
* ^experimental = false
* #treatmentintentchange	"Changes to Treatment Intent (finding)" 	"new concept under 373856008 |Reason for change in radiotherapy course (finding)"
* #targetchange  "Changes to Target Anatomy (finding)" "new concept under 373856008 |Reason for change in radiotherapy course (finding)."
* #organatriskchange  "Changes to Organ at Risk Anatomy (finding)" "new concept under 373856008 |Reason for change in radiotherapy course (finding)."

CodeSystem: ApplicatorTypesCS
Id: codex-radiotherapy-applicator-types-cs
Title: "Brachytherapy Applicator Types Code System"
Description: "Brachytherapy Applicator Types  -- need to request codes"
* ^status = #draft
* ^caseSensitive = true
* ^experimental = false
* #ring	"Ring, device (physical object)" 	"new concept under 228766009 |Form of brachytherapy source (physical object)"
* #tandem "Tandem, device (physical object)" "(small metal tube)  new code child of 228775006 |Tubes source (physical object)."
* #ovoid 	"Ovoid, device (physical object)" 	"(round hollow metal holders that are placed adjacent to cervix) new concept under 228766009 |Form of brachytherapy source (physical object)|"
* #cylinder  "Vaginal Cylinder, device (physical object)" "A vaginal cylinder is made of plastic and looks like a large tampon with a hollow center. It is placed into the vagina and may be kept in place with gauze, balloons, or a special undergarment.  )  define a new concept under 228766009 |Form of brachytherapy source (physical object)| ."
