### Data Dictionary Content

The Data Dictionary (DD) presents the CodeX™ RT IG's content in a format that may be more accessible than the default FHIR artifact pages. The DD is an Excel spreadsheet that lists CodeX™ RT data elements and some details about them. If there is a discrepancy between the Data Dictionary and the FHIR artifacts, the FHIR artifacts are taken as the source of truth.

The DD intentionally omits certain elements in FHIR that are not expected to be implemented. Please be aware of the following:

* **Profiles not shown in the DD:** Only profiles defined within the CodeX™ RT IG are included in the Data Dictionary. Other profiles that would typically be used within the Radiotherapy use case, such as those defined in mCODE and USCore are not included.  The [mCODE Data Dictionary](https://hl7.org/fhir/us/mcode/STU2.1/dictionary.html) may also be of interest to CodeX™ RT users.

* **Data elements not shown in the DD:** Only elements marked as "Must Support"(MS) are included in the Data Dictionary. These are elements, some inherited from US Core that implementers may be expected to support.

Download link:

* [CodeX™ RT Data Dictionary - STU 1 (Excel download)](CodexRTDataDictionary-STU1.xlsx)
