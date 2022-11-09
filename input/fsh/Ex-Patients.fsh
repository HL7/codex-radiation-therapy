Instance:   Patient-5
InstanceOf: $mCODECancerPatient
Title: "Example Female Patient 5"
Description: "An example female  patient to relate radiotherapy resources to."
Usage: #example
* meta.security = ActReason#HTEST
* identifier[+]
  * use = #usual
  * type = v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "1032705"
* name[+]
  * use = #usual
  * family = "Andersson"
  * given = "Alice"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #female
* birthDate = "1973-07-25"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"

Instance:   Patient-6
InstanceOf: $mCODECancerPatient
Title: "Example Male Patient 6"
Description: "An example male patient to relate radiotherapy resources to."
Usage: #example
* meta.security = ActReason#HTEST
* identifier[+].
  * use = #usual
  * type = v2-0203#MR "Medical Record Number"
  * system = "http://hospital.smarthealthit.org"
  * value = "1032706"
* name[+]
  * use = #usual
  * family = "Venkman"
  * given = "Peter"
* telecom
  * system = #phone
  * value = "555-555-5555"
  * use = #home
* gender = #male
* birthDate = "1973-07-25"
* address
  * state = "WI"
  * country = "USA"
  * line = "49 Meadow St"
  * city = "Mounds"
  * state = "OK"
  * postalCode = "74047"
  * country = "US"
