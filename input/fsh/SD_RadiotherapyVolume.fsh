Profile: RadiotherapyVolume
Parent: $mCODERadiotherapyVolume
Id: codexrt-radiotherapy-volume
Title: "Radiotherapy Volume"
Description: "A volume of the body used in radiotherapy planning or treatment delivery. This corresponds to the Conceptual Volume in DICOM."
// * obeys mcode-description-or-id-required
* ^status = #draft
* identifier  MS // Sushi will set the required minimum slices automatically based on slice cardinalities.  No value in hardwiring it here.
* identifier ^definition = "SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM."
//* identifier ^slicing.discriminator.type = #value
//* identifier ^slicing.discriminator.path = "use"
//* identifier ^slicing.rules = #open
* identifier ^slicing.description = "At least one display name and and one DICOM style UID as technical globally unqiue key"

* identifier contains
    dicomUid 1..1 MS

* identifier[displayName] 1..1 //slice defined in mCODE but here we require minimum cardinality 1
//  * use = #usual
//  * value 1..1 MS
* identifier[dicomUid]
  * use = #official
  * system = DICOMUID
  * value 1..1 MS
