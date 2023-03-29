### Usage
This profile is used to represent a prescription for a complete course of radiotherapy. An overview of radiotherapy courses, phases, and treatment plans is shown [here](overview.html#codex-rt-resource-profiles). In FHIR, the prescription for a course of radiotherapy is represented as an original order, whereas the elaborated phases and treatment plans are represented as filler orders. The relationships between the various radiotherapy profiles are shown [here](overview.html#relationships-between-profiles).

### Conformance
ServiceRequest resource instances whose code is SNOMEDCT `1217123003` (Radiotherapy course of treatment (regime/therapy)) and whose intent is http://hl7.org/fhir/request-intent#original-order "Original Order" MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}