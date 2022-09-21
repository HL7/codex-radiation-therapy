Profile: RadiotherapyDiseaseStatus
Parent: $mCODECancerDiseaseStatus
Id: codexrt-radiotherapy-disease-status
Title: "Radiotherapy Disease Status"
Description: "Disease Status Reported by Radiation Oncologist"
* ^status = #draft
// can't do this, so we add extension
//  * focus only Reference($mCODEPrimaryCancerCondition or $mCODESecondaryCancerCondition or $mCODETumor or RadiotherapyVolume)
* extension contains
    RadiotherapyVolumeExtension named radiotherapyVolume 0..1

Extension: RadiotherapyVolumeExtension
Id: codexrt-radiotherapy-volume-extension
Title: "Radiotherapy Volume Extension"
Description: "Extension providing a reference to a RadiotherapyVolume"
* . ^short = "Radiotherapy Volume"
* value[x] only Reference(RadiotherapyVolume)
* value[x] 1..1
