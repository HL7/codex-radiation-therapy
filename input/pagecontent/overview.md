
### Actors and Use Cases

The CodeX Radiation Therapy (RT) Implementation Guide (IG) describes how to represent, model, and exchange radiation therapy information that is generated during a patient's radiation therapy, including prescription, planning and treatment. This FHIR IG is intended for any individual or system involved in a patient's journey that would directly benefit from receiving radiation therapy information.  The intended actors include:
* Patients
* Radiation Oncology Providers
* Other Medical Providers

The intended use cases include:
* Prescribing, Elaborating and Managing Radiation Therapy Treatment
* Documenting Delivered Radiation Therapy Treatment

### Resource Profiles

The profiles defined in this IG cover different stages of the radiotherapy workflow at different levels of detail.
A course of therapy systematically addresses a condition or set of related conditions. The course can include multiple sessions, can be divided into multiple phases, and can last for several months.
The Radiotherapy Course Summary covers the treatment delivered in a treatment course and can be incrementally updated as the treatment progresses. When the treatment is completed, the latest version of the Course Summary provides the entire course of treatment from beginning to end. The status element indicates whether the treatment is in progress or complete.

In radiotherapy, a _phase_ is a subset of a course. A phase is defined as a treatment consisting of one or more identical fractions. See the [Radiotherapy Glossary](http://hl7.org/fhir/us/mcode/glossary.html).

The relationship between a course, phases, and treatment plans is exemplified in the following diagram.

<img src="BreastTreatmentSummary.png" alt="Breast Treatment Summary" width="1000px" style="float:none; margin: 0px 0px 0px 0px;" />

In this example, the radiotherapy course encompasses three phases. The course summary captures each radiotherapy volume, the total dose for each volume, and total number of fractions delivered for each volume. The course summary also records the modalities and techniques used, without directly associating those with individual volumes. Other elements in the summary include the reason for treatment, the treatment intent, the period of treatment, and the total number of sessions.

At the phase level, each phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same volume or volumes. Because of their spatial relationship or the technique used, all volumes do not necessarily receive the same total dose during a phase. Phases may occur in parallel, overlap, or in alternating temporal patterns.

At the lowest level of detail, Treatment Plans define the parameters for treatment delivery. The FHIR profiles on the level of treatment plans include references to DICOM artefacts (DICOM treatment plans and DICOM treatment records) that contain treatment parameters down to the machine geometry and motion during treatment.

Multiple treatment plans may be used to implement the same phase. Plans may be adapted during a phase due to changes in tumor shape, patient anatomy, or side effects. In the extreme case of adaptive treatment, a new plan may be created each day to cover multiple fractions of one and the same phase.

The following figure shows the resource profiles based on resource type ServiceRequest (left column) that document which treatment was prescribed on different levels (Radiotherapy Plan Prescription, Radiotherapy Phase Prescription, Radiotherapy Course Prescription). Other profiles that are also based on ServiceRequest (middle column) describe which treatment plans were prepared to fulfill the prescriptions. Treatment plans can be summarized on different levels to cover a single plan (Radiotherapy Treatment Plan), the sum of plans for a complete phase (Radiotherapy Planned Phase), or the sum of plans for the entire course of treatment (Radiotherapy Planned Course). The profiles based on Procedure (right column) are used to document the treatment that was actually performed on different levels of detail (Radiotherapy Course Summary, Radiotherapy Treated Phase, Radiotherapy Treated Plan).

While treatment is in progress, a consumer of these resources can retrieve the current version of the in-progress Radiotherapy Course Summary to get the current state of treatment delivery. If interested in how the treatment was structured, the observer can also retrieve the lower-level Procedures. A treatment observer can additionally retrieve the ServiceRequests referenced from these Procedures to find what was planned and prescribed. A typical overview of how far the treatment has progressed can be created by comparing the delivered dose and number of fractions to the planned dose and number of fractions.

<img src="RTResourcesHighLevel.svg" alt="RT Summary Resources Model" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

### Data Elements

<img src="RTResourcesOverview.svg" alt="RT Summary Resources Overview" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

### Treatment Summary Transactions

For other transactions, see the IHE-RO XRTS Supplement.

<img src="ProcessFlow-EndofTreatmentSummary-Subscription.svg" alt="XRTS Transactions - End of Treatment Summary" width="800px" style="float:none; margin: 0px 0px 0px 0px;" />

### About This Guide
