### Background
Radiation therapy treatment details – critical for care coordination – are not readily available in information systems beyond radiation oncology information technology (IT) modules. Furthermore, creation of radiation therapy (RT) treatment summary documents is often a manual process, creating clinician burden and potential patient safety issues. Historical RT summary documents tend to be comprised of unstructured data; therefore, providers are unable to leverage this information to meet reporting requirements (e.g., quality reporting, registry reporting) or support comparative effectiveness research without additional manual data entry.

This lack of cohesion, coordination, and structured data sharing between Radiation Oncology Information Systems (ROIS) and other health information systems is due to the lack of standardized data in the radiation oncology domain and Fast Healthcare Interoperability Resources (FHIR) standards to support data transmission. Radiation oncology is highly specialized. A clinically relevant and accurate treatment summary is needed by both the larger oncology care team to facilitate care coordination, and by patients to better understand the care they have received. There is a demonstrated need to establish data standardization for RT end-of-treatment summaries, in-progress summaries, and supporting details to supplement these summary reports.
The CodeX Radiation Therapy Implementation Guide (IG) describes how to represent, model, and exchange RT information that is generated during a patient’s RT planning and treatment. This FHIR IG is intended for health information system implementers interested in sending or receiving RT information. The CodeX RT IG provides nine radiotherapy profiles that use FHIR ServiceRequest and Procedure resources. These profiles support radiotherapy clinical workflow by:
* Enabling RT prescriptions at the Course, Phase, and Plan levels
* Facilitating development and management of the Planned Course, Planned Phase, and Treatment Plan
* Generating a Course Summary, Treated Phase and Treated Plan after care is delivered

Once structured data is captured during the care process, that data can be made available for data sharing and reuse.
The CodeX RT IG leverages FHIR and FHIR Application Programming Interfaces (APIs) to promote interoperable exchange of RT information between an ROIS and other health information systems such as an electronic health record (EHR). The CodeX RT IG has defined radiotherapy FHIR profiles for vendors to implement in their systems and share, via FHIR API, with other FHIR-enabled radiation oncology information systems or EHRs.

