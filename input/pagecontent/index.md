### Background
The CodeX Radiation Therapy (RT) Implementation Guide (IG) describes how to represent, model, and exchange radiation therapy information that is generated during a patient's radiation therapy, including prescription, planning and treatment. This FHIR IG is intended for any individual or system involved in a patient's journey that would directly benefit from receiving radiation therapy information. The CodeX RT IG provides 9 radiotherapy profiles, based on FHIR ServiceRequest and Procedure resources, to represent the radiotherapy process starting from a Course Prescription prior to the start of therapy through a Course Summary at the end of therapy, and including profiles supporting the refinement of the Course Prescription into Phase and Plan prescriptions, treatment planning at the course, phase and plan level, and recording actual treatment.  The goal is to capture all relevant information throughout the treatment process and make this information available for data sharing and reuse.

The CodeX RT IG leverages FHIR and FHIR APIs to promote interoperable exchange of RT information between a radiation oncology information system (ROIS) and other information systems including Radiation Oncolocy Information System (ROIS), an Electronic Health Record (EHR) system supporting a site, or a patient or provider-facing mobile application.  The CodeX RT IG builds on the core radiotherapy content defined in [mCODE™](http://hl7.org/fhir/us/mcode/).

The CodeX RT IG defines the data elements used in transactions defined by Integrating the Healthcare Enterprise – Radiation Oncology (IHE-RO) Exchange of Radiotherapy Summaries (XRTS) Work Group, and the profiles defined here have been extensively tested by vendors as part of IHE-RO XRTS Workshops, and feedback from those workshops has been critical to the development of this IG.  For details on the transactions used to exchange the data elements defined here, please see the IHE-RO XRTS documentation (need reference).  SNOMED CT codes from the [IHE SNOMED CT Set](https://wiki.ihe.net/index.php/SNOMED_CT_IHE_Set) are used where relevant to IHE-RO transactions, and other codes will be included in the [Global Patient Set (GPS)](https://www.snomed.org/snomed-international/learn-more/global-patient-set) to ensure no cost access to terminology content.

### Overview

### Understanding this Guide

The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

In the event there are differences between the page renderings in this IG and the associated FHIR artifacts, the FHIR artifacts should be taken as the source of truth. In the event that an artifact's snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

### Credits

There are numerous organizations involved in the creation of the CodeX RT IG (i.e., American [Association of Physicists in Medicine (AAPM)](https://www.aapm.org/), [American Society for Radiation Oncology](https://www.astro.org/), [MITRE](http://www.mitre.org), [Varian a Siemens Healthineers Company](https://www.varian.com/), [Canadian Organization of Medical Physicists (COMP)](https://comp-ocpm.ca/), [Society for Imaging Informatics in Medicine (SIIM)](https://siim.org/), and [Wemedoo](https://wemedoo.com/)). The RTTD team also receives significant input and participation from the University of Michigan, Veterans Health Administration, McGill University, University of Pennsylvania, Virginia Commonwealth University, Integrating the Healthcare Enterprise-Radiation Oncology (IHE-RO), RaySearch, Elekta, and the University of California San Francisco. All of these organizations have been involved in the modeling and defining of the radiotherapy FHIR profiles that are defined in the CodeX RT IG.

Specifications in the CodeX RT IG were informed by research and work products developed by the AAPM Big Data Subcommittee (BDSC). AAPM BDSC has been using a consensus-driven approach to define a common ontology that will improve communication of RT information. The standardized nomenclatures created by the BDSC team are represented in the Operational Ontology for Radiation Oncology (OORO). BDSC participants include AAPM, ASTRO, COMP, European Society for Radiotherapy and Oncology (ESTRO), NRG Oncology, Canadian Association of Radiation Oncology (CARO), and Canadian Partnership for Quality Radiotherapy (CPQR).

The CodeX RTTD, AAPM BDSC, and OORO teams are currently aligning and reinforcing efforts across initiatives. For example, when additional information is needed for a specific radiation therapy concept, stakeholders from the CodeX RTTD, AAPM BDSC, and OORO teams collaborate on a common understanding that is informed by diverse, multi-disciplinary perspectives.

The authors gratefully acknowledge the leadership of CodeX RTTD.  Martin Von Siebenthal,  Dr. Charles Mayo, Dr James Hayman, Dr Mary Feng, Dr John Christodouleas, Randi Kudner,....

The authors recognize HL7 sponsorship and input from [Clinical Interoperability Council](http://www.hl7.org/Special/committees/cic/index.cfm), with special thanks ..... Lloyd McKenzie and Grahame Grieve contributed to mCODE in countless ways with their outstanding energy and dedication.

Steve Bratt leads the [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home), a member-driven community accelerating implementation around mCODE standard.

### Contact Information

If you have questions or comments about this guide, you can join the conversation on <we need a zulip chat channel>, create an issue in the HL7 Jira (link), or reach out to any of the following individuals:

| Topic | Who | Email |
|----|---|---|------|
| Implementation and Use Cases | Steve Bratt | sbratt@mitre.org |
| Topic | Martin Von Siebenthal (Varian Medical Systems) | Martin.VonSiebenthal@varian.com |
| Topic | Saul A. Kravitz (MITRE) | saul@mitre.org |
{: .grid }

Codex Radiation Therapy is an open source project and welcomes all contributors. The source code for this IG is maintained in the [HL7 Github](https://github.com/HL7/codex-radiation-therapy). All of the profiling work is done using [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org).


{% include markdown-link-references.md %}
