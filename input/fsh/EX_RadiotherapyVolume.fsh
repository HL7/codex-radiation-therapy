
Instance: RadiotherapyVolume-01-PTV50
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume 'PTV50'."
Usage: #example
* id = "radiotherapyVolume-01-PTV50" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "PTV50" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151823" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-02-PTV64
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume 'PTV64'."
Usage: #example
* id = "RadiotherapyVolume-02-PTV64" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "PTV64" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151824" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-03-Prostate
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume 'Prostate'."
Usage: #example
* id = "RadiotherapyVolume-03-Prostate" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Prostate" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151825" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-04-PelvNs
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume 'Pelvic Nodes'."
Usage: #example
* id = "RadiotherapyVolume-04-PelvNs" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Pelv Ns" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151826" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)

Instance: RadiotherapyVolume-05-SemVs
InstanceOf: RadiotherapyVolume
Description: "Example Target Volume 'Seminal Vesicles'."
Usage: #example
* id = "RadiotherapyVolume-05-SemVs" //id of the FHIR Resource
* meta.versionId = "123" //Version of the resource on the server
* meta.lastUpdated = "2020-07-03T10:07:41.050+02:00" //Update of the resource on the server. Not necessarily when the clinical contents was modified
* meta.profile[+] = Canonical(RadiotherapyVolume)
* meta.profile[+] = $mCODERadiotherapyVolume
* identifier[displayName]
  * system = VarianDoseReferenceId
  * value = "Sem Vs" // display id
* identifier[dicomUid]
  * system = DICOMUID
  * value = "urn:oid:1.2.246.352.71.842418.2121.20150602151827" // DICOM UID
* morphology = SCT#228793007 "Planning target volume (observable entity)" // type of volume
* patient = Reference(Patient-6)
