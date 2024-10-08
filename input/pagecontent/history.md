
In late 2020, the American Society for Radiation Oncology (ASTRO) and the American Association of Physicists in Medicine (AAPM), with the assistance of The MITRE Corporation, proposed a use case under the CodeX™ FHIR Accelerator around standardizing RT information using the FHIR standard to semantically define a patient’s radiation therapy end-of-treatment information. This group of stakeholder organizations began working on defining RT concepts, leveraging mCODE and FHIR, to model the relationship between groups of clinical concepts that comprise work products vital to radiation oncology care.

In January 2021, the CodeX™ Radiation Therapy Treatment Data (RTTD) project approached the Integrating the Healthcare Enterprise – Radiation Oncology ([IHE-RO](https://wiki.ihe.net/index.php/Radiation_Oncology)) Exchange of Radiotherapy Summaries ([XRTS](https://wiki.ihe.net/index.php/Exchange_of_Radiotherapy_Summaries)) Work Group about aligning the data model and FHIR structures with the technical architecture and transactions being defined in the XRTS technical specification document. The CodeX™ RTTD and XRTS teams aligned visions and began working together to adopt the CodeX™ RT Implementation Guide.

In support of this collaboration, radiotherapy profiles were added to [mCODE], [Radiotherapy Course Summary][mCODE Radiotherapy Course Summary] and [Radiotherapy Volume][mCODE Radiotherapy Volume], as well as other value sets and extensions required to represent a radiotherapy treatment summary.

Radiotherapy specifications beyond what was considered “minimal” (which is a tenet of mCODE) are published in this CodeX™ RT IG.

Furthermore, the radiotherapy profiles and data elements were tested in IHE-RO XRTS Workshops December 2021, May 2022, and December 2022/January 2023. The CodeX™ RTTD and IHE-RO XRTS teams will continue to test the CodeX™ RT IG at future IHE-RO XRTS Workshops and Connectathons.

The STU2 version of this IG extended the representation of elements supporting radiotherapy treatment.  These changes are highlighted in the  [representing radiotherapy treatment](representing_radiotherapy_treatment.html) page and, at a more granulary level, in the [differential data dictionary](CodexRTDataDictionary-STU2-vs-STU1.xlsx) spreadsheet.


Additional details regarding the CodeX™ RTTD project:

- ASTRO joined CodeX™ with a proposal to standardize RT treatment summaries, leveraging the work published by ASTRO and others in the “Minimum Data Elements for Radiation Oncology: An American Society for Radiation Oncology Consensus Paper” report.
- AAPM joined in support of this effort and started contributing professional society expertise and work developed by the AAPM Big Data Subcommittee (i.e., Operational Ontology for Oncology (O3)).
- IHE-RO XRTS Work Group aligned with the CodeX™ RTTD initiative and shared their RT modeling work products. Once the IHE-RO XRTS Work Group aligned with the CodeX™ RTTD project, they shifted focus from modeling and structuring data elements to developing the architecture and transactions as part of the XRTS Profile and technical specification.
- The RTTD project contributed content to mCODE STU 2 and STU 3 to support generation of an end-of-treatment care summary.
- Additional content was built out – related to the patient’s in-progress and prescription RT information in the CodeX™ RT IG.
- The CodeX™ RTTD and IHE-RO XRTS teams are continuing to work in harmony to leverage each other’s areas of expertise.



{% include markdown-link-references.md %}
