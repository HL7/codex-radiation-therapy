//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

ValueSet: RadiotherapyRequest 
Id: radiotherapy-request 
Title: "(Future) Radiotherapy Request"
Description: "Codes to specify which kind of Radiotherapy request is covered by a request resource."
* ^status = #draft
* codes from system RadiotherapyRequest 

CodeSystem: RadiotherapyRequest
Id: radiotherapy-request 
Title: "(Future) Radiotherapy Request"
Description: "Specifies which kind of Radiotherapy request is covered by a request resource."
* ^status = #draft
* #radiotherapy-course-prescription	"Radiotherapy Course Prescription" 	"Identifies a ServiceRequest resource for a complete Course of Radiotherapy treatment."
* #teleradiotherapy-phase-prescription "Teleradiotherapy Phase Prescription" "Identifies a ServiceRequest resource for a single Phase of external beam radiotherapy treatment."
* #brachytherapy-phase-prescription	"Brachytherapy Phase Prescription" 	"Identifies a ServiceRequest resource for  a single Phase of brachytherapy."
* #teleradiotherapy-treatment-plan	"Teleradiotherapy Treatment Plan" 	"Identifies a ServiceRequest resource for one External Beam Radiotherapy Treatment Plan."
* #teleradiotherapy-QA-plan	"Teleradiotherapy Treatment Plan" 	"Identifies a ServiceRequest resource for one External Beam Radiotherapy QA Plan."
* #brachytherapy-treatment-plan	"Brachytherapy Treatment Plan" 	"Identifies a ServiceRequest resource for one Brachytherapy Treatment Plan."
