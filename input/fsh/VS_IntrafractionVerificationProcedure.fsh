ValueSet: IntrafractionVerificationProcedureVS
Id: codexrt-intrafraction-verification-procedure-vs
Title: "Intrafraction Verification Procedure Value Set"
Description: "The procedure used for verification of the patient position during a treatment fraction."
* ^experimental = false
* insert SCTCopyright
* SCT#16310003 "Ultrasonography (procedure)"
* SCT#77477000 "Computed tomography (procedure)"
* SCT#113091000 "Magnetic resonance imaging (procedure)"
* SCT#168537006 "Plain X-ray (procedure)" // plus qualifiers
// Qualifier -- Singular   * SCT#USCRS-99999813 "Radiography from single direction (procedure)"
// Qualifier -- Multiple   * SCT#USCRS-99999814 "Radiography combining multiple directions (procedure)"
* SCT#1335864002 "Imaging guided radiotherapy using fiducial marker target localization (procedure)"  // * #USCRS-35604 "Imaging guidance using fiducial markers (procedure)"
* SCT#1332089004 "External beam radiation therapy using electromagnetic transponder real time tumor tracking (procedure)" // * #USCRS-35606 "Radiotherapy using electromagnetic transponder guidance (procedure)"
* SCT#1297350006 "Surface guided radiation therapy (procedure)"

ValueSet: IntrafractionVerificationQualifierVS
Id: codexrt-intrafraction-verification-qualifier-vs
Title: "Intrafraction Verification Procedure Qualifier Value Set"
Description: "Qualifiers for  procedures used for verification of the patient position during a treatment fraction."
* ^experimental = false
* insert SCTCopyright
* SCT#50607009 "Singular (qualifier value)" //from single direction
* SCT#255204007 "Multiple (qualifier value)" // from muliple directions
