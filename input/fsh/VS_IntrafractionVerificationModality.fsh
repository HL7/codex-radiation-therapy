ValueSet: IntrafractionVerificationModalityVS
Id: codexrt-intrafraction-verification-modality-vs
Title: "Intrafraction Verification Modality Value Set"
Description: "The modality used for verification of the patient positiong during a treatment fraction."
* ^experimental = false
* insert SCTCopyright
// O3 Picklist 

// - Radiofrequency
// - Ultrasound
// - Orthogonal X Rays
// - Single field X Rays
// - Computed Tomography
// - Optical
// - Thermal
// - MRI

// TODO Discuss concepts, definitions, encoding and usage of existing SNOMED CT concepts. This is just a draft for discussion.
* SnomedRequestedCS#USCRS-99999811 "Radiofrequency based position verification (procedure)"
* SCT#44491008 "Fluoroscopy (procedure)"         // Fluoroscopy
* SCT#16310003 "Ultrasonography (procedure)"    // Ultrasound
* SCT#168537006-orthogonal "Orthogonal fields radiography (procedure)"  // XRay
* SCT#168537006-single "Single field radiography (procedure)"  // XRay
* SCT#77477000 "Computed tomography (procedure)" // CT
//* SCT#717193008 "Cone beam computed tomography (procedure)" // Cone beam CT
* SnomedRequestedCS#USCRS-99999812 "Optical position verification (procedure)"
* SnomedRequestedCS#USCRS-99999813 "Thermal imaging (procedure)"
* SCT#113091000 "Magnetic resonance imaging (procedure)" // MRI
