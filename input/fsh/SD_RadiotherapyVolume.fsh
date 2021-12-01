//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

Profile: RadiotherapyVolume
Parent: $mCODERadiotherapyVolume
Id: codexrt-radiotherapy-volume
Title: "Radiotherapy Volume"
Description: "A volume of the body used in Radiotherapy planning or treatment delivery. This corresponds to the Conceptual Volume in DICOM."
// * obeys mcode-description-or-id-required
* ^status = #draft
* identifier 2..* MS // SHOULD have both a globally unique technical identifier and a display name in mCODE, but we require both
* identifier ^definition = "SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM."
//* identifier ^slicing.discriminator.type = #value
//* identifier ^slicing.discriminator.path = "use"
//* identifier ^slicing.rules = #open
* identifier ^slicing.description = "At least one display name and and one DICOM style UID as technical globally unqiue key"

* identifier contains
 //   displayName 1..1 MS and
    dicomUid 1..1 MS

//* identifier[displayName].use = #usual
//* identifier[displayName].value 1..1 MS
* identifier[dicomUid].use = #official
* identifier[dicomUid].system = "urn:dicom:uid"
* identifier[dicomUid].value 1..1 MS
