### Usage
This profile is used to represent an original order for a complete course of radiotherapy that will be elaborated in orders for phases and plans of treatment. The relationships between the various radiotherapy profiles are shown [here](overview.html#relationships-between-profiles).

### Conformance
ServiceRequest resource instances whose code is SNOMEDCT `1217123003` (Radiotherapy course of treatment (regime/therapy)) and whose intent is http://hl7.org/fhir/request-intent#original-order "Original Order" MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}