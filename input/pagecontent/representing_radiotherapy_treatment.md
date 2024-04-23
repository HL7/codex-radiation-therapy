The following table documents how the 4 Procedure and 6 ServiceRequest profiles defined in this IG capture the key aspects of radiation therapy using fields and extensions.  Many of the extensions are incorporated across all 10 profiles, whereas some are selectively incorporated. Links to relevant definitions are provided. Profiles or Extensions that are new in STU2 are marked as <span style="color: red;">*New*</span>. This table is for the convenience of the reader and should not be used to assess conformance with the IG.

<body>
<table border="1">
<style>
    th.rotate {
        height: 140px; /* Adjust height as needed */
        white-space: nowrap;
    }
    th.rotate > div {
      transform: translate(130px, -60px) rotate(90deg); /* Adjust rotation angle and position */
        width: 10px; /* Adjust width as needed */
    }
    th.rotate > div > span {
        border-bottom: 1px solid #ccc;
        padding: 3px 1px; /* Adjust padding as needed */
    }

.stamp {
    position: relative;
    display: inline-block;
    padding: 3px 6px;
    color: white;
    background-color: red;
    font-size: 10px;
    font-weight: bold;
    text-transform: uppercase;
    border: 2px dashed white;
}

</style>
  <tr >
    <th rowspan="1" width="0.1%">Field or Extension</th>
    <th rowspan="1" width="3%" style="text-align: center">Data Element</th>
    <th rowspan="1" width="3%" style="text-align: center">Component</th>
    <th rowspan="1" width="10%" style="text-align: center">Notes</th>
    <th colspan="3" width="1%" style="text-align: center">Prescriptions</th>
    <th colspan="3" width="3%" style="text-align: center">Plans</th>
    <th colspan="4" width="4%" style="text-align: center">Performed Treatment</th>
  </tr>
  <tr style="height: 200px">
    <th></th>
    <th></th>
    <th></th>
    <th></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-course-prescription.html">Course Prescription</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-phase-prescription.html">Phase Prescription</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-plan-prescription.html">Plan Prescription</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-planned-course.html">Planned Course</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-planned-phase.html">Planned Phase</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-treatment-plan.html">Treatment Plan</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-course-summary.html">Course Summary</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-treated-phase.html">Treated Phase</a></span></div></th>
    <th class="rotate"><div><span><a href="StructureDefinition-codexrt-radiotherapy-treated-plan.html">Treated Plan</a></span></div></th>
    <th class="rotate">
      <div>
        <span><a href="StructureDefinition-codexrt-radiotherapy-treated-fraction.html">Treated Fraction</a> 
          <span style="color: red;"> *New* </span> 
        </span>
      </div>
    </th>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td><a href="http://hl7.org/fhir/us/mcode/STU3/StructureDefinition-mcode-procedure-intent.html">Treatment Intent</a></td>   
    <td>Treatment Intent</td>
    <td>The purpose of a treatment, medication, or procedure, <a href="http://hl7.org/fhir/us/mcode/STU3/ValueSet-mcode-procedure-intent-vs.html">as defined in mCODE</a>.</td>
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
    <td style="text-align: center">E</td>
    <td><a href="StructureDefinition-codexrt-radiotherapy-course-involves-reirradiation.html">Course Involves Reirradiation</a></td>
    <td>Course Involves Reirradiation</td>
    <td>The course of treatment involves reirradiation of targets or organs at risk.</td>
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
    <td style="text-align: center">E</td>
    <td><a href="StructureDefinition-codexrt-radiotherapy-uniform-fractionation.html">Uniform Fractionation</a></td>
    <td>Uniform Fractionation</td>
    <td>This flag is true if the fractionation was uniform (i.e., treated with same modality and dose per fraction) and false if the fractionation was mixed.</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
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
    <td>A code explaining the unplanned or premature termination, or normal completion, of a plan of treatment, course of medication, or research study 
    as <a href="http://hl7.org/fhir/us/mcode/STU3/ValueSet-mcode-treatment-termination-reason-vs.html">defined in mCODE</a>.</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
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
    <td>Described using TG-263 terms mapped to SNOMEDCT codes and qualifiers as <a href="http://hl7.org/fhir/us/mcode/STU3/ValueSet-mcode-radiotherapy-treatment-location-vs.html">defined in mCODE</a>.</td>
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
    <td><a href="http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-modality-vs">As defined in mCODE</a></td> 
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
    <td><a href="http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-technique-vs">As defined in mCODE</a></td> 
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
    <td><a href="StructureDefinition-codexrt-radiotherapy-energy-or-isotope.html">Energy or Isotope</a></td>
    <td>The <a href="ValueSet-codexrt-radiotherapy-energy-unit-vs.html">radiation energy</a> used for radiotherapy. The energy spectrum is characterized by the maximum energy, the maximum accelaration voltage, or the used isotope.</td>
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
    <td><a href="StructureDefinition-codexrt-radiotherapy-treatment-applicator-type.html">Treatment Appplicator Type</a></td>
    <td><a href="ValueSet-codexrt-brachytherapy-applicator-type-vs.html">Type</a> of Radiotherapy Treatment Applicator used in Brachytherapy.</td>
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
    <td><a href="StructureDefinition-codexrt-radiotherapy-fraction-number-in-phase.html">Fraction Number in Phase</a><span style="color: red;"> *New* </span></td>
    <td>Fraction Number in Phase</td>
    <td>The fraction number that was treated in the phase.</td>
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
    <td><a href="StructureDefinition-codexrt-radiotherapy-fraction-number-in-plan.html">Fraction Number in Plan</a><span style="color: red;"> *New* </span></td>
    <td>Fraction Number in Plan</td>
    <td>The fraction number that was treated in the plan.</td>
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
    <td><a href="https://hl7.org/fhir/us/mcode/STU3/StructureDefinition-mcode-radiotherapy-sessions.html">Actual Number of Sessions</a></td>
    <td>Actual Number of Sessions</td>
    <td>The number of sessions in a course of radiotherapy.</td>
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
    <td style="text-align: center">E</td>
    <td>Number of Fractions (<a href="StructureDefinition-codexrt-radiotherapy-fractions-prescribed.html">Prescribed</a>, 
<a href="StructureDefinition-codexrt-radiotherapy-fractions-planned.html">Planned</a>, or
<a href="StructureDefinition-codexrt-radiotherapy-fractions-delivered.html">Delivered</a>)</td>
    <td>Number of Fractions</td>
    <td>The number of prescribed, planned, or delivered treatment fractions for all volumes in this resources.</td>
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
    <td rowspan="7" style="text-align: center">E</td>
    <td rowspan="7"><a href="StructureDefinition-codexrt-radiotherapy-dose-prescribed-to-volume.html">Prescribed</a>, 
