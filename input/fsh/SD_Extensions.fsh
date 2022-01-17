//From mCODE:
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

Extension: RadiotherapyTreatmentDeviceType
Id: codexrt-radiotheraphy-treatment-device-type
Title: "Type of Treatment Device"
Description: "The type of device used for delivering the Radiotherapy. This can be a type of treatment machine or auxiliary device, for example a positioning device.
Device instances are not specified here. Those are represented by resources of type Device."
* . ^short = "Type of Treatment Device"
* value[x] ^short = "Type of Treatment Device"
* value[x] only CodeableConcept

// mCODE has no prescription yet. But defined already symmetric with delivery in mCODE:
// http://hl7.org/fhir/us/mcode/2021May/StructureDefinition-mcode-radiotherapy-fractions-delivered.html
Extension: RadiotherapyFractionsPrescribed
Id: codexrt-radiotherapy-fractions-prescribed
Title: "Number of Prescribed Fractions"
Description: "The number of prescribed Fractions in this scope.
This extension SHALL only be present if the treatment is structured as countable Fractions, for example in a Phase Prescription."
* . ^short = "Number of Prescribed Fractions"
* value[x] ^short = "Number of Prescribed Fractions"
* value[x] only positiveInt

Extension: RadiotherapyFractionsPlanned
Id: codexrt-radiotherapy-fractions-planned
Title: "Number of Planned Fractions"
Description: "The number of planned Fractions in this scope.
This extension SHALL only be present if the treatment is structured as countable Fractions, for example in a Planned Phase or in a Treatment Plan."
* . ^short = "Number of Planned Fractions"
* value[x] ^short = "Number of Planned Fractions"
* value[x] only positiveInt

//mCODE has no prescription yet, but expect that to be symmetric to
//http://hl7.org/fhir/us/mcode/2021May/StructureDefinition-mcode-radiotherapy-dose-delivered-to-volume.html
Extension: RadiotherapyDosePrescribedToVolume
Id: codexrt-radiotherapy-dose-prescribed-to-volume
Title: "Dose Prescribed to Volume"
Description: "Dose parameters prescribed for one radiotherapy volume."
* . ^short = "Prescribed Dose to a Dose Reference"
* extension contains
    volume 1..1 MS and
    fractionDosePrescribed 0..1 MS and
    totalDosePrescribed 0..1 MS and
    fractionsPrescribed 0..1 MS
* extension[volume]
  * value[x] only Reference(RadiotherapyVolume)
  * ^short = "Volume to which Dose is Prescribed"
  * ^definition = "A BodyStructure resource representing the body structure to be treated, for example, Chest Wall Lymph Nodes."
* extension[fractionDosePrescribed]
  * value[x] only Quantity
  * valueQuantity = UCUM#cGy
  * ^short = "Radiation Dose Prescribed per Fraction"
  * ^definition = "The dose prescribed per Fraction to this volume."
* extension[totalDosePrescribed]
  * value[x] only Quantity
  * valueQuantity = UCUM#cGy
  * ^short = "Total Radiation Dose Prescribed"
  * ^definition = "The total dose prescribed to this volume within the scope of this ServiceRequest."
* extension[fractionsPrescribed]
  * value[x] only positiveInt
  * ^short = "Number of Prescribed Fractions"
  * ^definition = "The prescribed number of Fractions to deliver the dose. See also extension RadiotherapyFractionsPrescribed which is used instead if fractions are not per volume, e.g. in Phase Prescriptions or Plans."

Extension: RadiotherapyDosePlannedToVolume
Id: codexrt-radiotherapy-dose-planned-to-volume
Title: "Dose Planned to Volume"
Description: "Dose parameters planned for one radiotherapy volume."
* . ^short = "Planned Dose to a Dose Reference"
* extension contains
    volume 1..1 MS and
    totalDosePlanned 0..1 MS and
    fractionsPlanned 0..1 MS and
    fractionDosePlanned 0..1 MS
* extension[volume]
  * value[x] only Reference(RadiotherapyVolume)
  * ^short = "Volume for which Dose is Planned"
  * ^definition = "A BodyStructure resource representing the body structure to be treated, for example, Chest Wall Lymph Nodes."
* extension[totalDosePlanned]
  * value[x] only Quantity
  * valueQuantity = UCUM#cGy
  * ^short = "Total Planned Radiation Dose"
  * ^definition = "The total dose planned to this volume within the scope of this ServiceRequest."
* extension[fractionsPlanned]
  * value[x] only positiveInt
  * ^short = "Number of Planned Fractions"
  * ^definition = "The planned number of Fractions to deliver the dose. See also extension RadiotherapyFractionsPlanned which is used instead if fractions are the same for all volumes, i.e. in Planned Phases or Plans."
* extension[fractionDosePlanned]
  * value[x] only Quantity
  * valueQuantity = UCUM#cGy
  * ^short = "Radiation Dose Planned per Fraction"
  * ^definition = "The dose Planned per Fraction to this volume."

Extension: RadiotherapyEnergy
Id: codexrt-radiotherapy-energy
Title: "Radiotherapy Energy"
Description: "The radiation energy, preferably specified as decimal in MV."
* . ^short = "Radiotherapy Energy"
* value[x] only SimpleQuantity
* valueQuantity ^short = "The radiation energy as decimal in MV."
* valueQuantity = UCUM#MV "megavolt"

Extension: RadiotherapyFractionsDelivered
Id: codexrt-radiotherapy-fractions-delivered
Title: "Radiotherapy Fractions Delivered"
Description: "The total number of fractions (treatment divisions) actually delivered for this volume."
* value[x] only unsignedInt