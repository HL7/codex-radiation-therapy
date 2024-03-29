### Usage
This profile is used to represent a prescription for a single treatment plan of radiotherapy. An overview of radiotherapy courses, phases, and treatment plans is shown [here](overview.html#codex-rt-resource-profiles). In FHIR, the prescription for a treatment plan is represented as an original order, whereas the elaborated treatment plan is represented as filler order. The relationships between the various radiotherapy profiles are shown [here](overview.html#relationships-between-profiles).

### Conformance
ServiceRequest resource instances whose code is SNOMEDCT `1255724003` (Radiotherapy treatment plan (regime/therapy)) and whose intent is http://hl7.org/fhir/request-intent#original-order "Original Order" MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}