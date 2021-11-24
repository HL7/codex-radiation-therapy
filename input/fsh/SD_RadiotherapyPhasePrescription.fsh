//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------


// Modelled in alignment with mCODE Teleradiotherapy Treatment Phase.
Profile: TeleradiotherapyPhasePrescription
Parent: ServiceRequest
Id: TeleradiotherapyPhasePrescription
Title: "(Future) Teleradiotherapy Phase Prescription"
Description: "A Teleradioherapy Phase Prescription is a request for one series of fractionated treatments using External Beam Radiotherapy. It can define treatment parameters such as modality or technique,
and prescribe dose to multiple targets."
* insert RadiotherapyRequestCommon
* insert RadiotherapyPhasePrescriptionCommon
* code = RadiotherapyRequest#teleradiotherapy-phase-prescription "Teleradiotherapy Phase Prescription"

// Modelled in alignment with mCODE Teleradiotherapy Treatment Phase.
Profile: BrachytherapyPhasePrescription
Parent: ServiceRequest
Id: BrachytherapyPhasePrescription
Title: "(Future) Brachytherapy Phase Prescription"
Description: "A Brachytherapy Phase Prescription is a request for one series of fractionated treatments using Brachytherapy. It can define treatment parameters such as modality or technique,
and prescribe dose to multiple targets."
* insert RadiotherapyRequestCommon
* insert RadiotherapyPhasePrescriptionCommon
* code = RadiotherapyRequest#brachytherapy-phase-prescription "Brachytherapy Phase Prescription"