### Background
The CodeX Radiation Therapy (RT) Implementation Guide (IG) describes how to represent, model, and exchange radiation therapy information that is generated during a patient's radiation therapy planning and treatment. This FHIR IG is intended for any individual involved in a patient's journey that would directly benefit from receiving radiation therapy information. The CodeX RT IG includes several radiotherapy profiles, based on existing FHIR resources, to represent the necessary radiation therapy concepts associated with patients' RT treatment. The goal is to capture all relevant information throughout the treatment process and make this information available for data sharing and reuse.

The CodeX RT IG leverages FHIR and FHIR APIs to promote interoperable exchange of RT information between a radiation oncology information system (ROIS) and another information system - either an ROIS or an electronic health record (EHR) used at a health site. The CodeX RT IG has defined radiotherapy FHIR profiles for vendors to implement in their systems and share, via FHIR API, with other FHIR-enabled radiation oncology information systems or EHRs. Details about the radiotherapy FHIR profiles are available in the mCODE STU 2 and CodeX RT IGs.

The CodeX RT IG requirements are, in part, taken from:
* Integrating the Healthcare Enterprise – Radiation Oncology (IHE-RO) Exchange of Radiotherapy Summaries (XRTS) Work Group
* IHE SNOMED CT Set (https://wiki.ihe.net/index.php/SNOMED_CT_IHE_Set)
* Global Patient Set (the superset). The project's intention is to include values from the IHE SNOMED CT Set into the SNOMED GPS

The CodeX RT IG is also receiving content input from:
* mCODE IG (STU 2)
* Operational Ontology for Radiation Oncology (OORO): https://aapmbdsc.azurewebsites.net/Home/About

### Overview

Readers should also take note of the [Data Dictionary](dictionary.html), a flattened list of data elements in Microsoft Excel format.

The Data Dictionary comes with several caveats:

* Only [must-support (MS)](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) data elements are included. These are elements that implementers could be expected to provide meaningful support for (see [Profile Conformance](conformance-profiles.html) for details).
* Profiles defined externally to this IG, including those in mCODE, are not included.
* Sub-elements of complex types such as CodeableConcept and Period are not explicitly included.


### Development History
This IG is an outgrowth of IHRO and mCODE....or something like that.   Need to flesh it out.


### Sources

In addition to information obtained from subject matter experts, several existing standards, nomenclatures, and guidelines were consulted during the development of this specification. These include:


In addition, material was drawn from the [US Core Implementation Guide](http://hl7.org/fhir/us/core/) and the [mCODE Implementation Guide](http://hl7.org/fhir/us/mcode/).

### Understanding this Guide


The page layouts and symbols are explained [in the FHIR documentation](https://www.hl7.org/fhir/formats.html). In viewing a profile page, note that there are multiple views. The "Differential Table" view represents the difference between the current profile and its base resource or profile. When interpreting this view, bear in mind that the immediate parent may not be a base FHIR resource, but could be a US Core profile or another profile in this guide. The "Snapshot Table" represents the entire profile, with all elements.

In the event there are differences between the page renderings in this IG and the associated FHIR artifacts, the FHIR artifacts should be taken as the source of truth. In the event that an artifact's snapshot is inconsistent with its differential, the differential should be taken as the source of truth.

### Credits

The authors gratefully acknowledge the leadership of ...

The authors recognize HL7 sponsorship and input from [Clinical Interoperability Council](http://www.hl7.org/Special/committees/cic/index.cfm), with special thanks .....

Steve Bratt leads the [CodeX FHIR Accelerator](https://confluence.hl7.org/display/COD/CodeX+Home), a member-driven community accelerating implementation around mCODE standard. Capability statements were rendered with tools developed by Eric Haas and modified by Corey Spears. Max Masnick wrote the [Data Dictionary generator](https://github.com/HL7/fhir-mCODE-ig/tree/master/data-dictionary).

### Contact Information

If you have questions or comments about this guide, you can join the conversation on <we need a zulip chat channel>, create an issue in the HL7 Jira (link), or reach out to any of the following individuals:

| Topic | Who | Role | Email |
|----|---|---|------|
| Implementation and Use Cases | Steve Bratt | CodeX Accelerator Program Manager | sbratt@mitre.org |
| Topic | Martin Von Siebenthal (Varian Medical Systems) | Role | Martin.VonSiebenthal@varian.com |
| Topic | Saul A. Kravitz (MITRE) | Role | saul@mitre.org |
{: .grid }

Codex Radiation Therapy is an open source project and welcomes all contributors. The source code for this IG is maintained in the [HL7 Github](https://github.com/HL7/codex-radiation-therapy). All of the profiling work is done using [FHIR Shorthand](http://hl7.org/fhir/uv/shorthand/) and [SUSHI](https://fshschool.org).

MITRE: Approved for Public Release. Distribution Unlimited. Case Number 16-1988

{% include markdown-link-references.md %}
