
Instance: RadiotherapyVolume-01-PTV50
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "radiotherapyVolume-01-PTV50" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "PTV50" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151823" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-02-PTV64
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-02-PTV64" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "PTV64" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151824" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-03-Prostate
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-03-Prostate" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Prostate" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151825" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-04-PelvNs
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-04-PelvNs" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Pelv Ns" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151826" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-05-SemVs
InstanceOf: RadiotherapyVolume
Description: "Target Volume."
Usage: #example
* id = "RadiotherapyVolume-05-SemVs" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[+]
  * use = #usual
  * system = VarianDoseReferenceId
  * value = "Sem Vs" // display id
* identifier[+]
  * use = #official
  * system = DICOMUID
  * value = "1.2.246.352.71.10.842421386418.21321.20150602151827" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)
