### CodeX RT Resource Profiles
The profiles defined in this IG cover different stages of the radiotherapy workflow at different levels of detail. A radiotherapy course systematically addresses a condition or set of related conditions. The course can include multiple sessions, can be divided into multiple phases, and can last for several months. The Radiotherapy Course Summary profile covers the treatment delivered in a treatment course and can be incrementally updated as the treatment progresses. When the treatment is completed, the latest version of the Radiotherapy Course Summary provides the entire course of treatment from beginning to end. The status element indicates whether the treatment is in progress or complete.

In radiotherapy, a *phase* is a subset of a course. A phase is defined as a treatment consisting of one or more identical fractions. See the [Radiotherapy Glossary]({{site.data.fhir.ver.fhirmcode}}/glossary.html).

On a more detailed level, *treatment plans* define how the radiotherapy treatment is delivered.

Note that in radiotherapy, a *treatment plan* represents a concrete set of treatment delivery instructions prepared for a specific patient anatomy and machine ([Radiotherapy Glossary]({{site.data.fhir.ver.fhirmcode}}/glossary.html)). The concept of a radiotherapy *treatment plan* includes the lowest level of machine instructions to control a treatment device. However, these details are not modelled in the FHIR representation of a radiotherapy treatment plan. Instead, the respective ServiceRequest (Radiotherapy Treatment Plan) includes an extension to reference the DICOM artifacts that define the machine geometry and motion during treatment. The Procedure that records the delivered treatment (Radiotherapy Treated Plan), references DICOM treatment records that contain all machine details.

