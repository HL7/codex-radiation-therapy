Profile: RadiotherapyTreatmentDevice
Parent: Device
Id: codexrt-radiotherapy-treatment-device
Title: "Radiotherapy Treatment Device"
Description: "The device used to deliver radiotherapy. For example, a LINAC (external beam) or an afterloader (brachytherapy). The device is specified by at least its manufacturer and model name."

* manufacturer 1..1 MS

* deviceName ^slicing.discriminator.type = #value
* deviceName ^slicing.discriminator.path = "type"
* deviceName ^slicing.rules = #open
* deviceName ^slicing.description = "Slicing based on type of the device name"

* deviceName contains
    manufacturer-name 1..1 MS
* deviceName[manufacturer-name].type = #manufacturer-name
* deviceName[manufacturer-name] ^short = "Name of the treatment device given by the manufacturer."
