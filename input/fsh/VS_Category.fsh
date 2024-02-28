ValueSet: RadiotherapyCategoryVS
Id: codexrt-radiotherapy-category-vs
Title: "Radiotherapy Category Code Value Set"
Description: "Category value set required to support backward compatibility with an associated Max ValueSet"
* ^experimental = false
* insert SCTCopyright
* SCT#1287742003 "Radiotherapy (procedure)"
* insert $CodexRTCategoryDefinition

ValueSet: RadiotherapyCategoryMaxVS
Id: codexrt-radiotherapy-category-max-vs
Title: "Radiotherapy Category Code Max Value Set"
Description: "Category value set required to support backward compatibility by including an inactive SNOMED code"
* ^experimental = false
* insert SCTCopyright
* include codes from valueset RadiotherapyCategoryVS
* SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)" // this code is inactive