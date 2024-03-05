RuleSet: CategorySlicing
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slicing requires the given value but allows additional categories"
* category 1.. MS
* category contains
  radiotherapy 1..1 
* category[radiotherapy] from RadiotherapyCategoryVS (required)
* obeys CategoryRequired
* obeys CategoryPreferred

Invariant: CategoryRequired 
Description: "The preferred (108290001) or backward compatibility (1287742003) category code must be present"
Severity: #error 
Expression: "category.exists() and\n
             category.coding.all(\n
                    code = '108290001' or code = '1287742003'\n
             )"

Invariant: CategoryPreferred
Description: "This code 108290001 is inactive and should be used only for backward compatibility."
Severity: #warning  
Expression: "category.exists() and \n
             category.coding.all(\n
                    code = '108290001' \n
             )"
