### Usage
This profile is used to represent an original order for a single treatment plan of radiotherapy. The relationships between the various radiotherapy profiles are shown [here](overview.html#relationships-between-profiles).

### Conformance
ServiceRequest resource instances whose code is SNOMEDCT `1222565005` (Radiotherapy treatment phase (regime/therapy) and whose intent is http://hl7.org/fhir/request-intent#original-order "Original Order" MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}