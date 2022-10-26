Profile: RadiotherapyVolume
Parent: $mCODERadiotherapyVolume
Id: codexrt-radiotherapy-volume
Title: "Radiotherapy Volume"
Description: "A volume of the body used in radiotherapy planning or treatment delivery. This corresponds to the Conceptual Volume in DICOM."
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

//* identifier[displayName]
//  * use = #usual
//  * value 1..1 MS
* identifier[dicomUid]
  * use = #official
  * system = DICOMUID
  * value 1..1 MS
