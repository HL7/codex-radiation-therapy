RuleSet: CategorySlicing
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing requires the given value but allows additional categories"
* category 1.. MS
* category contains
  radiotherapy 1..1 
* category[radiotherapy] from RadiotherapyCategoryVS (required)
//= $CodexRTCategoryCS#1287742003 "Radiotherapy (procedure)"           // this code is preferred/active
//* category[backwardCompatibility] = SCT#108290001 "Radiation oncology AND/OR radiotherapy (procedure)" // this code is inactive retained for backward compatiblity  
//* obeys CategoryRequired
//* obeys CategoryPreferred

Invariant: CategoryRequired 
Description: "The preferred or backward compatibility category value must be present"
Severity: #error 
Expression: "category.exists() and\n
             category.coding.all(\n
                    code = '108290001' or code = '1287742003'\n
             )"

Invariant: CategoryPreferred
Description: "Warning for the use of the backward compatibility category value"
Severity: #warning  
Expression: "category.exists() and \n
             category.coding.all(\n
                    code = '108290001' \n
             )"
