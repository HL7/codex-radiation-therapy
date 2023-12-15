ValueSet: IntrafractionVerificationCategoryVS
Id: codexrt-intrafraction-verification-category-vs
Title: "Intrafraction Verification Category Value Set"
Description: "The category of patient position verification during a treatment fraction."
* ^experimental = false
//* insert SCTCopyright

// O3 Picklist 
// - Points or fiducials
// - Projection
// - Surface
// - Volumetric Anatomic
// - Volumetric Biological

// TODO Discuss concepts, definitions, encoding and usage of existing SNOMED CT concepts. This is just a draft for discussion.
* SnomedRequestedCS#USCRS-99999801 "Points or fiducials based intrafraction verification (procedure)"
* SnomedRequestedCS#USCRS-99999802 "Projection based intrafraction verification (procedure)"
* SnomedRequestedCS#USCRS-99999803 "Surface based intrafraction verification (procedure)"
* SnomedRequestedCS#USCRS-99999804 "Volumetric anatomy based intrafraction verification (procedure)"
* SnomedRequestedCS#USCRS-99999805 "Volumetric biological measures based intrafraction verification (procedure)"
