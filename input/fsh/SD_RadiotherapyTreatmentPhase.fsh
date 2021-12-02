


Profile: TeleradiotherapyTreatmentPhase
Parent: RadiotherapyTreatmentPhase
Id: codexrt-teleradiotherapy-treatmentphase
Title: "Teleradiotherapy Treatment Phase"
Description: "A Summary of the Treatment Progress over an External Beam Treatment Phase.
Whenever new contributions in the scope of the same Phase are delivered, this resource is updated (no new resource created)."
* insert RadiotherapyTreatmentPhaseCommon
* ^status = #draft
* basedOn ^short = "Should Reference a https://profiles.ihe.net/RO.XRTS/StructureDefinition/TeleradiotherapyPhasePrescription" // only Reference(TeleradiotherapyPhasePrescription)

Profile: BrachytherapyTreatmentPhase
Parent: RadiotherapyTreatmentPhase
Id: codexrt-brachytherapy-treatmentphase
Title: "Brachytherapy Treatment Phase"
Description: "A Summary of the Treatment Progress over a Brachytherapy Treatment Phase.
Whenever new contributions in the scope of the same Phase are delivered, this resource is updated (no new resource created)."
* insert RadiotherapyTreatmentPhaseCommon
* ^status = #draft
* basedOn ^short = "Should Reference a https://profiles.ihe.net/RO.XRTS/StructureDefinition/BrachytherapyPhasePrescription" // only Reference(BrachytherapyPhasePrescription)
