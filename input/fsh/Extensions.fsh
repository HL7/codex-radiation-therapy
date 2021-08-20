//--------------------------------------------------------------------------------------------------------
// First drafts for XRTS/RTTD discussions. Not reviewed with IHE-RO XRTS yet.
// Contact: martin.vonsiebenthal@varian.com
//--------------------------------------------------------------------------------------------------------

//From mCODE:
RuleSet: ExtensionContext(path)
* ^context[+].type = #element
* ^context[=].expression = "{path}"

Extension: RadiotherapyTreatmentDeviceType
Id: radiotherapyTreatmentDeviceType
Title: "(Future) Type of Treatment Device"
Description: "The type of device used for delivering the Radiotherapy. This can be a type of treatment machine or auxiliary device, for example a positioning device. 
Device instances are not specified here. Those are represented by resources of type Device."
* . ^short = "Type of Treatment Device"
* value[x] ^short = "Type of Treatment Device"
* value[x] only CodeableConcept

// mCODE has no prescription yet. But defined already symmetric with delivery in mCODE:
// http://hl7.org/fhir/us/mcode/2021May/StructureDefinition-mcode-radiotherapy-fractions-delivered.html
Extension: RadiotherapyFractionsPrescribed
Id: radiotherapy-fractions-prescribed
Title: "(Future) Number of Prescribed Fractions"
Description: "The number of prescribed Fractions in this scope. 
This extension SHALL only be present if the treatment is structured as countable Fractions, for example in a Phase Prescription."
* . ^short = "Number of Prescribed Fractions"
* value[x] ^short = "Number of Prescribed Fractions"
* value[x] only positiveInt

//mCODE has no prescription yet, but expect that to be symmetric to 
//http://hl7.org/fhir/us/mcode/2021May/StructureDefinition-mcode-radiotherapy-dose-delivered-to-volume.html
Extension: RadiotherapyDosePrescribedToVolume
Id: radiotherapy-dose-prescribed-to-volume
Title: "(Future) Dose Prescribed to Volume"
Description: "Dose parameters prescribed for one radiotherapy volume."
* . ^short = "Prescribed Dose to a Dose Reference"
* extension contains
    volume 1..1 MS and
    fractionDosePrescribed 0..1 MS and
    totalDosePrescribed 0..1 MS and
    fractionsPrescribed 0..1 MS
* extension[volume].value[x] only Reference(RadiotherapyVolume)
* extension[volume] ^short = "Volume to which Dose is Prescribed"
* extension[volume] ^definition = "A BodyStructure resource representing the body structure treated, for example, Chest Wall Lymph Nodes."
* extension[fractionDosePrescribed].value[x] only Quantity
* extension[fractionDosePrescribed].valueQuantity = UCUM#cGy
* extension[fractionDosePrescribed] ^short = "Radiation Dose Prescribed per Fraction"
* extension[fractionDosePrescribed] ^definition = "The dose prescribed per Fraction to this volume."
* extension[totalDosePrescribed].value[x] only Quantity
* extension[totalDosePrescribed].valueQuantity = UCUM#cGy
* extension[totalDosePrescribed] ^short = "Total Radiation Dose Prescribed"
* extension[totalDosePrescribed] ^definition = "The total dose prescribed to this volume within the scope of this ServiceRequest."
* extension[fractionsPrescribed].value[x] only positiveInt
* extension[fractionsPrescribed] ^short = "Number of Prescribed Fractions"
* extension[fractionsPrescribed] ^definition = "The number of Fraction in which dose to this volume is prescribed. See also extension RadiotherapyFractionsPrescribed which is used instead if fractions are not per volume, e.g. in Phase Prescriptions or Plans."

Extension: RadiotherapyEnergy
Id: radiotherapy-energy
Title: "(Future) Radiotherapy Energy"
Description: "The radiation energy, preferably specified as decimal in MV. Can alternatively be represented as string or CodeableConcept."
* . ^short = "Radiotherapy Energy"
* value[x] ^short = "The radiation energy as decimal in MV. Can alternatively be represented as string or CodeableConcept." 
* value[x] only SimpleQuantity or CodeableConcept 
* valueQuantity = UCUM#MV "megavolt"
