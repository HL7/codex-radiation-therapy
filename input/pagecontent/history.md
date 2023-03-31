
In late 2020, the American Society for Radiation Oncology (ASTRO) and the American Association of Physicists in Medicine (AAPM), with the assistance of The MITRE Corporation, proposed a use case under the CodeX FHIR Accelerator around standardizing RT information using the FHIR standard to semantically define a patient’s radiation therapy end-of-treatment information. This group of stakeholder organizations began working on defining RT concepts, leveraging mCODE and FHIR, to model the relationship between groups of clinical concepts that comprise work products vital to radiation oncology care.

In January 2021, the CodeX Radiation Therapy Treatment Data (RTTD) project approached the Integrating the Healthcare Enterprise – Radiation Oncology ([IHE-RO](https://www.ihe-ro.org/)) Exchange of Radiotherapy Summaries ([XRTS](https://www.ihe-ro.org/doku.php?id=doc%3Aprofiles%3Axrts)) Work Group about aligning the data model and FHIR structures with the technical architecture and transactions being defined in the XRTS technical specification document. The CodeX RTTD and XRTS teams aligned visions and began working together to adopt the CodeX RT Implementation Guide.

In support of this collaboration, radiotherapy profiles were added to [mCODE STU2](https://hl7.org/fhir/us/mcode/STU2), [Radiotherapy Course Summary](https://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-course-summary.html) and [Radiotherapy Volume](https://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-volume.html), as well as other value sets and extensions required to represent a radiotherapy treatment summary.  See

Radiotherapy specifications beyond what was considered “minimal” (which is a tenet of mCODE) are published in this CodeX RT IG.

Furthermore, the radiotherapy profiles and data elements were tested in IHE-RO XRTS Workshops December 2021 and May 2022. The CodeX RTTD and IHE-RO XRTS teams will continue to test the CodeX RT IG at future IHE-RO XRTS Workshops and Connectathons.

Additional details regarding the CodeX RTTD project:

- ASTRO joined CodeX with a proposal to standardize RT treatment summaries, leveraging the work published by ASTRO and others in the “Minimum Data Elements for Radiation Oncology: An American Society for Radiation Oncology Consensus Paper” report.
- AAPM joined in support of this effort and started contributing professional society expertise and work developed by the AAPM Big Data Subcommittee (i.e., Operational Ontology for Radiation Oncology (OORO))
- IHE-RO XRTS Work Group aligned with the CodeX RTTD initiative and shared their RT modeling work products. Once the IHE-RO XRTS Work Group aligned with the CodeX RTTD project, they shifted focus from modeling and structuring data elements to developing the architecture and transactions as part of the XRTS Profile and technical specification.
- The RTTD project contributed content to mCODE STU 2 to support generation of an end-of-treatment care summary
- Additional content was built out – related to the patient’s in-progress and prescription RT information in the CodeX RT IG
- The CodeX RTTD and IHE-RO XRTS teams are continuing to work in harmony to leverage each other’s areas of expertise



{% include markdown-link-references.md %}