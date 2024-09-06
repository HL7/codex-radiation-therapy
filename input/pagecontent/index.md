### Background
Radiation therapy treatment details – critical for care coordination – are not readily available in information systems beyond radiation oncology information technology (IT) modules. Furthermore, creation of radiation therapy (RT) treatment summary documents is often a manual process, creating clinician burden and potential patient safety issues. Historical RT summary documents tend to be comprised of unstructured data; therefore, providers have been unable to leverage this information to meet reporting requirements (e.g., quality reporting, registry reporting) or support comparative effectiveness research without additional manual data entry.

This lack of cohesion, coordination, and structured data sharing between Radiation Oncology Information Systems (ROIS) and other health information systems is due to the lack of standardized data in the radiation oncology domain and absence of Fast Healthcare Interoperability Resources (FHIR) standards to support data transmission. Radiation oncology is highly specialized. A clinically relevant and accurate treatment summary is needed by both the larger oncology care team to facilitate care coordination, and by patients to better understand the care they have received. There is a demonstrated need to establish data standardization for RT end-of-treatment summaries, in-progress summaries, and supporting clinical details to supplement these summary reports.

The CodeX™ Radiation Therapy (CodeX™ RT) Implementation Guide (IG) describes how to represent, model, and exchange RT information that is generated during a patient’s RT planning and treatment. CodeX™ is a trademark owned by The MITRE Corporation and is used with permission herein.  This FHIR IG is intended for health information system implementers interested in sending or receiving RT information. The CodeX™ RT IG provides nine profiles based on FHIR ServiceRequest and Procedure resources, and one based on the FHIR BodyStructure resource. These profiles support radiotherapy clinical workflow by:

* Enabling RT prescriptions at the course, phase, and plan levels
* Facilitating development and management of the Planned Course, Planned Phase, and Treatment Plan
* Generating a Course Summary, Treated Phase and Treated Plan after care is delivered

Once structured data is captured during the care process, that data can be made available for data sharing and reuse.
The CodeX™ RT IG leverages FHIR and FHIR Application Programming Interfaces (APIs) to promote interoperable exchange of RT information between an ROIS and other health information systems such as an electronic health record (EHR). The CodeX™ RT IG has defined radiotherapy FHIR profiles for vendors to implement in their systems and share, via FHIR API, with other FHIR-enabled radiation oncology information systems or EHRs.

The CodeX™ RT IG builds on the [minimal Common Oncology Data Elements (mCODE) Standard][mCODE]. A full description of how this IG leverages mCODE profiles and value sets is provided in the [Building on mCODE](building_on_mcode.html) section.  The mCODE IG also includes a [Radiotherapy Glossary][mCODE Glossary] that contains all key terms, their definitions, and related examples. The remaining radiotherapy concepts are defined in this IG.

The page [representing radiotherapy treatment](representing_radiotherapy_treatment.html) highlights the new elements in the STU2 IG relative to the STU1 IG.

The [differential data dictionary](CodexRTDataDictionary-STU2-vs-STU1.xlsx) spreadsheet also highlights these changes at a more granular level.

### Actors and Use Cases
The intended actors include:
* Patients
* Radiation oncology providers
* Other medical providers

The intended use cases include:
* Prescribing, elaborating, and managing RT treatment
* Documenting delivered RT treatment

One usage of CodeX™ RT is the implementation of the integration profiles defined by the ([IHE-RO](https://wiki.ihe.net/index.php/Radiation_Oncology)) Exchange of Radiotherapy Summaries ([XRTS](https://wiki.ihe.net/index.php/Exchange_of_Radiotherapy_Summaries)) Supplement. The XRTS specification defines use cases, actors, roles, and transactions for a narrower scope of those specific integration use cases.

### Example Scenarios
#### Scenario 1:
A radiation oncologist generates a patient's RT "end-of-treatment" summary within the ROIS after treatment is complete. The patient's summary information is pushed, via a FHIR API, to a receiving FHIR repository (e.g., a cloud-based repository or another repository that can be accessed by other vendors). Next, a vendor system accesses the FHIR repository via a FHIR API call to retrieve the patient's RT "end-of-treatment" information. Once the information has been retrieved, the vendor system can store, share, reuse, and display the standardized information however necessary/most useful.

#### Scenario 2:
A radiation oncologist generates a patient's weekly on-treatment visit (OTV) report within the ROIS. The patient's weekly RT in-progress information is pushed, via a FHIR API, to an EHR's FHIR-enabled internal resource repository. Next, the EHR accesses its internal FHIR repository via a FHIR API call and retrieves the patient's weekly RT in-progress information. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information however necessary/most useful.

### Treatment Summary Transactions
The workflow and transactions for exchanging RT information are documented in the Integrating Healthcare Enterprise - Radiation Oncology ([IHE-RO](https://wiki.ihe.net/index.php/Radiation_Oncology)) Exchange of Radiotherapy Summaries ([XRTS](https://wiki.ihe.net/index.php/Exchange_of_Radiotherapy_Summaries)) Supplement. These XRTS transactions utilize the FHIR profiles defined in the CodeX™ RT IG.

### Sources

Specifications in the CodeX™ RT IG were informed by research and work products developed by the AAPM Big Data Subcommittee (BDSC). AAPM BDSC has been using a consensus-driven approach to define a common ontology that will improve communication of RT information. The standardized nomenclatures created by the BDSC team are represented in the Operational Ontology for Oncology (O3). BDSC participants include AAPM, ASTRO, Canadian Organization of Medical Physicists (COMP), European Society for Radiotherapy and Oncology (ESTRO), NRG Oncology, Canadian Association of Radiation Oncology (CARO), IHE-RO, and Canadian Partnership for Quality Radiotherapy (CPQR).

In addition to information obtained from subject matter experts, several existing standards, nomenclatures, and guidelines were consulted during the development of this specification. These include:

- IHE-RO ([XRTS](https://wiki.ihe.net/index.php/Exchange_of_Radiotherapy_Summaries)) Work Group
- AAPM BDSC’s "Operational Ontology for Oncology (O3): A Professional Society-Based, Multistakeholder, Consensus-Driven Informatics Standard Supporting Clinical and Research Use of Real-World Data From Patients Treated for Cancer" (<https://www.redjournal.org/article/S0360-3016(23)00525-4/fulltext>).
- ASTRO’s "Minimum Data Elements for Radiation Oncology: An American Society for Radiation Oncology Consensus Paper" (<https://www.practicalradonc.org/article/S1879-8500(19)30232-2/fulltext>).
- Commission on Cancer (CoC) and CoC's “A Multidisciplinary Consensus Recommendation on a Synoptic Radiation Treatment Summary: A Commission on Cancer Workgroup Report” (<https://pubmed.ncbi.nlm.nih.gov/31988040/>)
- IHE Systematized Nomenclature of Medicine – Clinical Terms (SNOMED CT) Set (<https://wiki.ihe.net/index.php/SNOMED_CT_IHE_Set>)
- Global Patient Set (GPS). The project team intends to include values from the IHE SNOMED CT Set into the SNOMED GPS.

In addition, material was drawn from the [USCore][US Core Implementation Guide] and the [mCODE][mCODE Implementation Guide].


{% include markdown-link-references.md %}