The Codex RT IG builds on the [minimal Common Oncology Data Elements (mCODE) Standard for Trial Use 2 (STU 2)](http://hl7.org/fhir/us/mcode/), leveraging mCODE's [Radiotherapy Course Summary](http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-course-summary.html) and [Radiotherapy Volume](http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-volume.html) resource profiles, and associated value sets and extensions.  The mCODE STU 2 IG also includes a [Radiotherapy Glossary](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/glossary.html) that contains all key terms, their definitions, and related examples. The remaining radiotherapy concepts are defined in this IG.

### Actors and Use Cases
The intended actors include:
* Patients
* Radiation Oncology Providers
* Other Medical Providers
The intended use cases include:
* Prescribing, Elaborating and Managing Radiation Therapy Treatment
* Documenting Delivered Radiation Therapy Treatment

### Example Scenarios
**Scenario 1**: A radiation oncologist generates a patient's RT "end-of-treatment" summary within the ROIS after treatment is complete. The patient's summary information is pushed, via a FHIR API, to a receiving FHIR repository (e.g., a cloud-based repository or another repository that can be accessed by other vendors). Next, a vendor system accesses the FHIR repository via a FHIR API call to retrieve the patient's RT "end-of-treatment" information. Once the information has been retrieved, the vendor system can store, share, reuse, and display the standardized information however necessary/most useful.

**Scenario 2**: A radiation oncologist generates a patient's weekly on-treatment visit (OTV) report within the ROIS. The patient's weekly RT in-progress information is pushed, via a FHIR API, to an EHR's FHIR-enabled internal resource repository. Next, the EHR accesses its internal FHIR repository via a FHIR API call and retrieves the patient's weekly RT in-progress information. Once the information has been retrieved, the EHR can store, share, reuse, and display the standardized information however necessary/most useful.

### CodeX RT Resource Profiles
The profiles defined in this IG cover different stages of the radiotherapy workflow at different levels of detail. A radiotherapy course of therapy systematically addresses a condition or set of related conditions. The course can include multiple sessions, can be divided into multiple phases, and can last for several months. The Radiotherapy Course Summary profile covers the treatment delivered in a treatment course and can be incrementally updated as the treatment progresses. When the treatment is completed, the latest version of the Radiotherapy Course Summary provides the entire course of treatment from beginning to end. The status element indicates whether the treatment is in progress or complete.

In radiotherapy, a *phase* is a subset of a course. A phase is defined as a treatment consisting of one or more identical fractions. See the [Radiotherapy Glossary](http://hl7.org/fhir/us/mcode/glossary.html).

The relationship between a course, phases, and treatment plans is exemplified in the following diagram.

![Breast Treatment Summary](RTResourcesHighLevel.svg)

In this example, the radiotherapy course encompasses three phases. The course summary captures each radiotherapy volume, the total dose for each volume, and total number of fractions delivered for each volume. The course summary also records the modalities and techniques used, without directly associating those with individual volumes. Other elements in the summary include the reason for treatment, the treatment intent, the period of treatment, and the total number of sessions.

At the phase level, each phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same volume or volumes. Because of their spatial relationship or the technique used, all volumes do not necessarily receive the same total dose during a phase. Phases may occur in parallel, overlap, or in alternating temporal patterns.

At the lowest level of detail, Treatment Plans define the parameters for treatment delivery. The FHIR profiles on the level of treatment plans include references to DICOM artefacts artifacts (DICOM treatment plans and DICOM treatment records) that contain treatment parameters down to the machine geometry and motion during treatment.

Multiple treatment plans may be used to implement the same phase. Plans may be adapted during a phase due to changes in tumor shape, patient anatomy, or side effects. In the extreme case of adaptive treatment, a new plan may be created each dayfor each fraction of a  to cover multiple fractions of one and the same phase.

The following figure shows the resource profiles based on resource type ServiceRequest (left column) that document which treatment was prescribed on different levels (Radiotherapy Plan Prescription, Radiotherapy Phase Prescription, Radiotherapy Course Prescription). Other profiles that are also based on ServiceRequest (middle column) describe which treatment plans were prepared to fulfill the prescriptions. Treatment plans can be summarized on different levels to cover a single plan (Radiotherapy Treatment Plan), the sum of plans for a complete phase (Radiotherapy Planned Phase), or the sum of plans for the entire course of treatment (Radiotherapy Planned Course). The profiles based on Procedure (right column) are used to document the treatment that was actually performed on different levels of detail (Radiotherapy Course Summary, Radiotherapy Treated Phase, Radiotherapy Treated Plan).

While treatment is in progress, a consumer of these resources can retrieve the current version of the in-progress Radiotherapy Course Summary to get the current state of treatment delivery. If interested in how the treatment was is structured, the observer can also retrieve the lower-level Procedures. A treatment observer can additionally retrieve the ServiceRequests referenced from these Procedures to find what was planned and prescribed. A typical overview of how far the treatment has progressed can is be created by comparing the delivered dose and number of fractions in the Treated Phases to the respective planned dose and number of fractions in the Planned Phases.

<img src="RTResourcesHighLevel.svg" alt="RT Summary Resources Model" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

### Data Elements

<img src="RTResourcesOverview.svg" alt="RT Summary Resources Overview" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

### Data Elements
The diagram below shows the relationship between the RT profiles and data elements. It also highlights which are extensions developed as part of the RT FHIR data model.is is the complete list of data elements in the RT IG FHIR Model.

<img src="RTResourcesOverview.svg" alt="RT Summary Resources Overview" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

### Treatment Summary Transactions
The workflow and transactions for exchanging RT information is documented in the For other transactions, see the IHE-RO XRTS Supplement. These transactions utilize the FHIR profiles defined in the RT IG.

<img src="ProcessFlow-EndofTreatmentSummary-Subscription.svg" alt="XRTS Transactions - End of Treatment Summary" width="800px" style="float:none; margin: 0px 0px 0px 0px;" />


**Development History**

In late 2020, the American Society for Radiation Oncology (ASTRO) and the American Association of Physicists in Medicine (AAPM), with the assistance of the MITRE Corporation, proposed a use case under the CodeX FHIR Accelerator around standardizing RT information using the FHIR standard to semantically define patients’ radiation therapy end-of-treatment information. This group of stakeholder organizations began working on defining radiation therapy concepts, leveraging mCODE and FHIR, to model the relationship between groups of clinical concepts that comprise work products vital to patients’ radiation radiation oncology careeports.

In January 2021, the CodeX RTTD project approached the Integrating the Healthcare Enterprise – Radiation Oncology (IHE-RO) Exchange of Radiotherapy Summaries (XRTS) Work Group about aligning the data model and FHIR structures with the technical architecture and transactions being defined in the XRTS technical specification document. The CodeX RTTD and XRTS teams aligned visions and began working together to adopt the CodeX RT implementation guide.

In support of this collaboration, mCODE was updated into its second version (STU 2) to include new radiotherapy profiles, [Radiotherapy Course Summary](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/StructureDefinition-mcode-radiotherapy-course-summary.html) and [Radiotherapy Volume](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/StructureDefinition-mcode-radiotherapy-volume.html), as well as other value sets and extensions required to represent a radiotherapy treatment summary.

- mCODE STU 2: <https://hl7.org/fhir/us/mcode/>

Radiotherapy specifications beyond what was considered “minimal” (which is a tenet of mCODE) are published in this CodeX RT IG.

- CodeX RT IG: <https://build.fhir.org/ig/HL7/codex-radiation-therapy/>

FinallyFurthermore, the radiotherapy profiles and data elements were tested in at IHE-RO XRTS Workshops the in December 2021 and May 2022 IHE-RO XRTS Workshops. The CodeX RTTD and IHE-RO XRTS teams are preparing towill continue to test the entire CodeX RT IG at the December 2022 future IHE-RO XRTS Workshops, as well and Connectathons.

Additional details regarding the CodeX RTTD project:

- ASTRO joined CodeX with a proposal to standardize RT treatment summaries, leveraging the work published by ASTRO and others in the “Minimum Data Elements for Radiation Oncology: An American Society for Radiation Oncology Consensus Paper” report.
- AAPM joined in support of this effort and started contributing professional society expertise and work developed by the AAPM Big Data Subcommittee (i.e., Operational Ontology for Radiation Oncology (OORO))
- IHE-RO XRTS Work Group aligned with the CodeX RTTD initiative and shared their RT modeling work products. Further on, Once t the IHE-RO XRTS Work Group aligned with the CodeX RTTD project, they shifted focus from modeling and structuring data elements to focused more ondeveloping the architecture and transactions as part of the XRTS Profile and technical specification.
- The RTTD project contributed content to mCODE STU 2 to support generation of an end-of-treatment care summary
- Additional content was built out – related to the patient’s in-progress and prescription RT information in the CodeX RT IG
- The CodeX RTTD and IHE-RO XRTS teams are continuing to work in harmony to leverage each other’s areas of expertise

**Understanding this Guide**

The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). When viewing a profile page, note that there are multiple views. The “Differential Table” view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource but could be an mCODE or US Core profile or another profile in this guide. The “Snapshot Table” represents the entire profile, with all elements.

If differences between the page renderings in this IG and the associated FHIR artifacts are identified, the FHIR artifacts should be taken as the source of truth. If an artifact’s snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

**Sources**

Specifications in the CodeX RT IG were informed by research and work products developed by the AAPM Big Data Subcommittee (BDSC). AAPM BDSC has been using a consensus-driven approach to define a common ontology that will improve communication of RT information. The standardized nomenclatures created by the BDSC team are represented in OORO. BDSC participants include AAPM, ASTRO, Canadian Organization of Medical Physicists (COMP), European Society for Radiotherapy and Oncology (ESTRO), NRG Oncology, Canadian Association of Radiation Oncology (CARO), and Canadian Partnership for Quality Radiotherapy (CPQR).

In addition to information obtained from subject matter experts, several existing standards, nomenclatures, and guidelines were consulted during the development of this specification. These include:

- IHE-RO XRTS Work Group
- AAPM BDSC and Operational OntologyOORO - implementing Operational Ontology for Radiation Oncology (Task Group 263 (TG-263))
- ASTRO and ASTRO’s "Minimum Data Elements for Radiation Oncology: An American Society for Radiation Oncology Consensus Paper" (<https://www.practicalradonc.org/article/S1879-8500(19)30232-2/fulltext>)
- Commission on Cancer (CoC) and CoC's “A Multidisciplinary Consensus Recommendation on a Synoptic Radiation Treatment Summary: A Commission on Cancer Workgroup Report” (<https://pubmed.ncbi.nlm.nih.gov/31988040/>)
- IHE Systematized Nomenclature of Medicine – Clinical Terms (SNOMED CT) Set (<https://wiki.ihe.net/index.php/SNOMED_CT_IHE_Set>)
- Global Patient Set (GPS). The project team intends to include values from the IHE SNOMED CT Set into the SNOMED GPS.

In addition, material was drawn from the [US Core Implementation Guide](http://hl7.org/fhir/us/core/) and the [mCODE Implementation Guide](http://hl7.org/fhir/us/mcode/).

### Building the IG

"Building" the IG means generating a web-based, human-readable representation of the structured information and accompanying documentation defined within this repository. This is done via the [FHIR Implementation Guide Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) ("IG Publisher"), a Java program provided by the FHIR team for building IGs into a standardized presentation. You can see [the output of building the current contents of this repository here](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/).

If you would like to generate this locally, open command prompt window and navigate to the directory where this repository has been cloned. Then run this command:

- Linux/macOS: `./_genonce.sh`
- Windows: `_genonce`

This script will do two things automatically for you:

1. Run [SUSHI](http://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html). mCODE is developed in [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/), a domain-specific language (DSL) for defining the content of FHIR IGs. SUSHI complies FHS files into the JSON files expected by the IG Publisher.

2. Run the IG Publisher.

You will need an active internet connection to build the IG. It make take up to 30 minutes to build for the first time; subsequent builds should be faster (5-7 minutes) on a modern laptop.

When the build finishes, you can open `output/index.html` in your browser to see the locally built IG.

### Dependencies for building the IG

1. You will need to [install SUSHI](https://fshschool.org/docs/sushi/installation/) before building the IG.
2. You will also need to run `./_updatePublisher.sh` (Linux/macOS) or `_updatePublisher.bat` (Windows) to download the IG Publisher.

### Running SUSHI independently of the IG Publisher

If you want to run SUSHI without building the entire IG, you can run `sushi .` in a command prompt window after navigating to the directory where this repository has been cloned.

You can also run the IG Publisher without running SUSHI with `./_genonce.sh -no-sushi` or `_genonce -no-sushi`.

### Getting a clean build

While not normally necessary, you can delete the following folders to get a clean build:

- `fsh-generated/` (SUSHI output)
- `output/` (IG Publisher output)
- `input-cache/` (IG Publisher local cache; note that deleting this will dramatically increase the length of the next build)

### Key folders & files in the IG

- The FHIR Shorthand (`.fsh`) files defining the resources in this IG are found in `input/fsh/`.
    - There is a [FSH syntax highlighting extension](https://marketplace.visualstudio.com/items?itemName=kmahalingam.vscode-language-fsh) for [VSCode](https://code.visualstudio.com). The mCODE team generally uses this set of tools for working on FSH files.
    - The FSH files are prefixed based on what is contained inside.

        | Prefix | Description          |
        | ------ | -------------------- |
        | `AL`   | Aliases              |
        | `DEF`  | Other Definitions    |
        | `EX`   | Examples             |
        | `SD`   | StructureDefinitions |
        | `VS`   | ValueSets            |

- The main pages in the built IG are generated from [Markdown](https://daringfireball.net/projects/markdown/) found in `input/pagecontent/`. These pages must also be included in `sushi-config.yaml` to be compiled to HTML by the IG Publisher.
- There are a number of other important configuration options in `sushi-config.yaml` including the menu contents of the built IG and the groupings on the [Artifacts Summary page](https://build.fhir.org/ig/HL7/codexrt/artifacts.html).


### Credits

The authors gratefully acknowledge the leadership of Chuck Mayo, PhD, University of Michigan/AAPM,** Randi Kudner, MFA, ASTRO, John Kildea, PhD, McGill University/COMP, Mary Feng, MD, University of California San Francisco/ASTRO, James Hayman, MD, University of Michigan/ASTRO, Rishabh Kapoor, PhD, Virginia Commonwealth University/AAPM, Anthony DiDonato, MS, MITRE, Michelle Casagni, MS, MITRE, Sharon Sebastian, RN-BC, MS, MITRE, Saul Kravitz, PhD, MITRE, Su Chen, MD, MITRE, Steve Bratt, PhD, MITRE, Martin von Siebenthal, PhD, Varian, John Christodouleas, MD, University of Pennsylvania/Elekta.

The authors recognize HL7 sponsorship and input from [Cross-Group Projects](http://www.hl7.org/Special/committees/cgp/index.cfm).

Steve Bratt leads the [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home), a member-driven community with a core goal of leveraging FHIR-based standards to achieve interoperability within the healthcare community to improve health for all.member-driven community accelerating implementation around mCODE standard. Capability statements were rendered with tools developed by Eric Haas and modified by Corey Spears. Max Masnick wrote the [Data Dictionary generator](https://github.com/HL7/fhir-mCODE-ig/tree/master/data-dictionary).

Many organizations have been involved in the modeling and defining of the radiotherapy FHIR profiles that are defined in the CodeX RT IG: 

- AAPM
- ASTRO
- MITRE,
- Varian, a Siemens Healthineers Company

COMP

- Telligen
- Society for Imaging Informatics in Medicine (SIIM)
- Wemedoo

The RTTD team also receives significant input and participation from: the

- University of Michigan
- Veterans Health Administration
- McGill University
- University of Pennsylvania
- Virginia Commonwealth University,
- IHE-RO
- RaySearch
- Elekta
- University of California San Francisco

### Contact Information

If you have questions or comments about this guide, you can join the conversation on <we need a zulip chat channel>, create an issue in the HL7 Jira (link), or reach out to any of the following individuals:

| Topic | Who | Role | Email |
|----|---|---|------|
| Implementation and Use Cases | Steve Bratt | CodeX Accelerator Program Manager | sbratt@mitre.org |
| Topic | Martin Von Siebenthal (Varian Medical Systems) | Role | Martin.VonSiebenthal@varian.com |
| Topic | Saul A. Kravitz (MITRE) | Role | saul@mitre.org |
{: .grid }

Codex Radiation Therapy is an open source project and welcomes all contributors. The source code for this IG is maintained in the [HL7 Github](https://github.com/HL7/codex-radiation-therapy). All of the profiling work is done using [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org).


{% include markdown-link-references.md %}
