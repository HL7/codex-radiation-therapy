
This section outlines requirements and recommendations for CodeX RT participants. The conformance verbs - SHALL or MUST, SHOULD, and MAY - are defined in [FHIR Conformance Rules](https://hl7.org/fhir/R4/conformance-rules.html).

### CodeX RT Participant Roles

Three roles for **CodeX RT Participants** are defined along the actors defined in IHE-RO [XRTS](https://www.ihe-ro.org/doku.php?id=doc%3Aprofiles%3Axrts):

* **Treamtent Summary Provider** - a participant in exchange of CodeX RT data who provides CodeX RT data in response to a data query or autonomously pushes CodeX RT data to an CodeX RT receiver. The Data Sender does not have to be the originator of the data it possesses. The Data Sender role is similar to a [US Core Responder](https://www.hl7.org/fhir/us/core/#us-core-actors), except the data sent is not assumed to be a response to a query.
* **Treatment Observer** - a participant in exchange of CodeX RT data who accepts CodeX RT data from an CodeX RT Data Sender. The Data Receiver may receive data as part of a predetermined workflow, or initiate the exchange via a query or on a regular basis via subscription. The Receiver role is similar to a [US Core Requestor](https://www.hl7.org/fhir/us/core/#us-core-actors), except the data does not have to be explicitly requested.

* **RO Resource Repository** - a participant in exchange of CodeX RT data who accepts CodeX RT data from an CodeX RT Data Sender. The Data Receiver may receive data as part of a predetermined workflow, or initiate the exchange via a query or on a regular basis via subscription. The Receiver role is similar to a [US Core Requestor](https://www.hl7.org/fhir/us/core/#us-core-actors), except the data does not have to be explicitly requested.

This STU1 IG currently only provides a CapabilityStatement for a RO Resource Repository. As additional experience interacting with CodeX RT data accrues the required capabilities for a client will be captured in future updates to this IG.

### "MUST" Requirements for Conformance

CodeX RT participants MUST meet the following requirements for conformance:

1. [Follow conformance requirements for supported profiles](#follow-conformance-requirements-for-supported-profiles)
1. [Populate and meaningfully process CodeX RT resources](#populate-and-meaningfully-process-codexrt-resources)
1. [Support Querying CodeX RT-Conforming Resources](#support-querying-codexrt-conforming-resources)
1. [Support US Core conformance requirements](#support-us-core-conformance-requirements)

#### Follow Conformance Requirements for Supported Profiles

The information produced and consumed by CodeX RT participants is defined by a set of profiles. Both Senders and Receivers must conform to the expectations set by these profiles.

#### Populate and Meaningfully Process CodeX RT Resources

CodeX RT Senders MUST be able to populate data elements Must-Support (MS) obligations, for all profiles they support (as declared in their CapabilityStatement). Receivers MUST be able to meaningfully process elements with MS obligations for each profiles they support (as declared in their CapabilityStatement). "Able to Populate" and "Meaningfully Process" have particular meanings.

#### Support Querying CodeX RT-Conforming Resources

The query support required of conforming implementations is specified in the capability statement.


#### Support US Core Conformance Requirements

Additional [conformance requirements from US Core](https://hl7.org/fhir/us/core/general-requirements.html) apply to RESTful interactions, searches, and resource formats in CodeX RT. CodeX RT derives from mCODE, which  "inherits" all US Core conformance requirements. US Core provides base profiles for many (but not all) CodeX RT profiles, outlines expectations for handling of missing or unknown data elements, and outlines how to associate provenance information associated with collection, transfer, and updating of clinical information.

International users of CodeX RT may find US Core an impediment to implementation. Application of CodeX RT to other countries is open to further discussion.

#### Use `meta.profile` to Signal Conformance

Participants SHOULD populate `meta.profile` elements for all resources to indicate which profiles the resources claim to conform to. Servers SHOULD also implement [profile search](https://www.hl7.org/fhir/search.html#profile), which allows participants to query using the `_profile` parameter to return resources conforming to the profiles declared in `meta.profile`.

Profile search and population of `meta.profile` originate as "SHALL" requirements in the base FHIR specification; they are not additional requirements imposed by CodeX RT or mCODE. However, in practice, few implementations have followed these requirements. Refer to the [FHIR Documentation on supported profiles](https://www.hl7.org/fhir/profiling.html#CapabilityStatement.rest.resource.supportedProfile) for details.

### Element-level conformance requirements
CodeX RT implementers should conform to the [mCODE element-level conformance requirements](https://hl7.org/fhir/us/mcode/STU2.1/conformance-profiles.html#element-level-conformance-expectations).

{% include markdown-link-references.md %}
