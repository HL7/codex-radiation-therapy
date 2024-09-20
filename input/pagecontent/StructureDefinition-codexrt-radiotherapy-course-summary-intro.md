### Usage

This profile is used to capture a course of radiotherapy delivered to a patient. An overview of radiotherapy courses, phases, and treatment plans is shown [here](overview.html#codex-rt-resource-profiles). A course of therapy systematically addresses a condition or set of related conditions. The course can include multiple sessions, can be divided into multiple phases, and can last for several months. A course of treatment has a distinct beginning and end. While the Radiotherapy Course Summary can be incrementally updated as the treatment progresses, the primary purpose is to summarize the entire course of treatment from beginning to end. The status element indicates whether the treatment is in progress or complete. The relationships between the various radiotherapy profiles are shown [here](overview.html#relationships-between-profiles).

Course and Phase definitions follow the recommendations of the American Association of Physicists in Medicine (AAPM) Operational Ontology for Oncology ([O3](https://pubmed.ncbi.nlm.nih.gov/37244628/)).

### Conformance

Procedure resources whose code is SNOMEDCT `1217123003` (Radiotherapy course of treatment (regime/therapy)) MUST conform to this profile. Any resource intended to conform to this profile SHOULD populate `meta.profile` accordingly.

{% include markdown-link-references.md %}
