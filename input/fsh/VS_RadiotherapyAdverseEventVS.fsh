// CodeSystem: AdverseEventSeverityOrGradeCS
// Id: codexrt-radiotherapy-adverse-event-severity-or-gradeCS
// Title: "Severity or Grade CodeSystem based on CTCAE"
// Description: "Common terminology criteria (CTC) grades associated with the severity of an adverse event, expressed as integers, 0 through 5, with 0 representing no adverse event, and 5 representing death."
// * ^caseSensitive = true
// * ^experimental = false
// * ^status = #retired
// * #0 "Absent Adverse Event" "The absence of adverse events or within normal limits or values."
// * #1 "Mild Adverse Event"  "An experience that is usually transient, and requires no special treatment or intervention. The event does not generally interfere with usual daily activities. Includes transient laboratory test alterations."
// * #2 "Moderate Adverse Event"  "An experience that is alleviated with simple therapeutic treatments. The event impacts usual daily activities. Includes laboratory test alterations indicating injury, but without long-term risk."
// * #3 "Severe Adverse Event"  "An adverse event experience that requires intensive therapeutic intervention and interrupts usual daily activities."
// * #4 "Life Threatening or Disabling Adverse Event"  "Any adverse event that places the patient, in the view of the initial reporter, at immediate risk of death from the adverse event as it occurred, i.e., it does not include an adverse experience that, had it occurred in a more severe form, might have caused death."
// * #5 "Death Related to Adverse Event"  "The termination of life associated with an adverse event."

ValueSet: AdverseEventSeverityOrGradeVS
Id: codexrt-radiotherapy-adverse-event-severity-or-gradeVS
Title: "Adverse Event Severity or Grade Value Set"
Description: "CTCAE Grades 0 through 5. The grade of the adverse event, determined by CTCAE criteria, where 0 represents confirmation that the given adverse event did NOT occur, and 5 represents death. Note that grade 0 events are generally not reportable, but may be created to give positive confirmation that the clinician assessed or considered a particular AE."
* ^experimental = false
//  * include codes from system AdverseEventSeverityOrGradeCS
* NCIT#C75533 "Absent Adverse Event" 
* NCIT#C41338 "Mild Adverse Event" 
* NCIT#C41339 "Moderate Adverse Event" 
* NCIT#C41340 "Severe Adverse Event" 
* NCIT#C41337 "Life Threatening or Disabling Adverse Event" 
* NCIT#C48275 "Death Related to Adverse Event" 

ValueSet: AdverseEventTermVS
Id: codexrt-radiotherapy-adverse-event-termVS
Title: "Adverse Event Terms Value Set"
Description: "The NCI Common Terminology Criteria for Adverse Events (CTCAE) is utilized for Adverse Event (AE) reporting. The codes are drawn from the NCI Thesaurus. Each CTCAE term is a MedDRA LLT (Lowest Level Term) with corresponding codes that can be used in place of the NCI code. The value set is CTCAE 5.0 and corresponds to MedDRA version 20.1. See https://evs.nci.nih.gov/ftp1/CTCAE/CTCAE_5.0/NCIt_CTCAE_5.0.xlsx.

**Use of 'Other, specify'**: In the event a suitable CTCAE term cannot be found, the appropriate verbatim term SHALL be captured via the 'Other, specify' mechanism. In this case, the verbatim term is populated into the event.text field, the NCIT code for the body system into the event.coding.code field, and the display string corresponding to the code into the event.coding.display field. For example, if reporting the unusual adverse event 'Vulcan-green blood' it will be reported as: event.text of 'Vulcan-green blood', event.coding.display of 'Blood and lymphatic system disorders - Other, specify', and event.coding.code of NCIT code C143323."

