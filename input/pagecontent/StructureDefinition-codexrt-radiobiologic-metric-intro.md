### Usage
This extension is used to capture the radiobiologic metric of effective dose, as defined by the TG263 in section 9.2 of [AAPM Task Group 263 REport on Standardizing Nomenclatures
in Radiation Oncology](https://www.aapm.org/pubs/reports/RPT_263.pdf). The following metric are supported:
* CGE  - Cobalt Gray Equivalent 
* BED  - Biological Effective Dose
* BED(a/b=<decimal>) - BED with alpha/beta
* EQD2Gy -  Equivalent Dose in 2 Gy per Fraction 
* EQD2Gy(a/b=<decimal>) - EQD2Gy with alpha/beta

The units are assumed to be Gy.

### Conformance
One of the above metrics SHOULD be used.  Use of other metrics will generate a warning.

{% include markdown-link-references.md %}

