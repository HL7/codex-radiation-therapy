ValueSet: RadiotherapyTreatmentLocationTypeVS
Id: codexrt-radiotherapy-treatment-location-type-vs
Title: "Radiotherapy Treatment Location Type Value Set"
Description: "The type of location where radiotherapy treatment is provided"
* insert SCTCopyright
* ^experimental = false
* v3-RoleCode#RADDX "Radiology diagnostics or therapeutics unit"
* v3-RoleCode#RADO "Radiation oncology unit"
* v3-RoleCode#HOSP "Hospital"
* v3-RoleCode#MHSP "Military Hospital"
* v3-RoleCode#GACH "Hospitals: General Acute Care Hospital"
* v3-RoleCode#HRAD "radiology unit"

Profile: RadiotherapyTreatmentLocation
Parent: USCoreLocation
Id: codexrt-radiotherapy-treatment-location
Title: "Treatment Location"
Description: "Treatment Location (USCoreLocation)"
* name ^short = "Name of Treatment Location"
* type from RadiotherapyTreatmentLocationTypeVS (required)
* type 1..1
