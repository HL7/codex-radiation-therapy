ValueSet: ImageGuidedRadiotherapyModalityVS
Id: codexrt-image-guided-radiotherapy-modality-vs
Title: "Image Guided Radiotherapy Modality Value Set"
Description: "Modality used for imaging in Image Guided Radiotherapy (IGRT)"
* ^experimental = false
* insert SCTCopyright
// Radiograph, Flourograph, CT, Conebeam CT, MRI, Ultrasound, Optical Monitoring System
// These may be qualified by energy
* SCT#168537006 "Plain radiography (procedure)"  // XRay
* SCT#44491008 "Fluoroscopy (procedure)"         // Flurograph
* SCT#77477000 "Computed tomography (procedure)" // CT
* SCT#717193008 "Cone beam computed tomography (procedure)" // Cone beam CT
// These may not be qualified by energy
* SCT#113091000 "Magnetic resonance imaging (procedure)" // MRI
* SCT#16310003 "Ultrasonography (procedure)"    // Ultrasound
* SCT#371576000 "Video imaging (procedure)"     // Optical Monitoring System