* ^experimental = false
* codes from system MEDDRA
* NCIT#C143283  "Anemia"
* NCIT#C143323  "Blood and lymphatic system disorders - Other, specify"
* NCIT#C143332  "Bone marrow hypocellular"
* NCIT#C55273  "Disseminated intravascular coagulation"
* NCIT#C143190  "Eosinophilia"
* NCIT#C143481  "Febrile neutropenia"
* NCIT#C55992  "Hemolysis"
* NCIT#C143536  "Hemolytic uremic syndrome"
* NCIT#C143647  "Leukocytosis"
* NCIT#C146773  "Lymph node pain"
* NCIT#C143191  "Methemoglobinemia"
* NCIT#C143874  "Thrombotic thrombocytopenic purpura"
* NCIT#C143290  "Aortic valve disease"
* NCIT#C146731  "Asystole"
* NCIT#C54767  "Atrial fibrillation"
* NCIT#C54768  "Atrial flutter"
* NCIT#C143308  "Atrioventricular block complete"
* NCIT#C143309  "Atrioventricular block first degree"
* NCIT#C54771  "Mobitz type I"
* NCIT#C54772  "Mobitz (type) II atrioventricular block"
* NCIT#C143351  "Cardiac arrest"
* NCIT#C143352  "Cardiac disorders - Other, specify"
* NCIT#C143364  "Chest pain - cardiac"
* NCIT#C143380  "Conduction disorder"
* NCIT#C143192  "Cyanosis"
* NCIT#C143529  "Heart failure"
* NCIT#C146719  "Left ventricular systolic dysfunction"
* NCIT#C143674  "Mitral valve disease"
* NCIT#C143691  "Myocardial infarction"
* NCIT#C146695  "Myocarditis"
* NCIT#C54935  "Palpitations"
* NCIT#C143738  "Paroxysmal atrial tachycardia"
* NCIT#C143743  "Pericardial effusion"
* NCIT#C143744  "Pericardial tamponade"
* NCIT#C55067  "Pericarditis"
* NCIT#C143793  "Pulmonary valve disease"
* NCIT#C55069  "Restrictive cardiomyopathy"
* NCIT#C55070  "Right ventricular dysfunction"
* NCIT#C54938  "Sick sinus syndrome"
* NCIT#C54940  "Sinus bradycardia"
* NCIT#C146759  "Sinus tachycardia"
* NCIT#C54945  "Supraventricular tachycardia"
* NCIT#C143889  "Tricuspid valve disease"
* NCIT#C146629  "Ventricular arrhythmia"
* NCIT#C146732  "Ventricular fibrillation"
* NCIT#C146733  "Ventricular tachycardia"
* NCIT#C143382  "Congenital, familial and genetic disorders - Other, specify"
* NCIT#C143429  "Ear and labyrinth disorders - Other, specify"
* NCIT#C143430  "Ear pain"
* NCIT#C146745  "External ear pain"
* NCIT#C143528  "Hearing impaired"
* NCIT#C143673  "Middle ear inflammation"
* NCIT#C146690  "Tinnitus"
* NCIT#C143935  "Vertigo"
* NCIT#C143936  "Vestibular disorder"
* NCIT#C55748  "Adrenal insufficiency"
* NCIT#C143392  "Cushingoid"
* NCIT#C55742  "Delayed puberty"
* NCIT#C143442  "Endocrine disorders - Other, specify"
* NCIT#C143520  "Growth accelerated"
* NCIT#C143557  "Hyperparathyroidism"
* NCIT#C143560  "Hyperthyroidism"
* NCIT#C143572  "Hypoparathyroidism"
* NCIT#C143193  "Hypophysitis"
* NCIT#C143194  "Hypopituitarism"
* NCIT#C143576  "Hypothyroidism"
* NCIT#C146645  "Precocious puberty"
* NCIT#C143195  "Testosterone deficiency"
* NCIT#C143937  "Virilization"
* NCIT#C55906  "Blurred vision"
* NCIT#C146674  "Cataract"
* NCIT#C143387  "Corneal ulcer"
* NCIT#C143410  "Dry eye"
* NCIT#C143466  "Extraocular muscle paresis"
* NCIT#C143468  "Eye disorders - Other, specify"
* NCIT#C146751  "Eye pain"
* NCIT#C143471  "Eyelid function disorder"
* NCIT#C143489  "Flashing lights"
* NCIT#C143491  "Floaters"
* NCIT#C55842  "Glaucoma"
* NCIT#C55847  "Keratitis"
* NCIT#C143705  "Night blindness"
* NCIT#C143714  "Optic nerve disorder"
* NCIT#C143734  "Papilledema"
* NCIT#C143747  "Periorbital edema"
* NCIT#C146770  "Photophobia"
* NCIT#C146729  "Retinal detachment"
* NCIT#C143814  "Retinal tear"
* NCIT#C143815  "Retinal vascular disorder"
* NCIT#C55891  "Retinopathy"
* NCIT#C143823  "Scleral disorder"
* NCIT#C55901  "Uveitis"
* NCIT#C143196  "Vision decreased"
* NCIT#C146677  "Vitreous hemorrhage"
* NCIT#C143944  "Watering eyes"
* NCIT#C143253  "Abdominal distension"
* NCIT#C143255  "Abdominal pain"
* NCIT#C143197  "Anal fissure"
* NCIT#C143275  "Anal fistula"
* NCIT#C143276  "Anal hemorrhage"
* NCIT#C143277  "Anal mucositis"
* NCIT#C143278  "Anal necrosis"
* NCIT#C143279  "Anal pain"
* NCIT#C143280  "Anal stenosis"
* NCIT#C143281  "Anal ulcer"
* NCIT#C143300  "Ascites"
* NCIT#C143198  "Belching"
* NCIT#C143322  "Bloating"
* NCIT#C143358  "Cecal hemorrhage"
* NCIT#C57901  "Cheilitis"
* NCIT#C146788  "Cholecystitis"
* NCIT#C143199  "Chylous ascites"
* NCIT#C57134  "Colitis"
* NCIT#C143373  "Colonic fistula"
* NCIT#C143374  "Colonic hemorrhage"
* NCIT#C143375  "Colonic obstruction"
* NCIT#C143376  "Colonic perforation"
* NCIT#C143377  "Colonic stenosis"
* NCIT#C143378  "Colonic ulcer"
* NCIT#C57141  "Constipation"
* NCIT#C143402  "Dental caries"
* NCIT#C57788  "Diarrhea"
* NCIT#C143411  "Dry mouth"
* NCIT#C143414  "Duodenal hemorrhage"
* NCIT#C143416  "Duodenal obstruction"
* NCIT#C143417  "Duodenal perforation"
* NCIT#C143418  "Duodenal stenosis"
* NCIT#C143419  "Duodenal ulcer"
* NCIT#C57789  "Duodenal fistula"
* NCIT#C143425  "Dyspepsia"
* NCIT#C57795  "Dysphagia"
* NCIT#C143445  "Enterocolitis"
* NCIT#C143446  "Enterovesical fistula"
* NCIT#C143453  "Esophageal hemorrhage"
* NCIT#C143455  "Esophageal necrosis"
* NCIT#C143456  "Esophageal obstruction"
* NCIT#C143457  "Esophageal pain"
* NCIT#C143458  "Esophageal perforation"
* NCIT#C143459  "Esophageal stenosis"
* NCIT#C143460  "Esophageal ulcer"
* NCIT#C146710  "Esophageal varices hemorrhage"
* NCIT#C57797  "Esophagitis"
* NCIT#C57798  "Esophageal fistula"
* NCIT#C143482  "Fecal incontinence"
* NCIT#C57807  "Flatulence"
* NCIT#C143499  "Gastric fistula"
* NCIT#C143500  "Gastric hemorrhage"
* NCIT#C143501  "Gastric necrosis"
* NCIT#C143502  "Gastric perforation"
* NCIT#C143503  "Gastric stenosis"
* NCIT#C143504  "Gastric ulcer"
* NCIT#C57812  "Gastritis"
* NCIT#C143506  "Gastroesophageal reflux disease"
* NCIT#C143508  "Gastrointestinal disorders - Other, specify"
* NCIT#C146637  "Gastrointestinal fistula"
* NCIT#C57814  "Ileus"
* NCIT#C143510  "Gastrointestinal pain"
* NCIT#C143512  "Gastroparesis"
* NCIT#C146626  "Gingival pain"
* NCIT#C143537  "Hemorrhoidal hemorrhage"
* NCIT#C146738  "Hemorrhoids"
* NCIT#C146633  "Ileal perforation"
* NCIT#C143578  "Ileal stenosis"
* NCIT#C57821  "Ileal fistula"
* NCIT#C56542  "Ileal hemorrhage"
* NCIT#C57823  "Ileal obstruction"
* NCIT#C57826  "Ileal ulcer"
* NCIT#C143595  "Intra-abdominal hemorrhage"
* NCIT#C143622  "Jejunal perforation"
* NCIT#C143623  "Jejunal stenosis"
* NCIT#C57827  "Jejunal fistula"
* NCIT#C56543  "Jejunal hemorrhage"
* NCIT#C57829  "Jejunal obstruction"
* NCIT#C57832  "Jejunal ulcer"
* NCIT#C146761  "Lip pain"
* NCIT#C143656  "Lower gastrointestinal hemorrhage"
* NCIT#C57838  "Malabsorption"
* NCIT#C143679  "Mucositis oral"
* NCIT#C146764  "Nausea"
* NCIT#C143710  "Obstruction gastric"
* NCIT#C143715  "Oral cavity fistula"
* NCIT#C56551  "Oral hemorrhage"
* NCIT#C143716  "Oral dysesthesia"
* NCIT#C146627  "Oral pain"
* NCIT#C57845  "Pancreatic fistula"
* NCIT#C56554  "Pancreatic hemorrhage"
* NCIT#C143730  "Pancreatic duct stenosis"
* NCIT#C143732  "Pancreatic necrosis"
* NCIT#C146789  "Pancreatitis"
* NCIT#C57849  "Periodontal disease"
* NCIT#C57850  "Peritoneal necrosis"
* NCIT#C57857  "Proctitis"
* NCIT#C143200  "Rectal fissure"
* NCIT#C143802  "Rectal mucositis"
* NCIT#C146631  "Rectal pain"
* NCIT#C146634  "Rectal perforation"
* NCIT#C143803  "Rectal stenosis"
* NCIT#C57859  "Rectal fistula"
* NCIT#C56560  "Rectal hemorrhage"
* NCIT#C57863  "Rectal necrosis"
* NCIT#C57864  "Rectal obstruction"
* NCIT#C57867  "Rectal ulcer"
* NCIT#C146632  "Retroperitoneal hemorrhage"
* NCIT#C143821  "Salivary duct inflammation"
* NCIT#C57868  "Salivary gland fistula"
* NCIT#C143842  "Small intestinal mucositis"
* NCIT#C143843  "Small intestinal obstruction"
* NCIT#C146635  "Small intestinal perforation"
* NCIT#C143844  "Small intestinal stenosis"
* NCIT#C143846  "Small intestine ulcer"
* NCIT#C146774  "Stomach pain"
* NCIT#C143876  "Tooth development disorder"
* NCIT#C143877  "Tooth discoloration"
* NCIT#C143879  "Toothache"
* NCIT#C146730  "Typhlitis"
* NCIT#C143895  "Upper gastrointestinal hemorrhage"
* NCIT#C143938  "Visceral arterial ischemia"
* NCIT#C57896  "Vomiting"
* NCIT#C143366  "Chills"
* NCIT#C143395  "Death neonatal"
* NCIT#C143396  "Death NOS"
* NCIT#C143201  "Disease progression"
* NCIT#C143432  "Edema face"
* NCIT#C143433  "Edema limbs"
* NCIT#C143434  "Edema trunk"
* NCIT#C143474  "Facial pain"
* NCIT#C146753  "Fatigue"
* NCIT#C143485  "Fever"
* NCIT#C143492  "Flu like symptoms"
* NCIT#C143496  "Gait disturbance"
* NCIT#C143513  "General disorders and administration site conditions - Other, specify"
* NCIT#C143202  "Generalized edema"
* NCIT#C55332  "Hypothermia"
* NCIT#C143584  "Infusion site extravasation"
* NCIT#C143585  "Injection site reaction"
* NCIT#C143654  "Localized edema"
* NCIT#C143665  "Malaise"
* NCIT#C143680  "Multi-organ failure"
* NCIT#C143700  "Neck edema"
* NCIT#C143707  "Non-cardiac chest pain"
* NCIT#C143725  "Pain"
* NCIT#C143863  "Sudden death NOS"
* NCIT#C143203  "Vaccination site lymphadenopathy"
* NCIT#C143314  "Bile duct stenosis"
* NCIT#C143316  "Biliary fistula"
* NCIT#C143204  "Budd-Chiari syndrome"
* NCIT#C57808  "Gallbladder fistula"
* NCIT#C146735  "Gallbladder necrosis"
* NCIT#C57810  "Gallbladder obstruction"
* NCIT#C146755  "Gallbladder pain"
* NCIT#C146708  "Gallbladder perforation"
* NCIT#C143539  "Hepatic failure"
* NCIT#C143540  "Hepatic hemorrhage"
* NCIT#C146736  "Hepatic necrosis"
* NCIT#C143542  "Hepatic pain"
* NCIT#C143544  "Hepatobiliary disorders - Other, specify"
* NCIT#C143742  "Perforation bile duct"
* NCIT#C143769  "Portal hypertension"
* NCIT#C143770  "Portal vein thrombosis"
* NCIT#C143205  "Sinusoidal obstruction syndrome"
* NCIT#C143271  "Allergic reaction"
* NCIT#C143282  "Anaphylaxis"
* NCIT#C143310  "Autoimmune disorder"
* NCIT#C143394  "Cytokine release syndrome"
* NCIT#C143580  "Immune system disorders - Other, specify"
* NCIT#C146642  "Serum sickness"
* NCIT#C143254  "Abdominal infection"
* NCIT#C143285  "Anorectal infection"
* NCIT#C143293  "Appendicitis perforated"
* NCIT#C143294  "Appendicitis"
* NCIT#C143297  "Arteritis infective"
* NCIT#C143206  "Bacteremia"
* NCIT#C143317  "Biliary tract infection"
* NCIT#C143319  "Bladder infection"
* NCIT#C143331  "Bone infection"
* NCIT#C143336  "Breast infection"
* NCIT#C143339  "Bronchial infection"
* NCIT#C143356  "Catheter related infection"
* NCIT#C143359  "Cecal infection"
* NCIT#C143362  "Cervicitis infection"
* NCIT#C143383  "Conjunctivitis infective"
* NCIT#C143384  "Conjunctivitis"
* NCIT#C143386  "Corneal infection"
* NCIT#C143390  "Cranial nerve infection"
* NCIT#C143207  "Cytomegalovirus infection reactivation"
* NCIT#C143406  "Device related infection"
* NCIT#C143415  "Duodenal infection"
* NCIT#C143438  "Encephalitis infection"
* NCIT#C143439  "Encephalomyelitis infection"
* NCIT#C143441  "Endocarditis infective"
* NCIT#C143443  "Endophthalmitis"
* NCIT#C143444  "Enterocolitis infectious"
* NCIT#C143208  "Epstein-Barr virus infection reactivation"
* NCIT#C143454  "Esophageal infection"
* NCIT#C143469  "Eye infection"
* NCIT#C143209  "Folliculitis"
* NCIT#C143210  "Fungemia"
* NCIT#C143497  "Gallbladder infection"
* NCIT#C143523  "Gum infection"
* NCIT#C143541  "Hepatic infection"
* NCIT#C143211  "Hepatitis B reactivation"
* NCIT#C143543  "Hepatitis viral"
* NCIT#C143212  "Herpes simplex reactivation"
* NCIT#C143581  "Infections and infestations - Other, specify"
* NCIT#C143582  "Infective myositis"
* NCIT#C143626  "Joint infection"
* NCIT#C143632  "Kidney infection"
* NCIT#C143641  "Laryngitis"
* NCIT#C143651  "Lip infection"
* NCIT#C143657  "Lung infection"
* NCIT#C143658  "Lymph gland infection"
* NCIT#C143667  "Mediastinal infection"
* NCIT#C143670  "Meningitis"
* NCIT#C143678  "Mucosal infection"
* NCIT#C55459  "Myelitis"
* NCIT#C143695  "Nail infection"
* NCIT#C143719  "Otitis externa"
* NCIT#C143720  "Otitis media"
* NCIT#C143721  "Ovarian infection"
* NCIT#C143728  "Pancreas infection"
* NCIT#C143735  "Papulopustular rash"
* NCIT#C143737  "Paronychia"
* NCIT#C143740  "Pelvic infection"
* NCIT#C143741  "Penile infection"
* NCIT#C143748  "Periorbital infection"
* NCIT#C143751  "Peripheral nerve infection"
* NCIT#C143753  "Peritoneal infection"
* NCIT#C143758  "Pharyngitis"
* NCIT#C143760  "Phlebitis infective"
* NCIT#C143766  "Pleural infection"
* NCIT#C143783  "Prostate infection"
* NCIT#C143800  "Rash pustular"
* NCIT#C143819  "Rhinitis infective"
* NCIT#C143822  "Salivary gland infection"
* NCIT#C143825  "Scrotal infection"
* NCIT#C143827  "Sepsis"
* NCIT#C143213  "Shingles"
* NCIT#C143832  "Sinusitis"
* NCIT#C143838  "Skin infection"
* NCIT#C143845  "Small intestine infection"
* NCIT#C143849  "Soft tissue infection"
* NCIT#C143857  "Splenic infection"
* NCIT#C143860  "Stoma site infection"
* NCIT#C143214  "Thrush"
* NCIT#C143878  "Tooth infection"
* NCIT#C143884  "Tracheitis"
* NCIT#C143896  "Upper respiratory infection"
* NCIT#C143899  "Urethral infection"
* NCIT#C143904  "Urinary tract infection"
* NCIT#C143917  "Uterine infection"
* NCIT#C143924  "Vaginal infection"
* NCIT#C143215  "Viremia"
* NCIT#C143943  "Vulval infection"
* NCIT#C143951  "Wound infection"
* NCIT#C143284  "Ankle fracture"
* NCIT#C143289  "Aortic injury"
* NCIT#C143296  "Arterial injury"
* NCIT#C143315  "Biliary anastomotic leak"
* NCIT#C143318  "Bladder anastomotic leak"
* NCIT#C143345  "Bruising"
* NCIT#C57900  "Burn"
* NCIT#C143405  "Dermatitis radiation"
* NCIT#C143451  "Esophageal anastomotic leak"
* NCIT#C143475  "Fall"
* NCIT#C143476  "Fallopian tube anastomotic leak"
* NCIT#C146714  "Fallopian tube perforation"
* NCIT#C58382  "Fracture"
* NCIT#C143498  "Gastric anastomotic leak"
* NCIT#C143507  "Gastrointestinal anastomotic leak"
* NCIT#C143511  "Gastrointestinal stoma necrosis"
* NCIT#C143546  "Hip fracture"
* NCIT#C56735  "Injury to inferior vena cava"
* NCIT#C143583  "Infusion related reaction"
* NCIT#C143586  "Injury to carotid artery"
* NCIT#C143587  "Injury to jugular vein"
* NCIT#C143588  "Injury to superior vena cava"
* NCIT#C143589  "Injury, poisoning and procedural complications - Other, specify"
* NCIT#C143592  "Intestinal stoma leak"
* NCIT#C143593  "Intestinal stoma obstruction"
* NCIT#C143594  "Intestinal stoma site bleeding"
* NCIT#C143597  "Intraoperative arterial injury"
* NCIT#C143598  "Intraoperative breast injury"
* NCIT#C143599  "Intraoperative cardiac injury"
* NCIT#C143600  "Intraoperative ear injury"
* NCIT#C143601  "Intraoperative endocrine injury"
* NCIT#C143602  "Intraoperative gastrointestinal injury"
* NCIT#C143603  "Intraoperative head and neck injury"
* NCIT#C143604  "Intraoperative hemorrhage"
* NCIT#C143605  "Intraoperative hepatobiliary injury"
* NCIT#C143606  "Intraoperative musculoskeletal injury"
* NCIT#C143607  "Intraoperative neurological injury"
* NCIT#C143608  "Intraoperative ocular injury"
* NCIT#C143609  "Intraoperative renal injury"
* NCIT#C143610  "Intraoperative reproductive tract injury"
* NCIT#C143611  "Intraoperative respiratory injury"
* NCIT#C143612  "Intraoperative splenic injury"
* NCIT#C143613  "Intraoperative urinary injury"
* NCIT#C143614  "Intraoperative venous injury"
* NCIT#C143631  "Kidney anastomotic leak"
* NCIT#C143635  "Large intestinal anastomotic leak"
* NCIT#C143729  "Pancreatic anastomotic leak"
* NCIT#C143755  "Pharyngeal anastomotic leak"
* NCIT#C143772  "Postoperative hemorrhage"
* NCIT#C143773  "Postoperative thoracic procedure complication"
* NCIT#C143781  "Prolapse of intestinal stoma"
* NCIT#C143782  "Prolapse of urostomy"
* NCIT#C143796  "Radiation recall reaction (dermatologic)"
* NCIT#C143801  "Rectal anastomotic leak"
* NCIT#C58401  "Seroma"
* NCIT#C143841  "Small intestinal anastomotic leak"
* NCIT#C143855  "Spermatic cord anastomotic leak"
* NCIT#C143856  "Spinal fracture"
* NCIT#C143858  "Stenosis of gastrointestinal stoma"
* NCIT#C146694  "Stomal ulcer"
* NCIT#C56567  "Tracheal hemorrhage"
* NCIT#C143882  "Tracheal obstruction"
* NCIT#C143885  "Tracheostomy site bleeding"
* NCIT#C143897  "Ureteric anastomotic leak"
* NCIT#C143898  "Urethral anastomotic leak"
* NCIT#C143910  "Urostomy leak"
* NCIT#C143911  "Urostomy obstruction"
* NCIT#C143912  "Urostomy site bleeding"
* NCIT#C143913  "Urostomy stenosis"
* NCIT#C143915  "Uterine anastomotic leak"
* NCIT#C143919  "Uterine perforation"
* NCIT#C143216  "Vaccination complication"
* NCIT#C143921  "Vaginal anastomotic leak"
* NCIT#C143928  "Vas deferens anastomotic leak"
* NCIT#C143929  "Vascular access complication"
* NCIT#C143933  "Venous injury"
* NCIT#C143949  "Wound complication"
* NCIT#C143950  "Wound dehiscence"
* NCIT#C143952  "Wrist fracture"
* NCIT#C143261  "Activated partial thromboplastin time prolonged"
* NCIT#C143267  "Alanine aminotransferase increased"
* NCIT#C143269  "Alkaline phosphatase increased"
* NCIT#C143301  "Aspartate aminotransferase increased"
* NCIT#C143324  "Blood antidiuretic hormone abnormal"
* NCIT#C143217  "Blood bicarbonate decreased"
* NCIT#C143325  "Blood bilirubin increased"
* NCIT#C143326  "Blood corticotrophin decreased"
* NCIT#C143327  "Blood gonadotrophin abnormal"
* NCIT#C143218  "Blood lactate dehydrogenase increased"
* NCIT#C143328  "Blood prolactin abnormal"
* NCIT#C143350  "Carbon monoxide diffusing capacity decreased"
* NCIT#C143353  "Cardiac troponin I increased"
* NCIT#C143354  "Cardiac troponin T increased"
* NCIT#C143357  "CD4 lymphocytes decreased"
* NCIT#C143368  "Cholesterol high"
* NCIT#C143389  "CPK increased"
* NCIT#C143391  "Creatinine increased"
* NCIT#C143436  "Ejection fraction decreased"
* NCIT#C143437  "Electrocardiogram QT corrected interval prolonged"
* NCIT#C143219  "Electrocardiogram T wave abnormal"
* NCIT#C143486  "Fibrinogen decreased"
* NCIT#C143494  "Forced expiratory volume decreased"
* NCIT#C143516  "GGT increased"
* NCIT#C143521  "Growth hormone abnormal"
* NCIT#C143526  "Haptoglobin decreased"
* NCIT#C143533  "Hemoglobin increased"
* NCIT#C143590  "INR increased"
* NCIT#C143615  "Investigations - Other, specify"
* NCIT#C143652  "Lipase increased"
* NCIT#C143662  "Lymphocyte count decreased"
* NCIT#C143663  "Lymphocyte count increased"
* NCIT#C143704  "Neutrophil count decreased"
* NCIT#C143731  "Pancreatic enzymes decreased"
* NCIT#C143764  "Platelet count decreased"
* NCIT#C143829  "Serum amylase increased"
* NCIT#C143220  "Thyroid stimulating hormone increased"
* NCIT#C143909  "Urine output decreased"
* NCIT#C143939  "Vital capacity abnormal"
* NCIT#C55338  "Weight gain"
* NCIT#C55339  "Weight loss"
* NCIT#C143948  "White blood cell decreased"
* NCIT#C143259  "Acidosis"
* NCIT#C143268  "Alcohol intolerance"
* NCIT#C143270  "Alkalosis"
* NCIT#C57118  "Anorexia"
* NCIT#C57787  "Dehydration"
* NCIT#C143519  "Glucose intolerance"
* NCIT#C143551  "Hypercalcemia"
* NCIT#C143552  "Hyperglycemia"
* NCIT#C143554  "Hyperkalemia"
* NCIT#C143221  "Hyperlipidemia"
* NCIT#C143555  "Hypermagnesemia"
* NCIT#C143556  "Hypernatremia"
* NCIT#C143222  "Hyperphosphatemia"
* NCIT#C143562  "Hypertriglyceridemia"
* NCIT#C143563  "Hyperuricemia"
* NCIT#C143564  "Hypoalbuminemia"
* NCIT#C143565  "Hypocalcemia"
* NCIT#C143567  "Hypoglycemia"
* NCIT#C143569  "Hypokalemia"
* NCIT#C143570  "Hypomagnesemia"
* NCIT#C143571  "Hyponatremia"
* NCIT#C143573  "Hypophosphatemia"
* NCIT#C55993  "Iron overload"
* NCIT#C143672  "Metabolism and nutrition disorders - Other, specify"
* NCIT#C55334  "Obesity"
* NCIT#C146688  "Tumor lysis syndrome"
* NCIT#C143256  "Abdominal soft tissue necrosis"
* NCIT#C143298  "Arthralgia"
* NCIT#C143299  "Arthritis"
* NCIT#C143311  "Avascular necrosis"
* NCIT#C146739  "Back pain"
* NCIT#C146741  "Bone pain"
* NCIT#C146744  "Buttock pain"
* NCIT#C143223  "Chest wall necrosis"
* NCIT#C146743  "Chest wall pain"
* NCIT#C146749  "Exostosis"
* NCIT#C143487  "Fibrosis deep connective tissue"
* NCIT#C143488  "Flank pain"
* NCIT#C143514  "Generalized muscle weakness"
* NCIT#C143522  "Growth suppression"
* NCIT#C58383  "Head soft tissue necrosis"
* NCIT#C146760  "Joint effusion"
* NCIT#C143627  "Joint range of motion decreased cervical spine"
* NCIT#C143628  "Joint range of motion decreased lumbar spine"
* NCIT#C143629  "Joint range of motion decreased"
* NCIT#C143633  "Kyphosis"
* NCIT#C143655  "Lordosis"
* NCIT#C143224  "Muscle cramp"
* NCIT#C143682  "Muscle weakness lower limb"
* NCIT#C143684  "Muscle weakness trunk"
* NCIT#C143685  "Muscle weakness upper limb"
* NCIT#C143686  "Musculoskeletal and connective tissue disorder - Other, specify"
* NCIT#C143687  "Musculoskeletal deformity"
* NCIT#C143688  "Myalgia"
* NCIT#C146787  "Myositis"
* NCIT#C146766  "Neck pain"
* NCIT#C58394  "Neck soft tissue necrosis"
* NCIT#C143717  "Osteonecrosis of jaw"
* NCIT#C143225  "Osteonecrosis"
* NCIT#C146767  "Osteoporosis"
* NCIT#C143723  "Pain in extremity"
* NCIT#C58399  "Pelvic soft tissue necrosis"
* NCIT#C143226  "Rhabdomyolysis"
* NCIT#C143227  "Rotator cuff injury"
* NCIT#C143824  "Scoliosis"
* NCIT#C143850  "Soft tissue necrosis lower limb"
* NCIT#C143851  "Soft tissue necrosis upper limb"
* NCIT#C143866  "Superficial soft tissue fibrosis"
* NCIT#C58404  "Trismus"
* NCIT#C143894  "Unequal limb length"
* NCIT#C143646  "Leukemia secondary to oncology chemotherapy"
* NCIT#C143690  "Myelodysplastic syndrome"
* NCIT#C143701  "Neoplasms benign, malignant and unspecified (incl cysts and polyps) - Other, specify"
* NCIT#C143228  "Skin papilloma"
* NCIT#C143887  "Treatment related secondary malignancy"
* NCIT#C143229  "Tumor hemorrhage"
* NCIT#C146782  "Tumor pain"
* NCIT#C143257  "Abducens nerve disorder"
* NCIT#C143258  "Accessory nerve disorder"
* NCIT#C143260  "Acoustic nerve disorder NOS"
* NCIT#C143266  "Akathisia"
* NCIT#C143274  "Amnesia"
* NCIT#C143230  "Anosmia"
* NCIT#C143291  "Aphonia"
* NCIT#C143295  "Arachnoiditis"
* NCIT#C146737  "Ataxia"
* NCIT#C146754  "Brachial plexopathy"
* NCIT#C143360  "Central nervous system necrosis"
* NCIT#C143361  "Cerebrospinal fluid leakage"
* NCIT#C146746  "Cognitive disturbance"
* NCIT#C143379  "Concentration impairment"
* NCIT#C143403  "Depressed level of consciousness"
* NCIT#C146747  "Dizziness"
* NCIT#C143420  "Dysarthria"
* NCIT#C143421  "Dysesthesia"
* NCIT#C143422  "Dysgeusia"
* NCIT#C143427  "Dysphasia"
* NCIT#C143431  "Edema cerebral"
* NCIT#C146699  "Encephalopathy"
* NCIT#C143467  "Extrapyramidal disorder"
* NCIT#C143472  "Facial muscle weakness"
* NCIT#C143473  "Facial nerve disorder"
* NCIT#C143518  "Glossopharyngeal nerve disorder"
* NCIT#C143231  "Guillain-Barre syndrome"
* NCIT#C143527  "Headache"
* NCIT#C55401  "Hydrocephalus"
* NCIT#C143558  "Hypersomnia"
* NCIT#C143566  "Hypoglossal nerve disorder"
* NCIT#C143596  "Intracranial hemorrhage"
* NCIT#C143619  "Ischemia cerebrovascular"
* NCIT#C143645  "Lethargy"
* NCIT#C143648  "Leukoencephalopathy"
* NCIT#C146763  "Memory impairment"
* NCIT#C143669  "Meningismus"
* NCIT#C143677  "Movements involuntary"
* NCIT#C143681  "Muscle weakness left-sided"
* NCIT#C143683  "Muscle weakness right-sided"
* NCIT#C143232  "Myasthenia gravis"
* NCIT#C143702  "Nervous system disorders - Other, specify"
* NCIT#C143703  "Neuralgia"
* NCIT#C146775  "Nystagmus"
* NCIT#C143711  "Oculomotor nerve disorder"
* NCIT#C143712  "Olfactory nerve disorder"
* NCIT#C143736  "Paresthesia"
* NCIT#C143750  "Peripheral motor neuropathy"
* NCIT#C143752  "Peripheral sensory neuropathy"
* NCIT#C146682  "Phantom pain"
* NCIT#C143778  "Presyncope"
* NCIT#C143795  "Pyramidal tract syndrome"
* NCIT#C143797  "Radiculitis"
* NCIT#C143804  "Recurrent laryngeal nerve palsy"
* NCIT#C143818  "Reversible posterior leukoencephalopathy syndrome"
* NCIT#C146700  "Seizure"
* NCIT#C143852  "Somnolence"
* NCIT#C143854  "Spasticity"
* NCIT#C143233  "Spinal cord compression"
* NCIT#C143862  "Stroke"
* NCIT#C146750  "Syncope"
* NCIT#C143234  "Tendon reflex decreased"
* NCIT#C143886  "Transient ischemic attacks"
* NCIT#C146780  "Tremor"
* NCIT#C143890  "Trigeminal nerve disorder"
* NCIT#C143235  "Trochlear nerve disorder"
* NCIT#C143927  "Vagus nerve disorder"
* NCIT#C143932  "Vasovagal reaction"
* NCIT#C143484  "Fetal growth retardation"
* NCIT#C143236  "Pregnancy loss"
* NCIT#C143775  "Pregnancy, puerperium and perinatal conditions - Other, specify"
* NCIT#C143776  "Premature delivery"
* NCIT#C146777  "Agitation"
* NCIT#C143287  "Anorgasmia"
* NCIT#C146778  "Anxiety"
* NCIT#C146785  "Confusion"
* NCIT#C143398  "Delayed orgasm"
* NCIT#C143400  "Delirium"
* NCIT#C143401  "Delusions"
* NCIT#C55447  "Depression"
* NCIT#C146748  "Euphoria"
* NCIT#C143525  "Hallucinations"
* NCIT#C146771  "Insomnia"
* NCIT#C143618  "Irritability"
* NCIT#C143649  "Libido decreased"
* NCIT#C143650  "Libido increased"
* NCIT#C143666  "Mania"
* NCIT#C143754  "Personality change"
* NCIT#C143787  "Psychiatric disorders - Other, specify"
* NCIT#C143788  "Psychosis"
* NCIT#C143811  "Restlessness"
* NCIT#C143864  "Suicidal ideation"
* NCIT#C143865  "Suicide attempt"
* NCIT#C143262  "Acute kidney injury"
* NCIT#C146707  "Bladder perforation"
* NCIT#C146698  "Bladder spasm"
* NCIT#C143369  "Chronic kidney disease"
* NCIT#C143393  "Cystitis noninfective"
* NCIT#C143237  "Dysuria"
* NCIT#C143238  "Glucosuria"
* NCIT#C143532  "Hematuria"
* NCIT#C146768  "Hemoglobinuria"
* NCIT#C56544  "Renal hemorrhage"
* NCIT#C143239  "Nephrotic syndrome"
* NCIT#C146758  "Proteinuria"
* NCIT#C143805  "Renal and urinary disorders - Other, specify"
* NCIT#C143806  "Renal calculi"
* NCIT#C143807  "Renal colic"
* NCIT#C143900  "Urinary fistula"
* NCIT#C143901  "Urinary frequency"
* NCIT#C146786  "Urinary incontinence"
* NCIT#C57097  "Urinary retention"
* NCIT#C143905  "Urinary tract obstruction"
* NCIT#C143906  "Urinary tract pain"
* NCIT#C143907  "Urinary urgency"
* NCIT#C143908  "Urine discoloration"
* NCIT#C143240  "Amenorrhea"
* NCIT#C143312  "Azoospermia"
* NCIT#C143335  "Breast atrophy"
* NCIT#C146742  "Breast pain"
* NCIT#C143423  "Dysmenorrhea"
* NCIT#C143424  "Dyspareunia"
* NCIT#C143435  "Ejaculation disorder"
* NCIT#C55615  "Erectile dysfunction"
* NCIT#C146752  "Fallopian tube obstruction"
* NCIT#C143483  "Feminization acquired"
* NCIT#C143515  "Genital edema"
* NCIT#C146685  "Gynecomastia"
* NCIT#C143531  "Hematosalpinx"
* NCIT#C143617  "Irregular menstruation"
* NCIT#C143634  "Lactation disorder"
* NCIT#C143671  "Menorrhagia"
* NCIT#C143706  "Nipple deformity"
* NCIT#C143713  "Oligospermia"
* NCIT#C143722  "Ovarian rupture"
* NCIT#C56553  "Ovarian hemorrhage"
* NCIT#C146769  "Ovulation pain"
* NCIT#C143739  "Pelvic floor muscle weakness"
* NCIT#C146679  "Pelvic pain"
* NCIT#C146680  "Penile pain"
* NCIT#C146681  "Perineal pain"
* NCIT#C143777  "Premature menopause"
* NCIT#C56552  "Prostatic hemorrhage"
* NCIT#C143784  "Prostatic obstruction"
* NCIT#C146664  "Prostatic pain"
* NCIT#C143808  "Reproductive system and breast disorders - Other, specify"
* NCIT#C146665  "Scrotal pain"
* NCIT#C56563  "Spermatic cord hemorrhage"
* NCIT#C146757  "Spermatic cord obstruction"
* NCIT#C56566  "Testicular hemorrhage"
* NCIT#C143872  "Testicular disorder"
* NCIT#C146666  "Testicular pain"
* NCIT#C143916  "Uterine fistula"
* NCIT#C143918  "Uterine obstruction"
* NCIT#C146683  "Uterine pain"
* NCIT#C56572  "Uterine hemorrhage"
* NCIT#C57104  "Vaginal fistula"
* NCIT#C56573  "Vaginal hemorrhage"
* NCIT#C143922  "Vaginal discharge"
* NCIT#C146687  "Vaginal dryness"
* NCIT#C143925  "Vaginal inflammation"
* NCIT#C146696  "Vaginal obstruction"
* NCIT#C146684  "Vaginal pain"
* NCIT#C146697  "Vaginal perforation"
* NCIT#C143926  "Vaginal stricture"
* NCIT#C58020  "Adult respiratory distress syndrome"
* NCIT#C143272  "Allergic rhinitis"
* NCIT#C55340  "Apnea"
* NCIT#C28245  "Aspiration"
* NCIT#C58022  "Atelectasis"
* NCIT#C143338  "Bronchial fistula"
* NCIT#C143340  "Bronchial obstruction"
* NCIT#C143341  "Bronchial stricture"
* NCIT#C143342  "Bronchopleural fistula"
* NCIT#C143343  "Bronchopulmonary hemorrhage"
* NCIT#C143344  "Bronchospasm"
* NCIT#C58027  "Chylothorax"
* NCIT#C58028  "Cough"
* NCIT#C58185  "Dyspnea"
* NCIT#C143447  "Epistaxis"
* NCIT#C143545  "Hiccups"
* NCIT#C143548  "Hoarseness"
* NCIT#C58188  "Hypoxia"
* NCIT#C143636  "Laryngeal edema"
* NCIT#C143637  "Laryngeal inflammation"
* NCIT#C143638  "Laryngeal mucositis"
* NCIT#C143639  "Laryngeal obstruction"
* NCIT#C143640  "Laryngeal stenosis"
* NCIT#C143642  "Laryngopharyngeal dysesthesia"
* NCIT#C143643  "Laryngospasm"
* NCIT#C58190  "Laryngeal fistula"
* NCIT#C56545  "Laryngeal hemorrhage"
* NCIT#C56549  "Mediastinal hemorrhage"
* NCIT#C143698  "Nasal congestion"
* NCIT#C143241  "Oropharyngeal pain"
* NCIT#C143756  "Pharyngeal mucositis"
* NCIT#C143757  "Pharyngeal stenosis"
* NCIT#C143759  "Pharyngolaryngeal pain"
* NCIT#C57851  "Pharyngeal fistula"
* NCIT#C56557  "Pharyngeal hemorrhage"
* NCIT#C57855  "Pharyngeal necrosis"
* NCIT#C56558  "Pleural hemorrhage"
* NCIT#C143765  "Pleural effusion"
* NCIT#C146663  "Pleuritic pain"
* NCIT#C143767  "Pneumonitis"
* NCIT#C58201  "Pneumothorax"
* NCIT#C143771  "Postnasal drip"
* NCIT#C143780  "Productive cough"
* NCIT#C143789  "Pulmonary edema"
* NCIT#C143790  "Pulmonary fibrosis"
* NCIT#C143791  "Pulmonary fistula"
* NCIT#C55068  "Pulmonary hypertension"
* NCIT#C143809  "Respiratory failure"
* NCIT#C143810  "Respiratory, thoracic and mediastinal disorders - Other, specify"
* NCIT#C56635  "Retinoic acid syndrome"
* NCIT#C143242  "Rhinorrhea"
* NCIT#C143831  "Sinus disorder"
* NCIT#C146783  "Sinus pain"
* NCIT#C143840  "Sleep apnea"
* NCIT#C143847  "Sneezing"
* NCIT#C143853  "Sore throat"
* NCIT#C143861  "Stridor"
* NCIT#C58205  "Tracheal fistula"
* NCIT#C143881  "Tracheal mucositis"
* NCIT#C143883  "Tracheal stenosis"
* NCIT#C143941  "Voice alteration"
* NCIT#C143947  "Wheezing"
* NCIT#C57898  "Alopecia"
* NCIT#C143330  "Body odor"
* NCIT#C143346  "Bullous dermatitis"
* NCIT#C57996  "Dry skin"
* NCIT#C143243  "Eczema"
* NCIT#C143449  "Erythema multiforme"
* NCIT#C143450  "Erythroderma"
* NCIT#C143479  "Fat atrophy"
* NCIT#C143244  "Hair color changes"
* NCIT#C143245  "Hair texture abnormal"
* NCIT#C143547  "Hirsutism"
* NCIT#C143553  "Hyperhidrosis"
* NCIT#C143246  "Hyperkeratosis"
* NCIT#C143561  "Hypertrichosis"
* NCIT#C143568  "Hypohidrosis"
* NCIT#C143653  "Lipohypertrophy"
* NCIT#C143247  "Nail changes"
* NCIT#C143694  "Nail discoloration"
* NCIT#C143696  "Nail loss"
* NCIT#C143697  "Nail ridging"
* NCIT#C143724  "Pain of skin"
* NCIT#C143726  "Palmar-plantar erythrodysesthesia syndrome"
* NCIT#C58005  "Photosensitivity"
* NCIT#C58006  "Pruritus"
* NCIT#C143794  "Purpura"
* NCIT#C143798  "Rash acneiform"
* NCIT#C143799  "Rash maculo-papular"
* NCIT#C146772  "Scalp pain"
* NCIT#C143833  "Skin and subcutaneous tissue disorders - Other, specify"
* NCIT#C146644  "Skin atrophy"
* NCIT#C143835  "Skin hyperpigmentation"
* NCIT#C143836  "Skin hypopigmentation"
* NCIT#C143837  "Skin induration"
* NCIT#C143839  "Skin ulceration"
* NCIT#C143859  "Stevens-Johnson syndrome"
* NCIT#C143248  "Subcutaneous emphysema"
* NCIT#C146740  "Telangiectasia"
* NCIT#C143880  "Toxic epidermal necrolysis"
* NCIT#C58019  "Urticaria"
* NCIT#C143848  "Social circumstances - Other, specify"
* NCIT#C143869  "Surgical and medical procedures - Other, specify"
* NCIT#C143249  "Arterial thromboembolism"
* NCIT#C143349  "Capillary leak syndrome"
* NCIT#C146643  "Flushing"
* NCIT#C56539  "Hematoma"
* NCIT#C143549  "Hot flashes"
* NCIT#C55060  "Hypertension"
* NCIT#C55061  "Hypotension"
* NCIT#C143659  "Lymph leakage"
* NCIT#C143660  "Lymphedema"
* NCIT#C55705  "Lymphocele"
* NCIT#C143749  "Peripheral ischemia"
* NCIT#C143761  "Phlebitis"
* NCIT#C143867  "Superficial thrombophlebitis"
* NCIT#C143868  "Superior vena cava syndrome"
* NCIT#C143873  "Thromboembolic event"
* NCIT#C143930  "Vascular disorders - Other, specify"
* NCIT#C54741  "Vasculitis"
