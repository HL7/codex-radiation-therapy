
This section outlines requirements and recommendations for CodexRT participants. The conformance verbs - SHALL or MUST, SHOULD, and MAY - are defined in [FHIR Conformance Rules](https://hl7.org/fhir/R4/conformance-rules.html).

### CodexRT Participant Roles

Two roles for **CodexRT Participants** are defined:

* **CodexRT Data Sender** - a participant in exchange of CodexRT data who provides CodexRT data in response to a data query or autonomously pushes CodexRT data to an CodexRT receiver. The Data Sender does not have to be the originator of the data it possesses. The Data Sender role is similar to a [US Core Responder](https://www.hl7.org/fhir/us/core/#us-core-actors), except the data sent is not assumed to be a response to a query.
* **CodexRT Data Receiver** - a participant in exchange of CodexRT data who accepts CodexRT data from an CodexRT Data Sender. The Data Receiver may receive data as part of a predetermined workflow, or initiate the exchange via a query or on a regular basis via subscription. The Receiver role is similar to a [US Core Requestor](https://www.hl7.org/fhir/us/core/#us-core-actors), except the data does not have to be explicitly requested.

This STU1 IG currently only provides a CapabilityStatement for a CodexRT Data Sender.   As additional experience interacting with CodexRT data accrues the required capabilities for a client will be captured in future updates to this IG.

### "MUST" Requirements for Conformance

mCODE participants MUST meet the following requirements for conformance:

1. [Follow conformance requirements for supported profiles](#follow-conformance-requirements-for-supported-profiles)
1. [Populate and meaningfully process CodeXRT resources](#populate-and-meaningfully-process-mcode-resources)
1. [Support Querying CodexRT-Conforming Resources](#support-querying-codexrt-conforming-resources)
1. [Support US Core conformance requirements](#support-us-core-conformance-requirements)

#### Follow Conformance Requirements for Supported Profiles

The information produced and consumed by CodexRT participants is defined by a set of profiles. Both Senders and Receivers must conform to the expectations set by these profiles. See the [Profile Conformance](conformance-profiles.html) page for details.

#### Populate and Meaningfully Process CodexRT Resources

CodexRT Senders MUST be able to populate data elements Must-Support (MS) obligations, for all profiles they support (as declared in their CapabilityStatement). Receivers MUST be able to meaningfully process elements with MS obligations for each profiles they support (as declared in their CapabilityStatement). "Able to Populate" and "Meaningfully Process" have particular meanings, as discussed on the [Profile Conformance](conformance-profiles.html) page.

#### Support Querying CodexRT-Conforming Resources

The query support required of conforming implementations is specified in the capability statement.


#### Support US Core Conformance Requirements

Additional [conformance requirements from US Core](https://hl7.org/fhir/us/core/general-requirements.html) apply to RESTful interactions, searches, and resource formats in mCODE. mCODE "inherits" all US Core conformance requirements. US Core provides base profiles for many (but not all) CodexRT profiles, outlines expectations for handling of missing or unknown data elements, and outlines how to associate provenance information associated with collection, transfer, and updating of clinical information.

International users of CodexRT may find US Core an impediment to implementation. Application of CodexRT to other countries is open to further discussion.

#### Use `meta.profile` to Signal Conformance

Participants SHOULD populate `meta.profile` elements for all resources to indicate which profiles the resources claim to conform to. Servers SHOULD also implement [profile search](https://www.hl7.org/fhir/search.html#profile), which allows participants to query using the `_profile` parameter to return resources conforming to the profiles declared in `meta.profile`.

Profile search and population of `meta.profile` originate as "SHALL" requirements in the base FHIR specification; they are not an additional requirements imposed by mCODE. However, in practice, few implementations have followed these requirements. Refer to the [FHIR Documentation on supported profiles](https://www.hl7.org/fhir/profiling.html#CapabilityStatement.rest.resource.supportedProfile) for details.

### Element-level conformance requirements
CodexRT implementers should conform to the [mCODE element-level conformance requirements](https://hl7.org/fhir/us/mcode/STU2.1/conformance-profiles.html#element-level-conformance-expectations).

{% include markdown-link-references.md %}