<a href="StructureDefinition-codexrt-radiotherapy-dose-planned-to-volume.html">Planned</a>, or
<a href="http://hl7.org/fhir/us/mcode/STU3/StructureDefinition-mcode-radiotherapy-dose-delivered-to-volume.html">Delivered</a> Dose</td>
    <td>Volume</td>
    <td>Reference to a <a href="http://hl7.org/fhir/us/mcode/STU3/StructureDefinition-mcode-radiotherapy-volume.html"> RadiotherapyVolume</a> as defined in mCODE.</td>
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
    <td>Total Dose</td>
    <td>Total physical radiation dose in cGy.</td>
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
    <td>Dose per Fraction</td>
    <td>Physical radiations dose per fraction in cGy.</td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>Fractions</td>
    <td>Number of Fractions (Prescribed, Planned, or Delivered) for this volume.</td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
    <td style="text-align: center"> </td>
  </tr>
<tr>
    <td><a href="StructureDefinition-codexrt-radiotherapy-point-dose.html">Point Dose</a></td>
    <td>This flag is true if the dose is determined at a single point. Point doses are often used to check dose at a specific point in a calculated 3D dose distribution. Since point doses mostly have a technical role, high-level summaries may decide to exclude them from displays.</td>
    <td></td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
<tr>
    <td><a href="StructureDefinition-codexrt-radiotherapy-primary-plan-dose.html">Primary Plan Dose</a></td>
    <td>This flag is true if the dose is the primary plan dose in a radiotherapy treatment plan. For a single treatment plan, the primary plan dose serves as the main dose value for tracking delivered dose vs. planned dose. In summaries over multiple treatment plans, the flag indicates that the dose is a primary plan dose in any of the summarized plans.</td>
    <td></td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr>
