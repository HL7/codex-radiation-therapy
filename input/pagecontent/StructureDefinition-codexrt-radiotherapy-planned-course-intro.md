### Usage
This profile is used to represent a filler order for a complete course of radiotherapy that will be elaborated in orders for phases and plans of treatment.
are filler orders that represent how the radiotherapy system fulfills the prescribed radiotherapy treatment.  The relationships between the various radiotherapy profiles are shown [here](overview.html#relationships-between-profiles).

### Conformance
ServiceRequest resource instances whose code is SNOMEDCT `1217123003` (Radiotherapy course of treatment (regime/therapy)) and whose intent is http://hl7.org/fhir/request-intent#filler-order "Filler Order" MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}