### Usage
This extension is used to capture the type of intrafraction verificiation used during treatment.

| Intrafraction Verification Method | Procedure Code | Qualifier Code | 
|----------------------------------|----------------|----------------|
| X-ray  - one source        | SCT#168537006 Plain radiography (procedure) |  SCT#50607009 "Singular (qualifier value)  or absent |   
| X-ray  - multiple sources  | SCT#168537006 Plain radiography (procedure) |  SCT#255204007 "Multiple (qualifier value) |
| Ultrasound                 | SCT#16310003 Ultrasonography (procedure) |     None           |
| CT                 | SCT#77477000 Computed tomography (procedure) |     None           |
| MRI                | SCT#113091000 Magnetic resonance imaging (procedure) |     None           |
| Fidicial Markers   | SnomedRequestedCS#USCRS-35604 Imaging guidance using fiducial markers (procedure) |     None           |
| Electromagnetic Transpoder  | SnomedRequestedCS#USCRS-35606 Radiotherapy using electromagnetic transponder guidance (procedure) |     None           |
| Surface Guided                 | SnomedRequestedCS#1297350006 "Surface guided radiation therapy (procedure)"|     None           |
{:grid}

### Conformance
One of the above types SHOULD be used.  Use of other metrics will generate a warning.

{% include markdown-link-references.md %}

* SCT#16310003 "Ultrasonography (procedure)"
* SCT#77477000 "Computed tomography (procedure)"
* SCT#113091000 "Magnetic resonance imaging (procedure)"
* SCT#168537006 "Plain radiography (procedure)" // plus qualifiers
// Qualifier -- Singular   * SnomedRequestedCS#USCRS-99999813 "Radiography from single direction (procedure)"
// Qualifier -- Multiple   * SnomedRequestedCS#USCRS-99999814 "Radiography combining multiple directions (procedure)"
* SnomedRequestedCS#USCRS-35604 "Imaging guidance using fiducial markers (procedure)"
* SnomedRequestedCS#USCRS-35606 "Radiotherapy using electromagnetic transponder guidance (procedure)"
* SnomedRequestedCS#1297350006 "Surface guided radiation therapy (procedure)"

* SCT#50607009 "Singular (qualifier value)" //from single direction
* SCT#255204007 "Multiple (qualifier value)" // from muliple directions