
This section outlines requirements and recommendations for CodeX RT participants. The conformance verbs - SHALL or MUST, SHOULD, and MAY - are defined in [FHIR Conformance Rules](https://hl7.org/fhir/R4/conformance-rules.html).

### CodeX RT Participant Roles

Three roles for **CodeX RT Participants** are defined along the actors defined in IHE-RO [XRTS](https://www.ihe-ro.org/doku.php?id=doc%3Aprofiles%3Axrts):

* **Treatment Summary Provider** - A system that provides the summary of ongoing or completed radiotherapy treatments by storing CodeX RT compliant resources to an RO Resource Repository.

* **Treatment Observer** - A system that retrieves the latest radiotherapy treatment summary information as CodeX RT compliant resources from an RO Resource Repository.

* **RO Resource Repository** - The Radiation Oncology Resource Repository is a system and can receive CodeX RT compliant resources and make them available as defined in the [CodeX RT Server CapabilityStatement](CapabilityStatement-CodexRTServerCapabilityStatement.html). A FHIR Server that fulfills this role may not be limited to Radiation Oncology. It may be a generic FHIR server that fulfills other roles at the same time.

This STU1 IG currently only provides a CapabilityStatement for a RO Resource Repository. As additional experience interacting with CodeX RT data accrues the required capabilities for Treatment Summary Provider and Treatment Observer will be captured in future updates to this IG. See the IHE-RO [XRTS](https://www.ihe-ro.org/doku.php?id=doc%3Aprofiles%3Axrts) Supplement for a specification which transactions are required by the Treatment Summary Provider and the Treatment Observer.

### "MUST" Requirements for Conformance

CodeX RT participants MUST meet the following requirements for conformance:

1. [Follow conformance requirements for supported profiles](#follow-conformance-requirements-for-supported-profiles)
1. [Populate and meaningfully process CodeX RT resources](#populate-and-meaningfully-process-codexrt-resources)
1. [Support querying CodeX RT-Conforming Resources](#support-querying-codexrt-conforming-resources)
1. [Support US Core conformance requirements](#support-us-core-conformance-requirements)

#### Follow Conformance Requirements for Supported Profiles

The information produced and consumed by CodeX RT participants is defined by a set of profiles. All CodeX RT participants must conform to the expectations set by these profiles.

#### Populate and Meaningfully Process CodeX RT Resources

Treatment Summary Providers and RO Resource Repositories MUST be able to populate data elements with Must-Support (MS) obligations (marked with the <span style="padding-left: 3px; padding-right: 3px; color: white; background-color: red" >S</span> flag), for all profiles they support (as declared in their CapabilityStatement). Treatment Observers MUST be able to meaningfully process elements with MS obligations for each profile they support (as declared in their CapabilityStatement). "Able to Populate" and "Meaningfully Process" have particular meanings:

* ** Sender: ** Must-Support elements SHALL be populated by the Sender of CodeX RT resources unless
  * the element’s minimum cardinality is zero and the sender lacks the data necessary to populate the element. In this case, the element SHOULD be entirely omitted. If there is a specific reason the data is missing, a data absent reason (described in the US Core rules on missing data) MAY be substituted.
  * or the element is contained in a top-level element that is not supported or in a profile that is entirely not supported. In this case the must support flags of contained elements do not impose and requirements.
* ** Receiver: ** Must-Support elements SHALL be meaningfully processed by receivers of CodeX RT resources. Depending on the context, “meaningful processing” means fulfilling the specified use case by displaying the data element for human use, reacting to it, or storing it for other purposes.

#### Support Querying CodeX RT-Conforming Resources

The query support required of conforming implementations is specified in the [CapabilityStatement](artifacts.html#behavior-capability-statements).


#### Support US Core Conformance Requirements

Additional [conformance requirements from US Core](https://hl7.org/fhir/us/core/general-requirements.html) apply to RESTful interactions, searches, and resource formats in CodeX RT. CodeX RT derives from mCODE, which  "inherits" all US Core conformance requirements. US Core provides base profiles for many (but not all) CodeX RT profiles, outlines expectations for handling of missing or unknown data elements, and outlines how to associate provenance information associated with collection, transfer, and updating of clinical information.

International users of CodeX RT may find US Core an impediment to implementation. Application of CodeX RT to other countries is open to further discussion.

#### Use `meta.profile` to Signal Conformance

Participants SHOULD populate `meta.profile` elements for all resources to indicate which profiles the resources claim to conform to. Servers SHOULD also implement [profile search](https://www.hl7.org/fhir/search.html#profile), which allows participants to query using the `_profile` parameter to return resources conforming to the profiles declared in `meta.profile`.

Profile search and population of `meta.profile` originate as "SHALL" requirements in the base FHIR specification; they are not additional requirements imposed by CodeX RT or mCODE. However, in practice, few implementations have followed these requirements. Refer to the [FHIR Documentation on supported profiles](https://www.hl7.org/fhir/profiling.html#CapabilityStatement.rest.resource.supportedProfile) for details.

### Element-level conformance requirements
CodeX RT implementers should conform to the [mCODE element-level conformance requirements](https://hl7.org/fhir/us/mcode/STU2.1/conformance-profiles.html#element-level-conformance-expectations).

{% include markdown-link-references.md %}
