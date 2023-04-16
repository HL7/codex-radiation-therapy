### Usage
This profile is used to represent a single radiotherapy treatment plan as elaborated in a radiotherapy treatment planning system.
An overview of radiotherapy courses, phases, and treatment plans is shown [here](overview.html#codex-rt-resource-profiles).
In FHIR, treatment plans are represented as filler orders, and the corresponding prescriptions as original orders.
The relationships between the various radiotherapy profiles are shown [here](overview.html#relationships-between-profiles).

### Conformance
ServiceRequest resource instances whose code is SNOMEDCT `1255724003` (Radiotherapy treatment plan (regime/therapy)) and whose intent is http://hl7.org/fhir/request-intent#filler-order "Filler Order" MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate meta.profile accordingly.

{% include markdown-link-references.md %}