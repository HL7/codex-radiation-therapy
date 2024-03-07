### Location

### Performing Organization

### Representing Radiotherapy Treatment

<body>
<table border="1">
<style>
    th.rotate {
        height: 140px; /* Adjust height as needed */
        white-space: nowrap;
    }
    th.rotate > div {
        transform: translate(10px, -60px) rotate(90deg); /* Adjust rotation angle and position */
        width: 10px; /* Adjust width as needed */
    }
    th.rotate > div > span {
        border-bottom: 1px solid #ccc;
        padding: 3px 1px; /* Adjust padding as needed */
    }
</style>
  <tr >
    <th rowspan="2" width="0.5%">Field/Extensible</th>
    <th rowspan="2" width="3%">Data Element</th>
    <th rowspan="2" width="3%">Component</th>
    <th rowspan="2" width="10%">Notes</th>
    <th colspan="3" width="1%" style="text-align: center">Prescriptions</th>
    <th colspan="3" width="3%" style="text-align: center">Plans</th>
    <th colspan="4" width="4%" style="text-align: center">Performed Treatment</th>
  </tr>
  <tr style="height: 150px">
    <th class="rotate"><div><span>Course Prescription</span></div></th>
    <th class="rotate"><div><span>Plan Prescription</span></div></th>
    <th class="rotate"><div><span>Phase Prescription</span></div></th>
    <th class="rotate"><div><span>Planned Course</span></div></th>
    <th class="rotate"><div><span>Planned Phase</span></div></th>
    <th class="rotate"><div><span>Treatment Plan</span></div></th>
    <th class="rotate"><div><span>Course Summary</span></div></th>
    <th class="rotate"><div><span>Treated Phase</span></div></th>
    <th class="rotate"><div><span>Treated Plan</span></div></th>
    <th class="rotate"><div><span>Treated Fraction</span></div></th>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Treatment Intent</td>
    <td>Treatment Intent</td>
    <td>The purpose of a treatment, medication, or procedure.</td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td style="text-align: center">F</td>
    <td>Reason for Termination</td>
    <td>Status Reason</td>
    <td>A code explaining the unplanned or premature termination, or normal completion, of a plan of treatment, course of medication, or research study. This extension is deprecated since it is redundant with the statusReason field.</td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td style="text-align: center">F</td>
    <td>Treatment Site</td>
    <td>Body Site</td>
    <td>Described using TG263 terms mapped to SNOMEDCT codes and qualifiers.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td rowspan="4" style="text-align: center">E</td>
    <td rowspan="4">Treatment <a href="https://hl7.org/fhir/us/mcode/STU3/StructureDefinition-mcode-radiotherapy-modality-and-technique.html">Modality and Technique</a></td>
    <td>Modality</td>
    <td>As defined in mCODE.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td>Technique</td>
    <td>As defined in mCODE.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td>Energy or Isotope</td>
    <td>The radiation energy used for radiotherapy. The energy spectrum is characterized by the maximum energy, the maximum accelaration voltage, or the used isotope.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td>Treatment Appplicator Type</td>
    <td>*****MISSING*******.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Number of Fractions (Prescribed, Planned, or Delivered)</td>
    <td>Number of Fractions</td>
    <td>*****MISSING*******.</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Fraction Number in Phase</td>
    <td>Fraction Number in Phase</td>
    <td>*****MISSING*******.</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Fraction Number in Plan</td>
    <td>Fraction Number in Plan</td>
    <td>*****MISSING*******</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Number of Sessions</td>
    <td>Number of Sessions</td>
    <td>*****MISSING*******</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
  </tr>
<tr>
    <td rowspan="6" style="text-align: center">E</td>
    <td rowspan="6">Prescribed, Planned, Delivered Dose</a></td>
    <td>Volume</td>
    <td>Reference to a RadiotherapyVolume as defined in mCODE.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
<tr>
    <td>Dose</td>
    <td>Dose in CGy</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
<tr>
    <td>Fractions</td>
    <td>Fractions Planned or Delivered</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
  </tr>
<tr>
    <td>Point Dose</td>
    <td>This flag is true if the dose is determined at a single point. Point doses are often used to check dose at a specific point in a calculated 3D dose distribution. Since point doses mostly have a technical role, high-level summaries may decide to exclude them from displays.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
<tr>
    <td>Primary Plan Dose</td>
    <td>This flag is true if the dose is the primary plan dose in a radiotherapy treatment plan. For a single treatment plan, the primary plan dose serves as the main dose value for tracking delivered dose vs. planned dose. In summaries over multiple treatment plans, the flag indicates that the dose is a primary plan dose in any of the summarized plans.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
<tr>
    <td>Radiobiologic Metric</td>
    <td>Radiobiologic dose metric using a regular expression: BED, CGE, RBE, RBE(factor = <decimal>), EQD2Gy, EQD2Gy(a/b = <decimal>), as defined by TG263.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Image Guided Modality</td>
    <td>Imaged Guided Modality</td>
    <td>The modality and associated energy used for imaging in Image Guided Radiotherapy (IGRT).</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Image Guided Modality</td>
    <td>Imaged Guided Modality</td>
    <td>The modality and associated energy used for imaging in Image Guided Radiotherapy (IGRT).</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Reason for Revision or Adaptation</td>
    <td></td>
    <td>The reason a planned or prescribed radiotherapy treatment was revised, superceded, or adapted.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Respiratory Motion Management</td>
    <td></td>
    <td>Method applied to manage respiratory motion.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Free Breathing Motion Management Technique</td>
    <td></td>
    <td>Technique to manage respiratory motion with free-breathing. Only allowed if respiratory motion management is free-breathing.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>Intrafraction Verification</td>
    <td></td>
    <td>Verification of the patient or target position during a treatment fraction.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td>DICOM Record</td>
    <td></td>
    <td>Reference to a DICOM SOP instances representing a treatment records such as RT Beams Treatment Record or RT Ion Beams Treatment Record. One or more treatment records are expected from each treatment sessions.</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr> 
</table>
