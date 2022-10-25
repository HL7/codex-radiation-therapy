Profile: RadiotherapyTreatmentDevice
Parent: Device
Id: codexrt-radiotherapy-treatment-device
Title: "Radiotherapy Treatment Device"
Description: "The device used to deliver radiotherapy. For example, a LINAC (external beam) or an Afterloader (brachytherapy). The device is specified by at least its manufacturer and model name."

* manufacturer 1..1 MS

* deviceName ^slicing.discriminator.type = #value
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName ^slicing.description = "Slicing based on type of the device name"

* deviceName contains
    model-name 1..1 MS
* deviceName[model-name].type = #model-name
* deviceName[model-name] ^short = "Model name of the treatment device."
