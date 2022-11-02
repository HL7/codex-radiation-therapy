CodeSystem: SnomedRequestedCS
Id: snomed-requested-cs
Title: "Requested SNOMED Codes Code System"
Description: "Codes requested from SNOMED by CodexRT, to be issued at a later date. Where numeric codes are given, these correspond to the expected SNOMED-CT codes. Terms beginning with 'USCRS-' (for United States Content Request Service) represent request identifiers with no SNOMED code yet approved or assigned."
* ^caseSensitive = true
* ^experimental = false
//* These codes have  been requested and under review by SNOMED International as of 11/1/2022.
//* Subject to SNOMED International approval, these codes *may* be included in the March 2023 release to U S Edition
* #USCRS-34603	"Changes in treatment intent (finding)" "new concept under 373856008 |Reason for change in radiotherapy course (finding)" //#treatmentintentchange
* #USCRS-34604  "Changes in target (finding)" "new concept under 373856008 |Reason for change in radiotherapy course (finding)." // #targetchange
* #USCRS-34605  "Changes in organ at risk (finding)" "new concept under 373856008 |Reason for change in radiotherapy course (finding)." // organatriskchange
//* These codes have been issued by SNOMED International
//* They are expected to be part of the March 2023 release to US Edition, at which time they can be removed from this CodeSystem
* #1255213001 "Brachytherapy eye plaque (physical object)" "Brachytherapy eye plaque (physical object)"
* #1255212006 "Brachytherapy surface applicator (physical object)" "Brachytherapy surface applicator (physical object)"
* #1254780004 "Brachytherapy balloon (physical object)" "Brachytherapy balloon (physical object)"
* #1254779002 "Brachytherapy catheter (physical object)"  "Brachytherapy catheter (physical object)"
* #1254778005 "Brachytherapy ring (physical object)" "Brachytherapy ring (physical object)"
* #1254777000 "Brachytherapy ovoid (physical object)" "Brachytherapy ovoid (physical object)"
* #1254776009 "Brachytherapy tandem (physical object)" "Brachytherapy tandem (physical object)"
* #1255211004 "Brachytherapy cylinder (physical object)" "Brachytherapy cylinder (physical object)"
* #1254768007 "Radioactive seed embedded in mesh (physical object)" "Radioactive seed embedded in mesh (physical object)"
* #1254767002 "Stranded radioactive seed (physical object)" "Stranded radioactive seed (physical object)"
* #1254766006 "Loose radioactive seed (physical object)" "Loose radioactive seed (physical object)"
* #1255724003  "Radiotherapy treatment plan (regime/therapy)" "Radiotherapy treatment plan (regime/therapy)" // USCRS-34602, not yet released for US
