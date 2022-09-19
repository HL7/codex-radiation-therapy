<<<<<<< HEAD:input/fsh/SD_RadiotherapyTreatmentLocation.fsh
ValueSet: RadiotherapyTreatmentLocationTypesVS
Id: codex-radiotherapy-treatment-location-type-vs
Title: "Treatment Location Types VS"
Description: "Treatment Location Types"
* insert SCTCopyright
* v3-RoleCode#RADDX "Radiology diagnostics or therapeutics unit"
* v3-RoleCode#RADO "Radiation oncology unit"
* v3-RoleCode#HOSP "Hospital"
* v3-RoleCode#MHSP "Military Hospital"
* v3-RoleCode#GACH "Hospitals: General Acute Care Hospital"
* v3-RoleCode#HRAD "radiology unit"

Profile: RadiotherapyTreatmentLocation
Parent: USCoreLocation
Id: codex-radiotherapy-treatment-location
Title: "Treatment Location"
Description: "Treatment Location (USCoreLocation)"
* name ^short = "Name of Treatment Location"
* type from RadiotherapyTreatmentLocationTypesVS (required)
* type 1..1
=======

Instance: TreatmentLocation-1
InstanceOf: USCoreLocation
Title: "Treatment Location 1"
Description: "An example treatment location."
Usage: #example
* id = "Treatment-Location-1"
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* type = v3-RoleCode#RADDX "Radiology diagnostics or therapeutics unit"
* name = "Joe's Radiotherapy Clinic"
* address
  * state = "MN"
>>>>>>> c91a508 (FHIR-37976:  uniformFractionation on totalDoseDelivered in COurse Summary):input/fsh/EX_TreatmentLocation.fsh
