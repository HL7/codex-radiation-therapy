//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Profile: RadiotherapyCoursePrescription
Parent: ServiceRequest
Id: RadiotherapyCoursePrescription
Title: "(Future) Radiotherapy Course Prescription"
Description: "Radiotherapy Course Prescription is the high-level request for Radiotherapy that may be fulfilled by one or multiple Phases.
Usually, the Course addresses one disease and anatomical treatment site and covers the whole treatment of that site."
* ^status = #draft
* insert RadiotherapyRequestCommon // See SD_RadiotherapyPhasePrescripion.fsh
* extension contains
    $mCODEProcedureIntent named treatment-intent 0..1 MS and
    $mCODERadiotherapySessions named radiotherapy-sessions 0..1 MS
    // RadiotherapyDosePrescribedToVolume named radiotherapy-dose-prescribed-to-volume 0..* MS -- already included
* extension[radiotherapy-dose-prescribed-to-volume]
  * extension[fractionDosePrescribed] 0..0
  * extension[fractionDosePrescribed] ^short = "Not used in this profile. See Phase Prescriptions for detailed Fractionation."
  * extension[fractionDosePrescribed] ^definition = "Fraction dose is only defined in Phases, where all fractions are equivalent. On Course the number of fractions is summarized over all Phase Prescriptions, which may prescribe different dose per Fraction."
* code = RadiotherapyRequest#radiotherapy-course-prescription "Radiotherapy Course Prescription"
* occurrencePeriod only Period
* occurrencePeriod MS