In this IG, Course and Phase definitions follow the recommendations of the American Association of Physicists in Medicine (AAPM) Operational Ontology for Oncology ([O3](https://pubmed.ncbi.nlm.nih.gov/37244628/)).

The relationship between a course, phases, and treatment plans is exemplified in the following diagram.

<img src="BreastTreatmentSummary.svg" alt="RT Summary Example" width="900px" style="float:none; margin: 0px 0px 0px 0px;" />

In this example, the radiotherapy course encompasses three phases. The course summary captures each radiotherapy volume, the total dose for each volume, and total number of fractions delivered for each volume. The course summary also records the modalities and techniques used, without directly associating those with individual volumes. Other elements in the summary include the reason for treatment, the treatment intent, the period of treatment, and the total number of sessions.

At the phase level, each phase consists of a set of identical fractions. In this context, identical means that each fraction uses the same modality, technique, dose per fraction, and is applied to the same volume or volumes. Because of their spatial relationship or the technique used, all volumes do not necessarily receive the same total dose during a phase. Phases may occur in parallel, overlap, or in alternating temporal patterns.

Multiple treatment plans may be used to implement the same phase. Plans may be adapted during a phase due to changes in tumor shape, patient anatomy, or side effects. In the extreme case of adaptive treatment with daily adaptation, a new plan may be created for each fraction of a phase.

The following figure shows the resource profiles to represent the radiotherapy requests and procedures at different levels. Note that the radiotherapy prescriptions and plans are instances of patient specific requests, not templates or protocols. They are therefore modelled as ServiceRequest. These requests may be embedded in a higher level CarePlan, which coordinates various activities of the radiotherapy workflow, but radiotherapy CarePlans are not scope of this IG.

- *Radiotherapy Prescriptions* (left column) are *original orders* (ServiceRequest.intent = original-order) for radiotherapy. Prescriptions can request treatment with a single treatment plan (Radiotherapy Plan Prescription), or can represent a cumulative request for a phase of treatment (Radiotherapy Phase Prescription) or for a complete course (Radiotherapy Course Prescription).
- *Radiotherapy Plans* (middle column) are *filler orders* (ServiceRequest.intent = filler-order) that represent how the radiotherapy system fulfills the prescribed radiotherapy treatment. A ServiceRequest can request a single plan (Radiotherapy Treatment Plan), or the sum of plans for a complete phase (Radiotherapy Planned Phase), or the sum of plans for the entire course of treatment (Radiotherapy Planned Course).
- *Radiotherapy Procedures* (right column) document the treatment that was performed on different levels of detail (Radiotherapy Course Summary, Radiotherapy Treated Phase, Radiotherapy Treated Plan, Radiotherapy Treated Fraction).

<img src="RTResourcesHighLevel.svg" alt="RT Summary Resources Model" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

While treatment is in progress, a consumer of these resources can retrieve the current version of the in-progress Radiotherapy Course Summary to get the current state of treatment delivery. If interested in how the treatment is structured, the observer can also retrieve the lower-level Procedures. A treatment observer can additionally retrieve the ServiceRequests referenced from these Procedures to find what was planned and prescribed. A typical overview of how far the treatment has progressed can be created by comparing the delivered dose and number of fractions in the Treated Phases to the respective planned dose and number of fractions in the Planned Phases. To show a timeline when each fraction of a treatment was delivered, a consumer can query the Treated Fractions and Treatment Session resources.

### Relationships Between Profiles
The hierarchical and prescribing relationships among the profiles defined within the IG are maintained using the Procedure.partOf, Procedure.basedOn, and ServiceRequest.basedOn references.  Procedure.basedOn represents the request for this procedure, whereas Procedure.partOf represents the larger event of which this procedure is a part.  Ideally, all of these references would be populated, and the references would point to profiles to the left or above each profile in the middle or bottom row.  Since sometimes elements in the middle or bottom row may be skipped, references are also allowed between profiles in the bottom row and rightmost column to profiles in the top row or leftmost column, respectively as show in this figure. In particular, the Treated Fraction references the Planned Phase to enable the exchange of fractions of a phase even if no Treatment Plan or other plan level resources are available. 

<img src="relationshipsBetweenProfiles.svg" alt="Relationship Between Profiles" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

### Session and Fraction Numbering
The following figure shows an example treatment consisting of three phases. This level of detail down to individual fractions is required to create timelines and show which treatments took place on which date. The Procedures and Encounters that represent Treated Fractions and Treatment Sessions only need to be retrieved by applications that require this level of detail.

<img src="SessionAndFractionNumbering.svg" alt="Session and Fraction Numbering" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

- The Phase *Left Breast Tangents* required 25 fractions. It was treated with three different plans because two plan revisions took place after the 10th and after the 15th fraction.
- The Phase *Left Breast Boost* required 5 fractions, all treated with the same plan. It was started after the phase *Left Breast Tangents* had been completed.
- The Phase *Right Breast Tangents* required 25 fractions, all treated with the same plan. It was started 5 sessions after the phase *Left Breast Tangents*.

There are three ways to number what was treated.
- The *Session Number* captures which Treatment Session of a course took place.
- The *Fraction Number in Phase* captures which fraction of the respective phase was treated.
- The *Fraction Number in Plan* captures which fraction of the respective plan was treated.

The highlighted example shows that in the 20th Treatment Session, the 20th fraction of the phase *Left Breast Tangents* was treated, which was the 5th fraction of the latest plan revision. In the same session, also the 15th fraction of the phase *Right Breast Tangents* was treated, using the same plan as for all other fractions of this phase, and therefore being the 15th fraction treated with this same plan.


### Revision or Adaptation

During a course of radiotherapy, there may be changes in prescriptions and plans, for example to cope with side-effects or to adapt the treatment to changes in targets or healthy anatomy.
In the radiotherapy community, there is no clear distinction between revision and adaptation. This IG therefore refers to 'revision or adaptation' for changes in prescriptions or plans.
In case of such changes, the radiotherapy system creates new (successor) prescriptions and plans and retires the previous (predecessor) prescriptions and plans.

This section describes how revisions or adaptations are covered in this IG, starting with a revision or adaptation in a Planned Phase.

In case of a revision or adaptation of a Planned Phase:
- The status of the predecessor ServiceRequest (Planned Phase) is set to revoked.
- A new ServiceRequest resource (Planned Phase) is created, which replaces the predecessor. It refers to the predecessor using the element ‘replaces’.
- The status of the Procedure (Treated Phase) that recorded the treatment of the revoked ServiceRequest is set to stopped. A new Procedure is created for recording the treatment that is based on the new ServiceRequest referencing the ServiceRequest using the element ‘basedOn’.
- The revoked ServiceRequest is not changed to remove the untreated dose or fractions. This retains the information how many fractions and how much dose were initially planned, even if the ServiceRequest was revoked before completion. It is visible from the corresponding Procedure which part of the ServiceRequest was delivered before it was stopped.
- If a reason for revision or adaptation is known, it is recorded in the revoked ServiceRequest and stopped Procedure using the respective [extension](artifacts.html#extensions) defined in this IG.
- The course level resources (Planned Course, Course Summary) are updated to reflect the revision or adaptation in the course. No new Planned Course or Course Summary instances are created.
- The new ServiceRequest (Planned Phase) and Procedure (Treated Phase) only cover the remaining treatment that is still to be treated. The course level resources (Planned Course and Course Summary) describe how the already delivered part of the first phase and the remaining treatment with the new (successor) phase add up.

If a Phase Prescription is supported, then typically the Phase Prescription and Planned Phase are both changed. In this case, all explanations above apply to both ServiceRequests (Phase Prescription and Planned Phase). Both ServiceRequests are revoked and two new ServiceRequests (Phase Prescription and Planned Phase) are created for the changed remaining treatment.

If the revision or adaptation is performed on plan level, then Treatment Plan and (if supported) Plan Prescription are revoked and new instances are created and related in the same way as described for phases above.

The following figure shows an example, in which a revision of the Planned Phase is performed after 3 fractions delivered in 4 sessions. At this point, a new Planned Phase is created. The remaining treatment is recorded in a new Treated Phase. On the course level, the Planned Course provides the sum or revoked and new Planned Phase (taking into account when the revoked Planned Phase was replaced). The Course Summary provides the sum of the stopped and new Treated Phase.
This example is highly simplified for brevity and only a few data elements are shown. In particular, dose values are shown for only one target, whereas generally, plan and treatment summaries describe dose to multiple targets.

<img src="RTRevisionExampleTimeline.svg" alt="Phase Revision Example" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

The following figure shows the relations between the resources of the same example.

<img src="RTRevisionExampleRelations.svg" alt="Phase Revision Example" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

### Data Elements
The diagram below shows the relationship between the RT profiles and data elements. It also highlights which are extensions developed as part of the RT FHIR data model.  For an alternate view of how the profiles and extensions defined in this IG are used to represent radiation therapy treatment data, see the [representing radiation therapy](representing_radiotherapy_treatment.html) page.

<img src="RTResourcesOverview.svg" alt="RT Summary Resources Overview" width="1100px" style="float:none; margin: 0px 0px 0px 0px;" />

{% include markdown-link-references.md %}