<tr>
    <td><a href="StructureDefinition-codexrt-radiobiologic-metric.html">Radiobiologic Metric</a><span style="color: red;"> *New* </span></td>
    <td>Radiobiologic dose metric using a regular expression: BED, CGE, RBE, RBE(factor = &lt;decimal&gt;), EQD2Gy, EQD2Gy(a/b = &lt;decimal&gt;), as defined by TG-263.</td>
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
    <td><a href="StructureDefinition-codexrt-image-guided-radiotherapy-modality.html">Image Guided Radiotherapy Modality</a></td>
    <td>Image Guided Radiotherapy Modality</td>
    <td>The <a href="ValueSet-codexrt-image-guided-radiotherapy-modality-vs.html">modality</a> and associated <a href="ValueSet-codexrt-image-guided-radiotherapy-energy-unit-vs.html">energy</a> used for imaging in Image Guided Radiotherapy (IGRT).</td>
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
    <td><a href="StructureDefinition-codexrt-radiotherapy-reason-for-revision-or-adaptation.html">Reason for Revision or Adaptation</a></td>
    <td></td>
    <td>The <a href="ValueSet-codexrt-radiotherapy-reason-for-revision-or-adaptation-vs.html">reason</a> a planned or prescribed radiotherapy treatment was revised, superceded, or adapted.</td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
    <td></td>
  </tr>
  <tr>
    <td style="text-align: center">E</td>
    <td><a href="StructureDefinition-codexrt-radiotherapy-respiratory-motion-management.html">Respiratory Motion Management</a></td>
    <td></td>
    <td><a href="ValueSet-codexrt-radiotherapy-respiratory-motion-management-vs.html">Method</a> applied to manage respiratory motion.</td>
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
    <td><a href="StructureDefinition-codexrt-radiotherapy-free-breathing-motion-mgmt-technique.html">Free Breathing Motion Management Technique</a></td>
    <td></td>
    <td><a href="ValueSet-codexrt-radiotherapy-free-breathing-motion-mgmt-technique-vs.html">Technique</a> to manage respiratory motion with free-breathing. Only allowed if respiratory motion management is free-breathing.</td>
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
    <td><a href="StructureDefinition-codexrt-intrafraction-verification.html">Intrafraction Verification</a><span style="color: red;"> *New* </span></td>
    <td></td>
    <td>Verification of the patient or target position during a treatment fraction. Specified with a <a href="ValueSet-codexrt-intrafraction-verification-procedure-vs.html">procedure</a> and an optional <a href="ValueSet-codexrt-intrafraction-verification-qualifier-vs.html">qualifier</a>.</td>
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
    <td><a href="StructureDefinition-codexrt-dicom-reference.html">DICOM Treatment Plan</a></td>
    <td></td>
    <td>Reference to a DICOM SOP instances representing a treatment records such as RT Beams Treatment Record or RT Ion Beams Treatment Record. One or more treatment records are expected from each treatment sessions.</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr> 
  <tr>
    <td style="text-align: center">E</td>
    <td><a href="StructureDefinition-codexrt-dicom-reference.html">DICOM Treatment Record</a></td>
    <td></td>
    <td>Reference to a DICOM SOP instance representing a treatment plan such as an RT Plan or an RT Ion Plan.</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td style="text-align: center">x</td>
    <td style="text-align: center">x</td>
  </tr> 
</table>
