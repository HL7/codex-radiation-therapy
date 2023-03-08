{
  "resourceType": "StructureDefinition",
  "id": "codexrt-radiotherapy-plan-prescription",
  "text": {
    "status": "extensions",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 0px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The logical name of the element\">Name</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Information about the use of the element\">Flags</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the the element can appear in the instance\">Card.</a></th><th style=\"width: 100px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Reference to the type of the element\">Type</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Additional information about the element\">Description &amp; Constraints</a><span style=\"float: right\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"http://hl7.org/fhir/R4/help16.png\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_resource.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest\">ServiceRequest</a><a name=\"ServiceRequest\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/servicerequest.html\">ServiceRequest</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">A request for a service to be performed</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck12.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension_simple.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Simple Extension\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.extension\">Slices for extension</a><a name=\"ServiceRequest.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/extensibility.html#Extension\">Extension</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Extension</span><br/><span style=\"font-weight:bold\">Slice: </span>Unordered, Open by value:url</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck15.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.extension:modalityAndTechnique\" title=\"Extension URL = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique\">modalityAndTechnique</a><a name=\"ServiceRequest.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">(Complex)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Radiotherapy Modality And Technique Extension</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-modality-and-technique.html\">http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique</a></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck154.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.extension:modalityAndTechnique.extension:radiotherapyEnergyOrIsotope\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope\">radiotherapyEnergyOrIsotope</a><a name=\"ServiceRequest.extension.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity\" title=\"Quantity\">SimpleQuantity</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Radiotherapy Energy or Isotope</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotherapy-energy-or-isotope.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope</a><br/><span style=\"font-weight:bold\">Binding: </span><a href=\"ValueSet-codexrt-radiotherapy-energy-unit-vs.html\">Radiotherapy Energy Unit Value Set</a> (<a href=\"http://hl7.org/fhir/R4/terminologies.html#required\" title=\"To be conformant, the concept in this element SHALL be from the specified value set.\">required</a>)<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck144.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.extension:modalityAndTechnique.extension:radiotherapyTreatmentApplicatorType\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type\">radiotherapyTreatmentApplicatorType</a><a name=\"ServiceRequest.extension.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Radiotherapy Treatment Applicator Type</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotherapy-treatment-applicator-type.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type</a><br/><span style=\"font-weight:bold\">Binding: </span><a href=\"ValueSet-codexrt-brachytherapy-applicator-type-vs.html\">Brachytherapy Applicator Type Value Set</a> (<a href=\"http://hl7.org/fhir/R4/terminologies.html#extensible\" title=\"To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated.  If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.\">extensible</a>)<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck14.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.extension:radiotherapyFractionsPrescribed\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-prescribed\">radiotherapyFractionsPrescribed</a><a name=\"ServiceRequest.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#positiveInt\">positiveInt</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Number of Prescribed Fractions</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotherapy-fractions-prescribed.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-prescribed</a></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck15.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.extension:radiotherapyDosePrescribedToVolume\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume\">radiotherapyDosePrescribedToVolume</a><a name=\"ServiceRequest.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">(Complex)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Prescribed Dose to a Dose Reference</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotherapy-dose-prescribed-to-volume.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume</a><br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck144.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <span style=\"text-decoration:line-through\" title=\"Slice fractions: Not used in this profile. In a Treatment Plan, all volumes are involved in all fractions and the number of fractions is defined in extension radiotherapyFractionsPrescribed.\">extension:fractions</span><a name=\"ServiceRequest.extension.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"text-decoration:line-through\"/><span style=\"text-decoration:line-through\">0</span><span style=\"text-decoration:line-through\">..</span><span style=\"text-decoration:line-through\">0</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck14.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.extension:radiotherapyReasonForRevisionOrAdaptation\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotheraphy-reason-for-revision-or-adaptation\">radiotherapyReasonForRevisionOrAdaptation</a><a name=\"ServiceRequest.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Reason for Revision or Adaptation</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotheraphy-reason-for-revision-or-adaptation.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotheraphy-reason-for-revision-or-adaptation</a><br/><span style=\"font-weight:bold\">Binding: </span><a href=\"ValueSet-codexrt-radiotherapy-reason-for-revision-or-adaptation-vs.html\">Radiotherapy Reason for Revision or Adaptation Value Set</a> (<a href=\"http://hl7.org/fhir/R4/terminologies.html#required\" title=\"To be conformant, the concept in this element SHALL be from the specified value set.\">required</a>)<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck13.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier\" title=\"SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM.\">Slices for identifier</a><a name=\"ServiceRequest.identifier\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red; font-style: italic\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"font-style: italic\">2</span><span style=\"font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">Identifiers assigned to this order</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by value:use</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck135.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:displayName\" title=\"Slice displayName\">identifier:displayName</a><a name=\"ServiceRequest.identifier\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">The name that is displayed to the user.</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1350.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:displayName.use\">use</a><a name=\"ServiceRequest.identifier.use\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">usual | official | temp | secondary | old (If known)</span><br/><span style=\"font-weight:bold\">Required Pattern: </span><span style=\"color: darkgreen\">usual</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1350.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:displayName.system\">system</a><a name=\"ServiceRequest.identifier.system\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#uri\">uri</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The namespace for the identifier value</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1340.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:displayName.value\">value</a><a name=\"ServiceRequest.identifier.value\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The value that is unique</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck125.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:official\" title=\"Slice official\">identifier:official</a><a name=\"ServiceRequest.identifier\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">A business identifier for the request or procedure, which is independent of its FHIR representation, such as a GUID or DICOM UID.<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1250.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:official.use\">use</a><a name=\"ServiceRequest.identifier.use\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">usual | official | temp | secondary | old (If known)</span><br/><span style=\"font-weight:bold\">Required Pattern: </span><span style=\"color: darkgreen\">official</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1250.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:official.system\">system</a><a name=\"ServiceRequest.identifier.system\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#uri\">uri</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The namespace for the identifier value</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1240.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.identifier:official.value\">value</a><a name=\"ServiceRequest.identifier.value\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The value that is unique</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck13.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.basedOn\">Slices for basedOn</a><a name=\"ServiceRequest.basedOn\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"opacity: 0.5; font-style: italic\">0</span><span style=\"opacity: 0.5; font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"font-style: italic\" href=\"http://hl7.org/fhir/R4/references.html\">Reference</a><span style=\"font-style: italic\">(</span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/careplan.html\">CarePlan</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/servicerequest.html\">ServiceRequest</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/medicationrequest.html\">MedicationRequest</a><span style=\"font-style: italic\">)</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">What request fulfills</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by profile:$this.resolve()</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck134.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.basedOn:course-prescription\" title=\"Slice course-prescription\">basedOn:course-prescription</a><a name=\"ServiceRequest.basedOn\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-course-prescription.html\">Radiotherapy Course Prescription</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Radiotherapy Course Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases).</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck124.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.basedOn:phase-prescription\" title=\"Slice phase-prescription\">basedOn:phase-prescription</a><a name=\"ServiceRequest.basedOn\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-phase-prescription.html\">Radiotherapy Phase Prescription</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Radiotherapy Phase Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases).</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_reference.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Reference to another Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.replaces\">replaces</a><a name=\"ServiceRequest.replaces\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription.html\">Radiotherapy Plan Prescription</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Previous retired prescription that is replaced by this prescription</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.status\">status</a><a name=\"ServiceRequest.status\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">1</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">draft | active | on-hold | revoked | completed | entered-in-error | unknown</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.intent\">intent</a><a name=\"ServiceRequest.intent\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">1</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option</span><br/><span style=\"font-weight:bold\">Required Pattern: </span><span style=\"color: darkgreen\">original-order</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck13.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.category\">Slices for category</a><a name=\"ServiceRequest.category\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red; font-style: italic\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"font-style: italic\">1</span><span style=\"font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">Classification of service</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by pattern:$this</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck125.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.category:required\" title=\"Slice required\">category:required</a><a name=\"ServiceRequest.category\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Classification of service</span><br/><span style=\"font-weight:bold\">Required Pattern: </span><span style=\"color: darkgreen\">At least the following</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1241.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#CodeableConcept.coding\">coding</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#Coding\">Coding</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Code defined by a terminology system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">(complex)</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck12410.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#Coding.system\">system</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#uri\">uri</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Identity of the terminology system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">http://snomed.info/sct</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck12410.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#Coding.code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Symbol in syntax defined by the system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">108290001</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck12400.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#Coding.display\">display</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Representation defined by the system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">Radiation oncology AND/OR radiotherapy</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <span style=\"text-decoration:line-through\">doNotPerform</span><a name=\"ServiceRequest.doNotPerform\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"text-decoration:line-through\"/><span style=\"text-decoration:line-through\">0</span><span style=\"text-decoration:line-through\">..</span><span style=\"text-decoration:line-through\">0</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.code\">code</a><a name=\"ServiceRequest.code\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">What is being requested/ordered</span><br/><span style=\"font-weight:bold\">Required Pattern: </span><span style=\"color: darkgreen\">At least the following</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck101.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#CodeableConcept.coding\">coding</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#Coding\">Coding</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Code defined by a terminology system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">(complex)</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#Coding.system\">system</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#uri\">uri</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Identity of the terminology system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">http://hl7.org/fhir/us/codex-radiation-therapy/CodeSystem/snomed-requested-cs</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1010.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#Coding.code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Symbol in syntax defined by the system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">1255724003</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_fixed.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Fixed Value\" class=\"hierarchy\"/> <a href=\"http://hl7.org/fhir/R4/datatypes-definitions.html#Coding.display\">display</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Representation defined by the system<br/><span style=\"font-weight: bold\">Fixed Value: </span><span style=\"color: darkgreen\">Radiotherapy treatment plan (regime/therapy)</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <span style=\"text-decoration:line-through\">quantity[x]</span><a name=\"ServiceRequest.quantity_x_\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"text-decoration:line-through\"/><span style=\"text-decoration:line-through\">0</span><span style=\"text-decoration:line-through\">..</span><span style=\"text-decoration:line-through\">0</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_reference.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Reference to another Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.subject\">subject</a><a name=\"ServiceRequest.subject\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">1</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-patient.html\">US Core Patient Profile</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Individual or Entity the service is ordered for</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_datatype.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Data Type\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.occurrenceTiming\">occurrenceTiming</a><a name=\"ServiceRequest.occurrenceTiming\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#Timing\">Timing</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">When service should occur</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck101.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.occurrenceTiming.repeat\">repeat</a><a name=\"ServiceRequest.occurrenceTiming.repeat\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1000.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_datatype.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Data Type\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.occurrenceTiming.repeat.boundsPeriod\">boundsPeriod</a><a name=\"ServiceRequest.occurrenceTiming.repeat.boundsPeriod\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#Period\">Period</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Length/Range of lengths, or (Start and/or end) limits</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <span style=\"text-decoration:line-through\">asNeeded[x]</span><a name=\"ServiceRequest.asNeeded_x_\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"text-decoration:line-through\"/><span style=\"text-decoration:line-through\">0</span><span style=\"text-decoration:line-through\">..</span><span style=\"text-decoration:line-through\">0</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_reference.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Reference to another Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.requester\">requester</a><a name=\"ServiceRequest.requester\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-practitioner.html\">US Core Practitioner Profile</a> | <a href=\"http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-practitionerrole.html\">US Core PractitionerRole Profile</a> | <a href=\"http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-organization.html\">US Core Organization Profile</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Who/what is requesting service</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck13.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.performer\">Slices for performer</a><a name=\"ServiceRequest.performer\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red; font-style: italic\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"opacity: 0.5; font-style: italic\">0</span><span style=\"opacity: 0.5; font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"font-style: italic\" href=\"http://hl7.org/fhir/R4/references.html\">Reference</a><span style=\"font-style: italic\">(</span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/practitioner.html\">Practitioner</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/practitionerrole.html\">PractitionerRole</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/organization.html\">Organization</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/careteam.html\">CareTeam</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/healthcareservice.html\">HealthcareService</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/patient.html\">Patient</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/device.html\">Device</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/relatedperson.html\">RelatedPerson</a><span style=\"font-style: italic\">)</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">Requested performer</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by profile:$this.resolve()</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck124.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.performer:treatmentOrSeedDevice\" title=\"Slice treatmentOrSeedDevice\">performer:treatmentOrSeedDevice</a><a name=\"ServiceRequest.performer\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-treatment-device.html\">Radiotherapy Treatment Device</a> | <a href=\"StructureDefinition-codexrt-radiotherapy-seed-device.html\">Radiotherapy Seed Device</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Radiotherapy Treatment Device or Seed Device used as part of therapy.<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_reference.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Reference to another Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.locationReference\">locationReference</a><a name=\"ServiceRequest.locationReference\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-location.html\">US Core Location Profile</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Requested location</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.reasonCode\">reasonCode</a><a name=\"ServiceRequest.reasonCode\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Explanation/Justification for procedure or service</span><br/><span style=\"font-weight:bold\">Binding: </span><a href=\"http://hl7.org/fhir/us/mcode/STU2/ValueSet-mcode-cancer-disorder-vs.html\">Cancer Disorder Value Set</a> (<a href=\"http://hl7.org/fhir/R4/terminologies.html#extensible\" title=\"To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated.  If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.\">extensible</a>)</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_reference.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Reference to another Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.reasonReference\">reasonReference</a><a name=\"ServiceRequest.reasonReference\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"http://hl7.org/fhir/R4/condition.html\">Condition</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Explanation/Justification for service or service</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <span style=\"text-decoration:line-through\">specimen</span><a name=\"ServiceRequest.specimen\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"text-decoration:line-through\"/><span style=\"text-decoration:line-through\">0</span><span style=\"text-decoration:line-through\">..</span><span style=\"text-decoration:line-through\">0</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.bodySite\">bodySite</a><a name=\"ServiceRequest.bodySite\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Body site that is treated with radiotherapy<br/><span style=\"font-weight:bold\">Binding: </span><a href=\"http://hl7.org/fhir/us/mcode/STU2/ValueSet-mcode-radiotherapy-treatment-location-vs.html\">Radiotherapy Treatment Location Value Set</a> (<a href=\"http://hl7.org/fhir/R4/terminologies.html#required\" title=\"To be conformant, the concept in this element SHALL be from the specified value set.\">required</a>)</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck00.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-plan-prescription-definitions.html#ServiceRequest.note\">note</a><a name=\"ServiceRequest.note\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#Annotation\">Annotation</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Comments</span></td></tr>\r\n<tr><td colspan=\"5\" class=\"hierarchy\"><br/><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"http://hl7.org/fhir/R4/help16.png\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
  },
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-category",
      "valueString": "Clinical.Care Provision"
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category",
      "valueCode": "patient"
    }
  ],
  "url": "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription",
  "version": "1.0.0-ballot",
  "name": "RadiotherapyPlanPrescription",
  "title": "Radiotherapy Plan Prescription",
  "status": "active",
  "date": "2022-12-20T11:27:25-05:00",
  "publisher": "HL7 Cross Group Projects Work Group",
  "contact": [
    {
      "name": "HL7 Cross Group Projects Work Group",
      "telecom": [
        {
          "system": "url",
          "value": "https://www.hl7.org/Special/committees/cgp"
        },
        {
          "system": "email",
          "value": "cgplist@lists.HL7.org"
        }
      ]
    }
  ],
  "description": "A Radiotherapy Plan Prescription is a request for radiotherapy treatment with a single treatment plan.",
  "jurisdiction": [
    {
      "coding": [
        {
          "system": "urn:iso:std:iso:3166",
          "code": "US",
          "display": "United States of America"
        }
      ]
    }
  ],
  "fhirVersion": "4.0.1",
  "mapping": [
    {
      "identity": "workflow",
      "uri": "http://hl7.org/fhir/workflow",
      "name": "Workflow Pattern"
    },
    {
      "identity": "v2",
      "uri": "http://hl7.org/v2",
      "name": "HL7 v2 Mapping"
    },
    {
      "identity": "rim",
      "uri": "http://hl7.org/v3",
      "name": "RIM Mapping"
    },
    {
      "identity": "w5",
      "uri": "http://hl7.org/fhir/fivews",
      "name": "FiveWs Pattern Mapping"
    },
    {
      "identity": "quick",
      "uri": "http://siframework.org/cqf",
      "name": "Quality Improvement and Clinical Knowledge (QUICK)"
    }
  ],
  "kind": "resource",
  "abstract": false,
  "type": "ServiceRequest",
  "baseDefinition": "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
  "derivation": "constraint",
  "snapshot": {
    "element": [
      {
        "id": "ServiceRequest",
        "path": "ServiceRequest",
        "short": "A request for a service to be performed",
        "definition": "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed.",
        "alias": [
          "diagnostic request",
          "referral",
          "referral request",
          "transfer of care request"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest",
          "min": 0,
          "max": "*"
        },
        "constraint": [
          {
            "key": "dom-2",
            "severity": "error",
            "human": "If the resource is contained in another resource, it SHALL NOT contain nested Resources",
            "expression": "contained.contained.empty()",
            "xpath": "not(parent::f:contained and f:contained)",
            "source": "http://hl7.org/fhir/StructureDefinition/DomainResource"
          },
          {
            "key": "dom-3",
            "severity": "error",
            "human": "If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource",
            "expression": "contained.where((('#'+id in (%resource.descendants().reference | %resource.descendants().as(canonical) | %resource.descendants().as(uri) | %resource.descendants().as(url))) or descendants().where(reference = '#').exists() or descendants().where(as(canonical) = '#').exists() or descendants().where(as(canonical) = '#').exists()).not()).trace('unmatched', id).empty()",
            "xpath": "not(exists(for $id in f:contained/*/f:id/@value return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))",
            "source": "http://hl7.org/fhir/StructureDefinition/DomainResource"
          },
          {
            "key": "dom-4",
            "severity": "error",
            "human": "If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated",
            "expression": "contained.meta.versionId.empty() and contained.meta.lastUpdated.empty()",
            "xpath": "not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))",
            "source": "http://hl7.org/fhir/StructureDefinition/DomainResource"
          },
          {
            "key": "dom-5",
            "severity": "error",
            "human": "If a resource is contained in another resource, it SHALL NOT have a security label",
            "expression": "contained.meta.security.empty()",
            "xpath": "not(exists(f:contained/*/f:meta/f:security))",
            "source": "http://hl7.org/fhir/StructureDefinition/DomainResource"
          },
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice",
                "valueBoolean": true
              },
              {
                "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice-explanation",
                "valueMarkdown": "When a resource has no narrative, only systems that fully understand the data can display the resource to a human safely. Including a human readable representation in the resource makes for a much more robust eco-system and cheaper handling of resources by intermediary systems. Some ecosystems restrict distribution of resources to only those systems that do fully understand the resources, and as a consequence implementers may believe that the narrative is superfluous. However experience shows that such eco-systems often open up to new participants over time."
              }
            ],
            "key": "dom-6",
            "severity": "warning",
            "human": "A resource should have narrative for robust management",
            "expression": "text.`div`.exists()",
            "xpath": "exists(f:text/h:div)",
            "source": "http://hl7.org/fhir/StructureDefinition/DomainResource"
          },
          {
            "key": "prr-1",
            "severity": "error",
            "human": "orderDetail SHALL only be present if code is present",
            "expression": "orderDetail.empty() or code.exists()",
            "xpath": "exists(f:code) or not(exists(f:orderDetail))",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "Entity. Role, or Act"
          },
          {
            "identity": "workflow",
            "map": "Request"
          },
          {
            "identity": "v2",
            "map": "ORC"
          },
          {
            "identity": "rim",
            "map": "Act[moodCode<=INT]"
          }
        ]
      },
      {
        "id": "ServiceRequest.id",
        "path": "ServiceRequest.id",
        "short": "Logical id of this artifact",
        "definition": "The logical id of the resource, as used in the URL for the resource. Once assigned, this value never changes.",
        "comment": "The only time that a resource does not have an id is when it is being submitted to the server using a create operation.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Resource.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "id"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": true
      },
      {
        "id": "ServiceRequest.meta",
        "path": "ServiceRequest.meta",
        "short": "Metadata about the resource",
        "definition": "The metadata about the resource. This is content that is maintained by the infrastructure. Changes to the content might not always be associated with version changes to the resource.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Resource.meta",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Meta"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true
      },
      {
        "id": "ServiceRequest.implicitRules",
        "path": "ServiceRequest.implicitRules",
        "short": "A set of rules under which this content was created",
        "definition": "A reference to a set of rules that were followed when the resource was constructed, and which must be understood when processing the content. Often, this is a reference to an implementation guide that defines the special rules along with other profiles etc.",
        "comment": "Asserting this rule set restricts the content to be only understood by a limited set of trading partners. This inherently limits the usefulness of the data in the long term. However, the existing health eco-system is highly fractured, and not yet ready to define, collect, and exchange data in a generally computable sense. Wherever possible, implementers and/or specification writers should avoid using this element. Often, when used, the URL is a reference to an implementation guide that defines these special rules as part of it's narrative along with other profiles, value sets, etc.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Resource.implicitRules",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "uri"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": true,
        "isModifierReason": "This element is labeled as a modifier because the implicit rules may provide additional knowledge about the resource that modifies it's meaning or interpretation",
        "isSummary": true
      },
      {
        "id": "ServiceRequest.language",
        "path": "ServiceRequest.language",
        "short": "Language of the resource content",
        "definition": "The base language in which the resource is written.",
        "comment": "Language is provided to support indexing and accessibility (typically, services such as text to speech use the language tag). The html language tag in the narrative applies  to the narrative. The language tag on the resource may be used to specify the language of other presentations generated from the data in the resource. Not all the content has to be in the base language. The Resource.language should not be assumed to apply to the narrative automatically. If a language is specified, it should it also be specified on the div element in the html (see rules in HTML5 for information about the relationship between xml:lang and the html lang attribute).",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Resource.language",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-maxValueSet",
              "valueCanonical": "http://hl7.org/fhir/ValueSet/all-languages"
            },
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "Language"
            },
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean": true
            }
          ],
          "strength": "preferred",
          "description": "A human language.",
          "valueSet": "http://hl7.org/fhir/ValueSet/languages"
        }
      },
      {
        "id": "ServiceRequest.text",
        "path": "ServiceRequest.text",
        "short": "Text summary of the resource, for human interpretation",
        "definition": "A human-readable narrative that contains a summary of the resource and can be used to represent the content of the resource to a human. The narrative need not encode all the structured data, but is required to contain sufficient detail to make it \"clinically safe\" for a human to just read the narrative. Resource definitions may define what content should be represented in the narrative to ensure clinical safety.",
        "comment": "Contained resources do not have narrative. Resources that are not contained SHOULD have a narrative. In some cases, a resource may only have text with little or no additional discrete data (as long as all minOccurs=1 elements are satisfied).  This may be necessary for data from legacy systems where information is captured as a \"text blob\" or where text is additionally entered raw or narrated and encoded information is added later.",
        "alias": [
          "narrative",
          "html",
          "xhtml",
          "display"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "DomainResource.text",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Narrative"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "Act.text?"
          }
        ]
      },
      {
        "id": "ServiceRequest.contained",
        "path": "ServiceRequest.contained",
        "short": "Contained, inline Resources",
        "definition": "These resources do not have an independent existence apart from the resource that contains them - they cannot be identified independently, and nor can they have their own independent transaction scope.",
        "comment": "This should never be done when the content can be identified properly, as once identification is lost, it is extremely difficult (and context dependent) to restore it again. Contained resources may have profiles and tags In their meta elements, but SHALL NOT have security labels.",
        "alias": [
          "inline resources",
          "anonymous resources",
          "contained resources"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "DomainResource.contained",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Resource"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension",
        "path": "ServiceRequest.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "ordered": false,
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 1,
        "max": "*",
        "base": {
          "path": "DomainResource.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique",
        "path": "ServiceRequest.extension",
        "sliceName": "modalityAndTechnique",
        "short": "Radiotherapy Modality And Technique Extension",
        "definition": "Extension capturing modality and technique of a given radiotherapy procedure.  The allowed combinations of modality and technique are constrained by invariants, one per modality.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "DomainResource.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
            ]
          }
        ],
        "condition": [
          "ele-1"
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          },
          {
            "key": "TechniquesForNeutronBeamModality",
            "severity": "error",
            "human": "Allowed Techniques for Neutron Beam Modality",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '80347004')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (\n          coding.code = '169317000' or coding.code = '1162782007'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForPhotonBeamModality",
            "severity": "error",
            "human": "Allowed Techniques for Photon Beam Modality",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156506007')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists((\n          coding.code = '441799006' or coding.code = '1156530009' or\n          coding.code = '1162782007' or coding.code = '1156526006' or\n          coding.code = '168524008' or coding.code = '1156530009'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForElectronBeamModality",
            "severity": "error",
            "human": "Allowed Techniques for Electron Beam Modality",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '45643008')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (\n          coding.code = '1162782007' or coding.code = '1156526006' or coding.code = '168524008'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForCarbonIonBeamModality",
            "severity": "error",
            "human": "Allowed Techniques for Carbon Ion Beam Modality",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156505006')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (\n          coding.code = '1156529004' or coding.code = '1156528007' or coding.code='USCRS-33517'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForProtonBeamModality",
            "severity": "error",
            "human": "Allowed Techniques for Proton Beam Modality",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '10611004')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (\n          coding.code = '1156529004' or coding.code = '1156528007' or coding.code = 'USCRS-33517'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForInternalRadiotherapyPermanentSeeds",
            "severity": "error",
            "human": "Allowed Techniques for Internal Radiotherapy - Permanent Seeds",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '169359004')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (\n          coding.code = '113120007'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForLowDoseRateUsingTempRadSource",
            "severity": "error",
            "human": "Allowed Techniques for Low Dose Rate Using Temp Radiation Source",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156708005')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (\n          coding.code = '384692006' or coding.code = '113120007' or coding.code = '14473006'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForPulsedDoseRate",
            "severity": "error",
            "human": "Allowed Techniques for Pulsed Dose Rate",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '1156384006')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (\n          coding.code = '384692006' or coding.code = '113120007'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForHighDoseRate",
            "severity": "error",
            "human": "Allowed Techniques for High Dose Rate",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '394902000')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (\n          coding.code = '384692006' or coding.code = '1156382005' or coding.code = '113120007' or coding.code = '1156383000' or coding.code = '384691004' or coding.code = '168524008' or coding.code = '14473006'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForHighDoseRateElectronic",
            "severity": "error",
            "human": "Allowed Techniques for High Dose Rate Electronic",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists(coding.system = 'http://snomed.info/sct' and coding.code = '438629002')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists(coding.system = 'http://snomed.info/sct' and (\n          coding.code = '384692006' or coding.code = '1156382005' or coding.code = '113120007' or coding.code = '384691004' or coding.code = '168524008' or coding.code = '14473006'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          },
          {
            "key": "TechniquesForRadioPharmaceutical",
            "severity": "error",
            "human": "Allowed Techniques for Radiopharmaceutical",
            "expression": "extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').exists() and\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality').value.exists( coding.code = '440252007')\n   implies\n         extension.where(url = 'http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique').value.exists( (\n          coding.code = '16560241000119104' or coding.code = '1156383000' or coding.code = '384692006' or coding.code = '113120007'))",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
          }
        ],
        "mustSupport": true,
        "isModifier": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.id",
        "path": "ServiceRequest.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension",
        "path": "ServiceRequest.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 1,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "modality",
        "short": "Radiotherapy Modality Extension",
        "definition": "Extension capturing a modality of external beam or brachytherapy radiation procedures.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.id",
        "path": "ServiceRequest.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.extension",
        "path": "ServiceRequest.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.extension.id",
        "path": "ServiceRequest.extension.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.extension.extension",
        "path": "ServiceRequest.extension.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Additional content defined by implementations",
        "definition": "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "alias": [
          "extensions",
          "user content"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.extension.url",
        "path": "ServiceRequest.extension.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.extension.value[x]",
        "path": "ServiceRequest.extension.extension.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "base64Binary"
          },
          {
            "code": "boolean"
          },
          {
            "code": "canonical"
          },
          {
            "code": "code"
          },
          {
            "code": "date"
          },
          {
            "code": "dateTime"
          },
          {
            "code": "decimal"
          },
          {
            "code": "id"
          },
          {
            "code": "instant"
          },
          {
            "code": "integer"
          },
          {
            "code": "markdown"
          },
          {
            "code": "oid"
          },
          {
            "code": "positiveInt"
          },
          {
            "code": "string"
          },
          {
            "code": "time"
          },
          {
            "code": "unsignedInt"
          },
          {
            "code": "uri"
          },
          {
            "code": "url"
          },
          {
            "code": "uuid"
          },
          {
            "code": "Address"
          },
          {
            "code": "Age"
          },
          {
            "code": "Annotation"
          },
          {
            "code": "Attachment"
          },
          {
            "code": "CodeableConcept"
          },
          {
            "code": "Coding"
          },
          {
            "code": "ContactPoint"
          },
          {
            "code": "Count"
          },
          {
            "code": "Distance"
          },
          {
            "code": "Duration"
          },
          {
            "code": "HumanName"
          },
          {
            "code": "Identifier"
          },
          {
            "code": "Money"
          },
          {
            "code": "Period"
          },
          {
            "code": "Quantity"
          },
          {
            "code": "Range"
          },
          {
            "code": "Ratio"
          },
          {
            "code": "Reference"
          },
          {
            "code": "SampledData"
          },
          {
            "code": "Signature"
          },
          {
            "code": "Timing"
          },
          {
            "code": "ContactDetail"
          },
          {
            "code": "Contributor"
          },
          {
            "code": "DataRequirement"
          },
          {
            "code": "Expression"
          },
          {
            "code": "ParameterDefinition"
          },
          {
            "code": "RelatedArtifact"
          },
          {
            "code": "TriggerDefinition"
          },
          {
            "code": "UsageContext"
          },
          {
            "code": "Dosage"
          },
          {
            "code": "Meta"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.url",
        "path": "ServiceRequest.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:modality.value[x]",
        "path": "ServiceRequest.extension.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "binding": {
          "strength": "required",
          "valueSet": "http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-modality-vs"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "technique",
        "short": "Radiotherapy Technique Extension",
        "definition": "Extension capturing a technique of external beam or brachytherapy radiation procedures.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.id",
        "path": "ServiceRequest.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.extension",
        "path": "ServiceRequest.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.extension.id",
        "path": "ServiceRequest.extension.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.extension.extension",
        "path": "ServiceRequest.extension.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Additional content defined by implementations",
        "definition": "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "alias": [
          "extensions",
          "user content"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.extension.url",
        "path": "ServiceRequest.extension.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.extension.value[x]",
        "path": "ServiceRequest.extension.extension.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "base64Binary"
          },
          {
            "code": "boolean"
          },
          {
            "code": "canonical"
          },
          {
            "code": "code"
          },
          {
            "code": "date"
          },
          {
            "code": "dateTime"
          },
          {
            "code": "decimal"
          },
          {
            "code": "id"
          },
          {
            "code": "instant"
          },
          {
            "code": "integer"
          },
          {
            "code": "markdown"
          },
          {
            "code": "oid"
          },
          {
            "code": "positiveInt"
          },
          {
            "code": "string"
          },
          {
            "code": "time"
          },
          {
            "code": "unsignedInt"
          },
          {
            "code": "uri"
          },
          {
            "code": "url"
          },
          {
            "code": "uuid"
          },
          {
            "code": "Address"
          },
          {
            "code": "Age"
          },
          {
            "code": "Annotation"
          },
          {
            "code": "Attachment"
          },
          {
            "code": "CodeableConcept"
          },
          {
            "code": "Coding"
          },
          {
            "code": "ContactPoint"
          },
          {
            "code": "Count"
          },
          {
            "code": "Distance"
          },
          {
            "code": "Duration"
          },
          {
            "code": "HumanName"
          },
          {
            "code": "Identifier"
          },
          {
            "code": "Money"
          },
          {
            "code": "Period"
          },
          {
            "code": "Quantity"
          },
          {
            "code": "Range"
          },
          {
            "code": "Ratio"
          },
          {
            "code": "Reference"
          },
          {
            "code": "SampledData"
          },
          {
            "code": "Signature"
          },
          {
            "code": "Timing"
          },
          {
            "code": "ContactDetail"
          },
          {
            "code": "Contributor"
          },
          {
            "code": "DataRequirement"
          },
          {
            "code": "Expression"
          },
          {
            "code": "ParameterDefinition"
          },
          {
            "code": "RelatedArtifact"
          },
          {
            "code": "TriggerDefinition"
          },
          {
            "code": "UsageContext"
          },
          {
            "code": "Dosage"
          },
          {
            "code": "Meta"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.url",
        "path": "ServiceRequest.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-technique",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:technique.value[x]",
        "path": "ServiceRequest.extension.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "binding": {
          "strength": "required",
          "valueSet": "http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-technique-vs"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:radiotherapyEnergyOrIsotope",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "radiotherapyEnergyOrIsotope",
        "short": "Radiotherapy Energy or Isotope",
        "definition": "The radiation energy used for radiotherapy. The energy spectrum is characterized\nby the maximum energy, the maximum accelaration voltage, or the used isotope.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:radiotherapyTreatmentApplicatorType",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "radiotherapyTreatmentApplicatorType",
        "short": "Radiotherapy Treatment Applicator Type",
        "definition": "Radiotherapy Treatment Applicator Type.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.url",
        "path": "ServiceRequest.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.value[x]",
        "path": "ServiceRequest.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "base64Binary"
          },
          {
            "code": "boolean"
          },
          {
            "code": "canonical"
          },
          {
            "code": "code"
          },
          {
            "code": "date"
          },
          {
            "code": "dateTime"
          },
          {
            "code": "decimal"
          },
          {
            "code": "id"
          },
          {
            "code": "instant"
          },
          {
            "code": "integer"
          },
          {
            "code": "markdown"
          },
          {
            "code": "oid"
          },
          {
            "code": "positiveInt"
          },
          {
            "code": "string"
          },
          {
            "code": "time"
          },
          {
            "code": "unsignedInt"
          },
          {
            "code": "uri"
          },
          {
            "code": "url"
          },
          {
            "code": "uuid"
          },
          {
            "code": "Address"
          },
          {
            "code": "Age"
          },
          {
            "code": "Annotation"
          },
          {
            "code": "Attachment"
          },
          {
            "code": "CodeableConcept"
          },
          {
            "code": "Coding"
          },
          {
            "code": "ContactPoint"
          },
          {
            "code": "Count"
          },
          {
            "code": "Distance"
          },
          {
            "code": "Duration"
          },
          {
            "code": "HumanName"
          },
          {
            "code": "Identifier"
          },
          {
            "code": "Money"
          },
          {
            "code": "Period"
          },
          {
            "code": "Quantity"
          },
          {
            "code": "Range"
          },
          {
            "code": "Ratio"
          },
          {
            "code": "Reference"
          },
          {
            "code": "SampledData"
          },
          {
            "code": "Signature"
          },
          {
            "code": "Timing"
          },
          {
            "code": "ContactDetail"
          },
          {
            "code": "Contributor"
          },
          {
            "code": "DataRequirement"
          },
          {
            "code": "Expression"
          },
          {
            "code": "ParameterDefinition"
          },
          {
            "code": "RelatedArtifact"
          },
          {
            "code": "TriggerDefinition"
          },
          {
            "code": "UsageContext"
          },
          {
            "code": "Dosage"
          },
          {
            "code": "Meta"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyFractionsPrescribed",
        "path": "ServiceRequest.extension",
        "sliceName": "radiotherapyFractionsPrescribed",
        "short": "Number of Prescribed Fractions",
        "definition": "The number of prescribed fractions in this scope.\nThis extension SHALL only be present if the treatment is structured as countable fractions, for example in a Radiotherapy Phase Prescription.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "DomainResource.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-prescribed"
            ]
          }
        ],
        "condition": [
          "ele-1"
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume",
        "path": "ServiceRequest.extension",
        "sliceName": "radiotherapyDosePrescribedToVolume",
        "short": "Prescribed Dose to a Dose Reference",
        "definition": "Dose parameters prescribed for one radiotherapy volume.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "DomainResource.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
            ]
          }
        ],
        "condition": [
          "ele-1"
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.id",
        "path": "ServiceRequest.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension",
        "path": "ServiceRequest.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 1,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:volume",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "volume",
        "short": "Volume targeted by the prescribed dose",
        "definition": "A BodyStructure resource representing the body structure to be treated, for example, Chest Wall Lymph Nodes.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:volume.id",
        "path": "ServiceRequest.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:volume.extension",
        "path": "ServiceRequest.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:volume.url",
        "path": "ServiceRequest.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "volume",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:volume.value[x]",
        "path": "ServiceRequest.extension.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-volume"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractionDose",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "fractionDose",
        "short": "Radiation Dose Prescribed per Fraction",
        "definition": "The dose prescribed per fraction to this volume.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractionDose.id",
        "path": "ServiceRequest.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractionDose.extension",
        "path": "ServiceRequest.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractionDose.url",
        "path": "ServiceRequest.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "fractionDose",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractionDose.value[x]",
        "path": "ServiceRequest.extension.extension.value[x]",
        "slicing": {
          "discriminator": [
            {
              "type": "type",
              "path": "$this"
            }
          ],
          "ordered": false,
          "rules": "closed"
        },
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Quantity"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractionDose.value[x]:valueQuantity",
        "path": "ServiceRequest.extension.extension.value[x]",
        "sliceName": "valueQuantity",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Quantity"
          }
        ],
        "patternQuantity": {
          "system": "http://unitsofmeasure.org",
          "code": "cGy"
        },
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:totalDose",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "totalDose",
        "short": "Total Radiation Dose Prescribed",
        "definition": "The total dose prescribed to this volume within the scope of this ServiceRequest.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:totalDose.id",
        "path": "ServiceRequest.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:totalDose.extension",
        "path": "ServiceRequest.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:totalDose.url",
        "path": "ServiceRequest.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "totalDose",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:totalDose.value[x]",
        "path": "ServiceRequest.extension.extension.value[x]",
        "slicing": {
          "discriminator": [
            {
              "type": "type",
              "path": "$this"
            }
          ],
          "ordered": false,
          "rules": "closed"
        },
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Quantity"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:totalDose.value[x]:valueQuantity",
        "path": "ServiceRequest.extension.extension.value[x]",
        "sliceName": "valueQuantity",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Quantity"
          }
        ],
        "patternQuantity": {
          "system": "http://unitsofmeasure.org",
          "code": "cGy"
        },
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractions",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "fractions",
        "short": "Not used in this profile. In a Treatment Plan, all volumes are involved in all fractions.",
        "definition": "Not used in this profile. In a Treatment Plan, all volumes are involved in all fractions and the number of fractions is defined in extension radiotherapyFractionsPrescribed.",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractions.id",
        "path": "ServiceRequest.extension.extension.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractions.extension",
        "path": "ServiceRequest.extension.extension.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Extension",
        "definition": "An Extension",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractions.url",
        "path": "ServiceRequest.extension.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "fractions",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractions.value[x]",
        "path": "ServiceRequest.extension.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "positiveInt"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.url",
        "path": "ServiceRequest.extension.url",
        "representation": [
          "xmlAttr"
        ],
        "short": "identifies the meaning of the extension",
        "definition": "Source of the definition for the extension code - a logical name or a URL.",
        "comment": "The definition may point directly to a computable or human-readable definition of the extensibility codes, or it may be a logical URI as declared in some other specification. The definition SHALL be a URI for the Structure Definition defining the extension.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Extension.url",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "uri"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "fixedUri": "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume",
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.value[x]",
        "path": "ServiceRequest.extension.value[x]",
        "short": "Value of extension",
        "definition": "Value of extension - must be one of a constrained set of the data types (see [Extensibility](http://hl7.org/fhir/R4/extensibility.html) for a list).",
        "min": 0,
        "max": "0",
        "base": {
          "path": "Extension.value[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "base64Binary"
          },
          {
            "code": "boolean"
          },
          {
            "code": "canonical"
          },
          {
            "code": "code"
          },
          {
            "code": "date"
          },
          {
            "code": "dateTime"
          },
          {
            "code": "decimal"
          },
          {
            "code": "id"
          },
          {
            "code": "instant"
          },
          {
            "code": "integer"
          },
          {
            "code": "markdown"
          },
          {
            "code": "oid"
          },
          {
            "code": "positiveInt"
          },
          {
            "code": "string"
          },
          {
            "code": "time"
          },
          {
            "code": "unsignedInt"
          },
          {
            "code": "uri"
          },
          {
            "code": "url"
          },
          {
            "code": "uuid"
          },
          {
            "code": "Address"
          },
          {
            "code": "Age"
          },
          {
            "code": "Annotation"
          },
          {
            "code": "Attachment"
          },
          {
            "code": "CodeableConcept"
          },
          {
            "code": "Coding"
          },
          {
            "code": "ContactPoint"
          },
          {
            "code": "Count"
          },
          {
            "code": "Distance"
          },
          {
            "code": "Duration"
          },
          {
            "code": "HumanName"
          },
          {
            "code": "Identifier"
          },
          {
            "code": "Money"
          },
          {
            "code": "Period"
          },
          {
            "code": "Quantity"
          },
          {
            "code": "Range"
          },
          {
            "code": "Ratio"
          },
          {
            "code": "Reference"
          },
          {
            "code": "SampledData"
          },
          {
            "code": "Signature"
          },
          {
            "code": "Timing"
          },
          {
            "code": "ContactDetail"
          },
          {
            "code": "Contributor"
          },
          {
            "code": "DataRequirement"
          },
          {
            "code": "Expression"
          },
          {
            "code": "ParameterDefinition"
          },
          {
            "code": "RelatedArtifact"
          },
          {
            "code": "TriggerDefinition"
          },
          {
            "code": "UsageContext"
          },
          {
            "code": "Dosage"
          },
          {
            "code": "Meta"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.extension:radiotherapyReasonForRevisionOrAdaptation",
        "path": "ServiceRequest.extension",
        "sliceName": "radiotherapyReasonForRevisionOrAdaptation",
        "short": "Reason for Revision or Adaptation",
        "definition": "The reason a planned or prescribed radiotherapy treatment was revised, superceded, or adapted.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "DomainResource.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotheraphy-reason-for-revision-or-adaptation"
            ]
          }
        ],
        "condition": [
          "ele-1"
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), 'value')])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "mustSupport": true,
        "isModifier": false
      },
      {
        "id": "ServiceRequest.modifierExtension",
        "path": "ServiceRequest.modifierExtension",
        "short": "Extensions that cannot be ignored",
        "definition": "May be used to represent additional information that is not part of the basic definition of the resource and that modifies the understanding of the element that contains it and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer is allowed to define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.\n\nModifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "requirements": "Modifier extensions allow for extensions that *cannot* be safely ignored to be clearly distinguished from the vast majority of extensions which can be safely ignored.  This promotes interoperability by eliminating the need for implementers to prohibit the presence of extensions. For further information, see the [definition of modifier extensions](http://hl7.org/fhir/R4/extensibility.html#modifierExtension).",
        "alias": [
          "extensions",
          "user content"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "DomainResource.modifierExtension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": true,
        "isModifierReason": "Modifier extensions are expected to modify the meaning or interpretation of the resource that contains them",
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier",
        "path": "ServiceRequest.identifier",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "use"
            }
          ],
          "description": "At least one display name and and one DICOM style UID as technical globally unqiue key",
          "rules": "open"
        },
        "short": "Identifiers assigned to this order",
        "definition": "SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM.",
        "comment": "The identifier.type element is used to distinguish between the identifiers assigned by the orderer (known as the 'Placer' in HL7 v2) and the producer of the observations in response to the order (known as the 'Filler' in HL7 v2).  For further discussion and examples see the resource notes section below.",
        "min": 2,
        "max": "*",
        "base": {
          "path": "ServiceRequest.identifier",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Identifier"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.identifier"
          },
          {
            "identity": "w5",
            "map": "FiveWs.identifier"
          },
          {
            "identity": "v2",
            "map": "ORC.2, ORC.3, RF1-6 / RF1-11,"
          },
          {
            "identity": "rim",
            "map": ".identifier"
          },
          {
            "identity": "quick",
            "map": "ClinicalStatement.identifier"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName",
        "path": "ServiceRequest.identifier",
        "sliceName": "displayName",
        "short": "The name that is displayed to the user.",
        "definition": "Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.",
        "comment": "The identifier.type element is used to distinguish between the identifiers assigned by the orderer (known as the 'Placer' in HL7 v2) and the producer of the observations in response to the order (known as the 'Filler' in HL7 v2).  For further discussion and examples see the resource notes section below.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "ServiceRequest.identifier",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Identifier"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.identifier"
          },
          {
            "identity": "w5",
            "map": "FiveWs.identifier"
          },
          {
            "identity": "v2",
            "map": "ORC.2, ORC.3, RF1-6 / RF1-11,"
          },
          {
            "identity": "rim",
            "map": ".identifier"
          },
          {
            "identity": "quick",
            "map": "ClinicalStatement.identifier"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.id",
        "path": "ServiceRequest.identifier.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.extension",
        "path": "ServiceRequest.identifier.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Additional content defined by implementations",
        "definition": "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "alias": [
          "extensions",
          "user content"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.use",
        "path": "ServiceRequest.identifier.use",
        "short": "usual | official | temp | secondary | old (If known)",
        "definition": "The purpose of this identifier.",
        "comment": "Applications can assume that an identifier is permanent unless it explicitly says that it is temporary.",
        "requirements": "Allows the appropriate identifier for a particular context of use to be selected from among a set of identifiers.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Identifier.use",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "patternCode": "usual",
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": true,
        "isModifierReason": "This is labeled as \"Is Modifier\" because applications should not mistake a temporary id for a permanent one.",
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "IdentifierUse"
            }
          ],
          "strength": "required",
          "description": "Identifies the purpose for this identifier, if known .",
          "valueSet": "http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"
        },
        "mapping": [
          {
            "identity": "v2",
            "map": "N/A"
          },
          {
            "identity": "rim",
            "map": "Role.code or implied by context"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.type",
        "path": "ServiceRequest.identifier.type",
        "short": "Description of identifier",
        "definition": "A coded type for the identifier that can be used to determine which identifier to use for a specific purpose.",
        "comment": "This element deals only with general categories of identifiers.  It SHOULD not be used for codes that correspond 1..1 with the Identifier.system. Some identifiers may fall into multiple categories due to common usage.   Where the system is known, a type is unnecessary because the type is always part of the system definition. However systems often need to handle identifiers where the system is not known. There is not a 1:1 relationship between type and system, since many different systems have the same type.",
        "requirements": "Allows users to make use of identifiers when the identifier system is not known.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Identifier.type",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "IdentifierType"
            },
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean": true
            }
          ],
          "strength": "extensible",
          "description": "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.",
          "valueSet": "http://hl7.org/fhir/ValueSet/identifier-type"
        },
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.5"
          },
          {
            "identity": "rim",
            "map": "Role.code or implied by context"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.system",
        "path": "ServiceRequest.identifier.system",
        "short": "The namespace for the identifier value",
        "definition": "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.",
        "comment": "Identifier.system is always case sensitive.",
        "requirements": "There are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Identifier.system",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "uri"
          }
        ],
        "example": [
          {
            "label": "General",
            "valueUri": "http://www.acme.com/identifiers/patient"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.4 / EI-2-4"
          },
          {
            "identity": "rim",
            "map": "II.root or Role.id.root"
          },
          {
            "identity": "servd",
            "map": "./IdentifierType"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.value",
        "path": "ServiceRequest.identifier.value",
        "short": "The value that is unique",
        "definition": "The portion of the identifier typically relevant to the user and which is unique within the context of the system.",
        "comment": "If the value is a full URI, then the system SHALL be urn:ietf:rfc:3986.  The value's primary purpose is computational mapping.  As a result, it may be normalized for comparison purposes (e.g. removing non-significant whitespace, dashes, etc.)  A value formatted for human display can be conveyed using the [Rendered Value extension](http://hl7.org/fhir/R4/extension-rendered-value.html). Identifier.value is to be treated as case sensitive unless knowledge of the Identifier.system allows the processer to be confident that non-case-sensitive processing is safe.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Identifier.value",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "string"
          }
        ],
        "example": [
          {
            "label": "General",
            "valueString": "123456"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.1 / EI.1"
          },
          {
            "identity": "rim",
            "map": "II.extension or II.root if system indicates OID or GUID (Or Role.id.extension or root)"
          },
          {
            "identity": "servd",
            "map": "./Value"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.period",
        "path": "ServiceRequest.identifier.period",
        "short": "Time period when id is/was valid for use",
        "definition": "Time period during which identifier is/was valid for use.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Identifier.period",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Period"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.7 + CX.8"
          },
          {
            "identity": "rim",
            "map": "Role.effectiveTime or implied by context"
          },
          {
            "identity": "servd",
            "map": "./StartDate and ./EndDate"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:displayName.assigner",
        "path": "ServiceRequest.identifier.assigner",
        "short": "Organization that issued id (may be just text)",
        "definition": "Organization that issued/manages the identifier.",
        "comment": "The Identifier.assigner may omit the .reference element and only contain a .display element reflecting the name or other textual information about the assigning organization.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Identifier.assigner",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Organization"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.4 / (CX.4,CX.9,CX.10)"
          },
          {
            "identity": "rim",
            "map": "II.assigningAuthorityName but note that this is an improper use by the definition of the field.  Also Role.scoper"
          },
          {
            "identity": "servd",
            "map": "./IdentifierIssuingAuthority"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official",
        "path": "ServiceRequest.identifier",
        "sliceName": "official",
        "short": "A business identifier for the request or procedure, which is independent of its FHIR representation, such as a GUID or DICOM UID.",
        "definition": "Identifiers assigned to this order instance by the orderer and/or the receiver and/or order fulfiller.",
        "comment": "The identifier.type element is used to distinguish between the identifiers assigned by the orderer (known as the 'Placer' in HL7 v2) and the producer of the observations in response to the order (known as the 'Filler' in HL7 v2).  For further discussion and examples see the resource notes section below.",
        "min": 1,
        "max": "*",
        "base": {
          "path": "ServiceRequest.identifier",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Identifier"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.identifier"
          },
          {
            "identity": "w5",
            "map": "FiveWs.identifier"
          },
          {
            "identity": "v2",
            "map": "ORC.2, ORC.3, RF1-6 / RF1-11,"
          },
          {
            "identity": "rim",
            "map": ".identifier"
          },
          {
            "identity": "quick",
            "map": "ClinicalStatement.identifier"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.id",
        "path": "ServiceRequest.identifier.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.extension",
        "path": "ServiceRequest.identifier.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Additional content defined by implementations",
        "definition": "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "alias": [
          "extensions",
          "user content"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.use",
        "path": "ServiceRequest.identifier.use",
        "short": "usual | official | temp | secondary | old (If known)",
        "definition": "The purpose of this identifier.",
        "comment": "Applications can assume that an identifier is permanent unless it explicitly says that it is temporary.",
        "requirements": "Allows the appropriate identifier for a particular context of use to be selected from among a set of identifiers.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Identifier.use",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "patternCode": "official",
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": true,
        "isModifierReason": "This is labeled as \"Is Modifier\" because applications should not mistake a temporary id for a permanent one.",
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "IdentifierUse"
            }
          ],
          "strength": "required",
          "description": "Identifies the purpose for this identifier, if known .",
          "valueSet": "http://hl7.org/fhir/ValueSet/identifier-use|4.0.1"
        },
        "mapping": [
          {
            "identity": "v2",
            "map": "N/A"
          },
          {
            "identity": "rim",
            "map": "Role.code or implied by context"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.type",
        "path": "ServiceRequest.identifier.type",
        "short": "Description of identifier",
        "definition": "A coded type for the identifier that can be used to determine which identifier to use for a specific purpose.",
        "comment": "This element deals only with general categories of identifiers.  It SHOULD not be used for codes that correspond 1..1 with the Identifier.system. Some identifiers may fall into multiple categories due to common usage.   Where the system is known, a type is unnecessary because the type is always part of the system definition. However systems often need to handle identifiers where the system is not known. There is not a 1:1 relationship between type and system, since many different systems have the same type.",
        "requirements": "Allows users to make use of identifiers when the identifier system is not known.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Identifier.type",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "IdentifierType"
            },
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding",
              "valueBoolean": true
            }
          ],
          "strength": "extensible",
          "description": "A coded type for an identifier that can be used to determine which identifier to use for a specific purpose.",
          "valueSet": "http://hl7.org/fhir/ValueSet/identifier-type"
        },
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.5"
          },
          {
            "identity": "rim",
            "map": "Role.code or implied by context"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.system",
        "path": "ServiceRequest.identifier.system",
        "short": "The namespace for the identifier value",
        "definition": "Establishes the namespace for the value - that is, a URL that describes a set values that are unique.",
        "comment": "Identifier.system is always case sensitive.",
        "requirements": "There are many sets  of identifiers.  To perform matching of two identifiers, we need to know what set we're dealing with. The system identifies a particular set of unique identifiers.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Identifier.system",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "uri"
          }
        ],
        "example": [
          {
            "label": "General",
            "valueUri": "http://www.acme.com/identifiers/patient"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.4 / EI-2-4"
          },
          {
            "identity": "rim",
            "map": "II.root or Role.id.root"
          },
          {
            "identity": "servd",
            "map": "./IdentifierType"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.value",
        "path": "ServiceRequest.identifier.value",
        "short": "The value that is unique",
        "definition": "The portion of the identifier typically relevant to the user and which is unique within the context of the system.",
        "comment": "If the value is a full URI, then the system SHALL be urn:ietf:rfc:3986.  The value's primary purpose is computational mapping.  As a result, it may be normalized for comparison purposes (e.g. removing non-significant whitespace, dashes, etc.)  A value formatted for human display can be conveyed using the [Rendered Value extension](http://hl7.org/fhir/R4/extension-rendered-value.html). Identifier.value is to be treated as case sensitive unless knowledge of the Identifier.system allows the processer to be confident that non-case-sensitive processing is safe.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Identifier.value",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "string"
          }
        ],
        "example": [
          {
            "label": "General",
            "valueString": "123456"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.1 / EI.1"
          },
          {
            "identity": "rim",
            "map": "II.extension or II.root if system indicates OID or GUID (Or Role.id.extension or root)"
          },
          {
            "identity": "servd",
            "map": "./Value"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.period",
        "path": "ServiceRequest.identifier.period",
        "short": "Time period when id is/was valid for use",
        "definition": "Time period during which identifier is/was valid for use.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Identifier.period",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Period"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.7 + CX.8"
          },
          {
            "identity": "rim",
            "map": "Role.effectiveTime or implied by context"
          },
          {
            "identity": "servd",
            "map": "./StartDate and ./EndDate"
          }
        ]
      },
      {
        "id": "ServiceRequest.identifier:official.assigner",
        "path": "ServiceRequest.identifier.assigner",
        "short": "Organization that issued id (may be just text)",
        "definition": "Organization that issued/manages the identifier.",
        "comment": "The Identifier.assigner may omit the .reference element and only contain a .display element reflecting the name or other textual information about the assigning organization.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Identifier.assigner",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Organization"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "CX.4 / (CX.4,CX.9,CX.10)"
          },
          {
            "identity": "rim",
            "map": "II.assigningAuthorityName but note that this is an improper use by the definition of the field.  Also Role.scoper"
          },
          {
            "identity": "servd",
            "map": "./IdentifierIssuingAuthority"
          }
        ]
      },
      {
        "id": "ServiceRequest.instantiatesCanonical",
        "path": "ServiceRequest.instantiatesCanonical",
        "short": "Instantiates FHIR protocol or definition",
        "definition": "The URL pointing to a FHIR-defined protocol, guideline, orderset or other definition that is adhered to in whole or in part by this ServiceRequest.",
        "comment": "Note: This is a business identifier, not a resource identifier (see [discussion](http://hl7.org/fhir/R4/resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and a Person resource instance might share the same social insurance number.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.instantiatesCanonical",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "canonical",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/ActivityDefinition",
              "http://hl7.org/fhir/StructureDefinition/PlanDefinition"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.instantiatesCanonical"
          },
          {
            "identity": "v2",
            "map": "Varies by domain"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=DEFN].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.instantiatesUri",
        "path": "ServiceRequest.instantiatesUri",
        "short": "Instantiates external protocol or definition",
        "definition": "The URL pointing to an externally maintained protocol, guideline, orderset or other definition that is adhered to in whole or in part by this ServiceRequest.",
        "comment": "This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.instantiatesUri",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "uri"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.instantiatesUri"
          },
          {
            "identity": "v2",
            "map": "Varies by domain"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=DEFN].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.basedOn",
        "path": "ServiceRequest.basedOn",
        "slicing": {
          "discriminator": [
            {
              "type": "profile",
              "path": "$this.resolve()"
            }
          ],
          "description": "Slicing based on the profile",
          "rules": "open"
        },
        "short": "What request fulfills",
        "definition": "Plan/proposal/order fulfilled by this request.",
        "alias": [
          "fulfills"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.basedOn",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/CarePlan",
              "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
              "http://hl7.org/fhir/StructureDefinition/MedicationRequest"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.basedOn"
          },
          {
            "identity": "v2",
            "map": "ORC.8 (plus others)"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=FLFS].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.basedOn:course-prescription",
        "path": "ServiceRequest.basedOn",
        "sliceName": "course-prescription",
        "short": "Radiotherapy Course Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases).",
        "definition": "Plan/proposal/order fulfilled by this request.",
        "alias": [
          "fulfills"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.basedOn",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-prescription"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.basedOn"
          },
          {
            "identity": "v2",
            "map": "ORC.8 (plus others)"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=FLFS].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.basedOn:phase-prescription",
        "path": "ServiceRequest.basedOn",
        "sliceName": "phase-prescription",
        "short": "Radiotherapy Phase Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases).",
        "definition": "Plan/proposal/order fulfilled by this request.",
        "alias": [
          "fulfills"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.basedOn",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-phase-prescription"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.basedOn"
          },
          {
            "identity": "v2",
            "map": "ORC.8 (plus others)"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=FLFS].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.replaces",
        "path": "ServiceRequest.replaces",
        "short": "Previous retired prescription that is replaced by this prescription",
        "definition": "The request takes the place of the referenced completed or terminated request(s).",
        "alias": [
          "supersedes",
          "prior",
          "renewed order"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.replaces",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.replaces"
          },
          {
            "identity": "v2",
            "map": "Handled by message location of ORC (ORC.1=RO or RU)"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=RPLC].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.requisition",
        "path": "ServiceRequest.requisition",
        "short": "Composite Request ID",
        "definition": "A shared identifier common to all service requests that were authorized more or less simultaneously by a single author, representing the composite or group identifier.",
        "comment": "Requests are linked either by a \"basedOn\" relationship (i.e. one request is fulfilling another) or by having a common requisition. Requests that are part of the same requisition are generally treated independently from the perspective of changing their state or maintaining them after initial creation.",
        "requirements": "Some business processes need to know if multiple items were ordered as part of the same \"requisition\" for billing or other purposes.",
        "alias": [
          "grouperId",
          "groupIdentifier"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.requisition",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Identifier"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.groupIdentifier"
          },
          {
            "identity": "v2",
            "map": "ORC.4"
          },
          {
            "identity": "rim",
            "map": ".inboundRelationship(typeCode=COMP].source[moodCode=INT].identifier"
          }
        ]
      },
      {
        "id": "ServiceRequest.status",
        "path": "ServiceRequest.status",
        "short": "draft | active | on-hold | revoked | completed | entered-in-error | unknown",
        "definition": "The status of the order.",
        "comment": "The status is generally fully in the control of the requester - they determine whether the order is draft or active and, after it has been activated, competed, cancelled or suspended. States relating to the activities of the performer are reflected on either the corresponding event (see [Event Pattern](event.html) for general discussion) or using the [Task](http://hl7.org/fhir/R4/task.html) resource.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "ServiceRequest.status",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": true,
        "isModifierReason": "This element is labeled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid",
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestStatus"
            }
          ],
          "strength": "required",
          "description": "The status of a service order.",
          "valueSet": "http://hl7.org/fhir/ValueSet/request-status|4.0.1"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.status"
          },
          {
            "identity": "w5",
            "map": "FiveWs.status"
          },
          {
            "identity": "v2",
            "map": "ORC.5,RF1-1"
          },
          {
            "identity": "rim",
            "map": ".status"
          },
          {
            "identity": "quick",
            "map": "Action.currentStatus"
          }
        ]
      },
      {
        "id": "ServiceRequest.intent",
        "path": "ServiceRequest.intent",
        "short": "proposal | plan | directive | order | original-order | reflex-order | filler-order | instance-order | option",
        "definition": "Whether the request is a proposal, plan, an original order or a reflex order.",
        "comment": "This element is labeled as a modifier because the intent alters when and how the resource is actually applicable.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "ServiceRequest.intent",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "patternCode": "original-order",
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": true,
        "isModifierReason": "This element changes the interpretation of all descriptive attributes. For example \"the time the request is recommended to occur\" vs. \"the time the request is authorized to occur\" or \"who is recommended to perform the request\" vs. \"who is authorized to perform the request",
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestIntent"
            }
          ],
          "strength": "required",
          "description": "The kind of service request.",
          "valueSet": "http://hl7.org/fhir/ValueSet/request-intent|4.0.1"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.intent"
          },
          {
            "identity": "w5",
            "map": "FiveWs.class"
          },
          {
            "identity": "v2",
            "map": "N/A"
          },
          {
            "identity": "rim",
            "map": ".moodCode (nuances beyond PRP/PLAN/RQO would need to be elsewhere)"
          }
        ]
      },
      {
        "id": "ServiceRequest.category",
        "path": "ServiceRequest.category",
        "slicing": {
          "discriminator": [
            {
              "type": "pattern",
              "path": "$this"
            }
          ],
          "description": "Slicing requires the given value but allows additional categories",
          "rules": "open"
        },
        "short": "Classification of service",
        "definition": "A code that classifies the service for searching, sorting and display purposes (e.g. \"Surgical Procedure\").",
        "comment": "There may be multiple axis of categorization depending on the context or use case for retrieving or displaying the resource.  The level of granularity is defined by the category concepts in the value set.",
        "requirements": "Used for filtering what service request are retrieved and displayed.",
        "min": 1,
        "max": "*",
        "base": {
          "path": "ServiceRequest.category",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestCategory"
            }
          ],
          "strength": "example",
          "description": "Classification of the requested service.",
          "valueSet": "http://hl7.org/fhir/ValueSet/servicerequest-category"
        },
        "mapping": [
          {
            "identity": "w5",
            "map": "FiveWs.class"
          },
          {
            "identity": "v2",
            "map": "RF1-5"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=\"COMP].target[classCode=\"LIST\", moodCode=\"INT\"].code"
          }
        ]
      },
      {
        "id": "ServiceRequest.category:required",
        "path": "ServiceRequest.category",
        "sliceName": "required",
        "short": "Classification of service",
        "definition": "A code that classifies the service for searching, sorting and display purposes (e.g. \"Surgical Procedure\").",
        "comment": "There may be multiple axis of categorization depending on the context or use case for retrieving or displaying the resource.  The level of granularity is defined by the category concepts in the value set.",
        "requirements": "Used for filtering what service request are retrieved and displayed.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "ServiceRequest.category",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "patternCodeableConcept": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "108290001",
              "display": "Radiation oncology AND/OR radiotherapy"
            }
          ]
        },
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestCategory"
            }
          ],
          "strength": "example",
          "description": "Classification of the requested service.",
          "valueSet": "http://hl7.org/fhir/ValueSet/servicerequest-category"
        },
        "mapping": [
          {
            "identity": "w5",
            "map": "FiveWs.class"
          },
          {
            "identity": "v2",
            "map": "RF1-5"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=\"COMP].target[classCode=\"LIST\", moodCode=\"INT\"].code"
          }
        ]
      },
      {
        "id": "ServiceRequest.priority",
        "path": "ServiceRequest.priority",
        "short": "routine | urgent | asap | stat",
        "definition": "Indicates how quickly the ServiceRequest should be addressed with respect to other requests.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.priority",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "meaningWhenMissing": "If missing, this task should be performed with normal priority",
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestPriority"
            }
          ],
          "strength": "required",
          "description": "Identifies the level of importance to be assigned to actioning the request.",
          "valueSet": "http://hl7.org/fhir/ValueSet/request-priority|4.0.1"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.priority"
          },
          {
            "identity": "w5",
            "map": "FiveWs.grade"
          },
          {
            "identity": "v2",
            "map": "TQ1.9, RF1-2"
          },
          {
            "identity": "rim",
            "map": ".priorityCode"
          }
        ]
      },
      {
        "id": "ServiceRequest.doNotPerform",
        "path": "ServiceRequest.doNotPerform",
        "short": "True if service/procedure should not be performed",
        "definition": "Set this to true if the record is saying that the service/procedure should NOT be performed.",
        "comment": "In general, only the code and timeframe will be present, though occasional additional qualifiers such as body site or even performer could be included to narrow the scope of the prohibition.  If the ServiceRequest.code and ServiceRequest.doNotPerform both contain negation, that will reinforce prohibition and should not have a double negative interpretation.",
        "requirements": "Used for do not ambulate, do not elevate head of bed, do not flush NG tube, do not take blood pressure on a certain arm, etc.",
        "min": 0,
        "max": "0",
        "base": {
          "path": "ServiceRequest.doNotPerform",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "boolean"
          }
        ],
        "meaningWhenMissing": "If missing, the request is a positive request e.g. \"do perform\"",
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": true,
        "isModifierReason": "If true this element negates the specified action. For Example,  instead of a request for a procedure, it is a request for the procedure to not occur.",
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.doNotPerform"
          },
          {
            "identity": "rim",
            "map": ".actionNegationInd"
          }
        ]
      },
      {
        "id": "ServiceRequest.code",
        "path": "ServiceRequest.code",
        "short": "What is being requested/ordered",
        "definition": "A code that identifies a particular service (i.e., procedure, diagnostic investigation, or panel of investigations) that have been requested.",
        "comment": "Many laboratory and radiology procedure codes embed the specimen/organ system in the test order name, for example,  serum or serum/plasma glucose, or a chest x-ray. The specimen might not be recorded separately from the test code.",
        "alias": [
          "service requested"
        ],
        "min": 1,
        "max": "1",
        "base": {
          "path": "ServiceRequest.code",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "patternCodeableConcept": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/us/codex-radiation-therapy/CodeSystem/snomed-requested-cs",
              "code": "1255724003",
              "display": "Radiotherapy treatment plan (regime/therapy)"
            }
          ]
        },
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestCode"
            }
          ],
          "strength": "example",
          "description": "Codes for tests or services that can be carried out by a designated individual, organization or healthcare service.  For laboratory, LOINC is  (preferred)[http://build.fhir.org/terminologies.html#preferred] and a valueset using LOINC Order codes is available [here](valueset-diagnostic-requests.html).",
          "valueSet": "http://hl7.org/fhir/ValueSet/procedure-code"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.code"
          },
          {
            "identity": "w5",
            "map": "FiveWs.what[x]"
          },
          {
            "identity": "v2",
            "map": "PR1-3 / OBR-4  (varies by domain)"
          },
          {
            "identity": "rim",
            "map": ".code"
          },
          {
            "identity": "quick",
            "map": "Procedure.procedureCode"
          }
        ]
      },
      {
        "id": "ServiceRequest.orderDetail",
        "path": "ServiceRequest.orderDetail",
        "short": "Additional order information",
        "definition": "Additional details and instructions about the how the services are to be delivered.   For example, and order for a urinary catheter may have an order detail for an external or indwelling catheter, or an order for a bandage may require additional instructions specifying how the bandage should be applied.",
        "comment": "For information from the medical record intended to support the delivery of the requested services, use the `supportingInformation` element.",
        "alias": [
          "detailed instructions"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.orderDetail",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "condition": [
          "prr-1"
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "OrderDetail"
            }
          ],
          "strength": "example",
          "description": "Codified order entry details which are based on order context.",
          "valueSet": "http://hl7.org/fhir/ValueSet/servicerequest-orderdetail"
        },
        "mapping": [
          {
            "identity": "v2",
            "map": "NTE"
          },
          {
            "identity": "rim",
            "map": ".code"
          },
          {
            "identity": "quick",
            "map": "Procedure.procedureCode"
          }
        ]
      },
      {
        "id": "ServiceRequest.quantity[x]",
        "path": "ServiceRequest.quantity[x]",
        "short": "Service amount",
        "definition": "An amount of service being requested which can be a quantity ( for example $1,500 home modification), a ratio ( for example, 20 half day visits per month), or a range (2.0 to 1.8 Gy per fraction).",
        "requirements": "When ordering a service the number of service items may need to be specified separately from the the service item.",
        "min": 0,
        "max": "0",
        "base": {
          "path": "ServiceRequest.quantity[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Quantity"
          },
          {
            "code": "Ratio"
          },
          {
            "code": "Range"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "NTE"
          },
          {
            "identity": "rim",
            "map": ".quantity"
          }
        ]
      },
      {
        "id": "ServiceRequest.subject",
        "path": "ServiceRequest.subject",
        "short": "Individual or Entity the service is ordered for",
        "definition": "On whom or what the service is to be performed. This is usually a human patient, but can also be requested on animals, groups of humans or animals, devices such as dialysis machines, or even locations (typically for environmental scans).",
        "min": 1,
        "max": "1",
        "base": {
          "path": "ServiceRequest.subject",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.subject"
          },
          {
            "identity": "w5",
            "map": "FiveWs.subject[x]"
          },
          {
            "identity": "v2",
            "map": "PID"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=SBJ].role"
          },
          {
            "identity": "quick",
            "map": "ClinicalStatement.subject"
          },
          {
            "identity": "w5",
            "map": "FiveWs.subject"
          }
        ]
      },
      {
        "id": "ServiceRequest.encounter",
        "path": "ServiceRequest.encounter",
        "short": "Encounter in which the request was created",
        "definition": "An encounter that provides additional information about the healthcare context in which this request is made.",
        "alias": [
          "context"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.encounter",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Encounter"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.encounter"
          },
          {
            "identity": "w5",
            "map": "FiveWs.context"
          },
          {
            "identity": "v2",
            "map": "PV1"
          },
          {
            "identity": "rim",
            "map": ".inboundRelationship(typeCode=COMP].source[classCode<=PCPR, moodCode=EVN]"
          },
          {
            "identity": "quick",
            "map": "ClinicalStatement.encounter"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]",
        "path": "ServiceRequest.occurrence[x]",
        "slicing": {
          "discriminator": [
            {
              "type": "type",
              "path": "$this"
            }
          ],
          "ordered": false,
          "rules": "open"
        },
        "short": "When service should occur",
        "definition": "The date/time at which the requested service should occur.",
        "alias": [
          "schedule"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.occurrence[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "dateTime"
          },
          {
            "code": "Period"
          },
          {
            "code": "Timing"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.occurrence[x]"
          },
          {
            "identity": "w5",
            "map": "FiveWs.planned"
          },
          {
            "identity": "v2",
            "map": "TQ1/TQ2, OBR-7/OBR-8"
          },
          {
            "identity": "rim",
            "map": ".effectiveTime"
          },
          {
            "identity": "quick",
            "map": "Procedure.procedureSchedule"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming",
        "path": "ServiceRequest.occurrence[x]",
        "sliceName": "occurrenceTiming",
        "short": "When service should occur",
        "definition": "The date/time at which the requested service should occur.",
        "alias": [
          "schedule"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.occurrence[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Timing"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.occurrence[x]"
          },
          {
            "identity": "w5",
            "map": "FiveWs.planned"
          },
          {
            "identity": "v2",
            "map": "TQ1/TQ2, OBR-7/OBR-8"
          },
          {
            "identity": "rim",
            "map": ".effectiveTime"
          },
          {
            "identity": "quick",
            "map": "Procedure.procedureSchedule"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.id",
        "path": "ServiceRequest.occurrence[x].id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.extension",
        "path": "ServiceRequest.occurrence[x].extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Additional content defined by implementations",
        "definition": "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "alias": [
          "extensions",
          "user content"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.modifierExtension",
        "path": "ServiceRequest.occurrence[x].modifierExtension",
        "short": "Extensions that cannot be ignored even if unrecognized",
        "definition": "May be used to represent additional information that is not part of the basic definition of the element and that modifies the understanding of the element in which it is contained and/or the understanding of the containing element's descendants. Usually modifier elements provide negation or qualification. To make the use of extensions safe and manageable, there is a strict set of governance applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension. Applications processing a resource are required to check for modifier extensions.\n\nModifier extensions SHALL NOT change the meaning of any elements on Resource or DomainResource (including cannot change the meaning of modifierExtension itself).",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "requirements": "Modifier extensions allow for extensions that *cannot* be safely ignored to be clearly distinguished from the vast majority of extensions which can be safely ignored.  This promotes interoperability by eliminating the need for implementers to prohibit the presence of extensions. For further information, see the [definition of modifier extensions](http://hl7.org/fhir/R4/extensibility.html#modifierExtension).",
        "alias": [
          "extensions",
          "user content",
          "modifiers"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "BackboneElement.modifierExtension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": true,
        "isModifierReason": "Modifier extensions are expected to modify the meaning or interpretation of the element that contains them",
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.event",
        "path": "ServiceRequest.occurrence[x].event",
        "short": "When the event occurs",
        "definition": "Identifies specific times when the event occurs.",
        "requirements": "In a Medication Administration Record, for instance, you need to take a general specification, and turn it into a precise specification.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Timing.event",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "dateTime"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "QLIST<TS>"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat",
        "path": "ServiceRequest.occurrence[x].repeat",
        "short": "When the event is to occur",
        "definition": "A set of rules that describe when the event is scheduled.",
        "requirements": "Many timing schedules are determined by regular repetitions.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Element"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "tim-1",
            "severity": "error",
            "human": "if there's a duration, there needs to be duration units",
            "expression": "duration.empty() or durationUnit.exists()",
            "xpath": "not(exists(f:duration)) or exists(f:durationUnit)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-2",
            "severity": "error",
            "human": "if there's a period, there needs to be period units",
            "expression": "period.empty() or periodUnit.exists()",
            "xpath": "not(exists(f:period)) or exists(f:periodUnit)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-4",
            "severity": "error",
            "human": "duration SHALL be a non-negative value",
            "expression": "duration.exists() implies duration >= 0",
            "xpath": "f:duration/@value >= 0 or not(f:duration/@value)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-5",
            "severity": "error",
            "human": "period SHALL be a non-negative value",
            "expression": "period.exists() implies period >= 0",
            "xpath": "f:period/@value >= 0 or not(f:period/@value)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-6",
            "severity": "error",
            "human": "If there's a periodMax, there must be a period",
            "expression": "periodMax.empty() or period.exists()",
            "xpath": "not(exists(f:periodMax)) or exists(f:period)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-7",
            "severity": "error",
            "human": "If there's a durationMax, there must be a duration",
            "expression": "durationMax.empty() or duration.exists()",
            "xpath": "not(exists(f:durationMax)) or exists(f:duration)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-8",
            "severity": "error",
            "human": "If there's a countMax, there must be a count",
            "expression": "countMax.empty() or count.exists()",
            "xpath": "not(exists(f:countMax)) or exists(f:count)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-9",
            "severity": "error",
            "human": "If there's an offset, there must be a when (and not C, CM, CD, CV)",
            "expression": "offset.empty() or (when.exists() and ((when in ('C' | 'CM' | 'CD' | 'CV')).not()))",
            "xpath": "not(exists(f:offset)) or exists(f:when)",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          },
          {
            "key": "tim-10",
            "severity": "error",
            "human": "If there's a timeOfDay, there cannot be a when, or vice versa",
            "expression": "timeOfDay.empty() or when.empty()",
            "xpath": "not(exists(f:timeOfDay)) or not(exists(f:when))",
            "source": "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "Implies PIVL or EIVL"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.id",
        "path": "ServiceRequest.occurrence[x].repeat.id",
        "representation": [
          "xmlAttr"
        ],
        "short": "Unique id for inter-element referencing",
        "definition": "Unique id for the element within a resource (for internal references). This may be any string value that does not contain spaces.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Element.id",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "extension": [
              {
                "url": "http://hl7.org/fhir/StructureDefinition/structuredefinition-fhir-type",
                "valueUrl": "string"
              }
            ],
            "code": "http://hl7.org/fhirpath/System.String"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.extension",
        "path": "ServiceRequest.occurrence[x].repeat.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "description": "Extensions are always sliced by (at least) url",
          "rules": "open"
        },
        "short": "Additional content defined by implementations",
        "definition": "May be used to represent additional information that is not part of the basic definition of the element. To make the use of extensions safe and manageable, there is a strict set of governance  applied to the definition and use of extensions. Though any implementer can define an extension, there is a set of requirements that SHALL be met as part of the definition of the extension.",
        "comment": "There can be no stigma associated with the use of extensions by any application, project, or standard - regardless of the institution or jurisdiction that uses or defines the extensions.  The use of extensions is what allows the FHIR specification to retain a core level of simplicity for everyone.",
        "alias": [
          "extensions",
          "user content"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Element.extension",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Extension"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          },
          {
            "key": "ext-1",
            "severity": "error",
            "human": "Must have either extensions or value[x], not both",
            "expression": "extension.exists() != value.exists()",
            "xpath": "exists(f:extension)!=exists(f:*[starts-with(local-name(.), \"value\")])",
            "source": "http://hl7.org/fhir/StructureDefinition/Extension"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.bounds[x]",
        "path": "ServiceRequest.occurrence[x].repeat.bounds[x]",
        "slicing": {
          "discriminator": [
            {
              "type": "type",
              "path": "$this"
            }
          ],
          "ordered": false,
          "rules": "open"
        },
        "short": "Length/Range of lengths, or (Start and/or end) limits",
        "definition": "Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.bounds[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Duration"
          },
          {
            "code": "Range"
          },
          {
            "code": "Period"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "IVL(TS) used in a QSI"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.bounds[x]:boundsPeriod",
        "path": "ServiceRequest.occurrence[x].repeat.bounds[x]",
        "sliceName": "boundsPeriod",
        "short": "Length/Range of lengths, or (Start and/or end) limits",
        "definition": "Either a duration for the length of the timing schedule, a range of possible length, or outer bounds for start and/or end limits of the timing schedule.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.bounds[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Period"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "IVL(TS) used in a QSI"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.count",
        "path": "ServiceRequest.occurrence[x].repeat.count",
        "short": "Number of times to repeat",
        "definition": "A total count of the desired number of repetitions across the duration of the entire timing specification. If countMax is present, this element indicates the lower bound of the allowed range of count values.",
        "comment": "If you have both bounds and count, then this should be understood as within the bounds period, until count times happens.",
        "requirements": "Repetitions may be limited by end time or total occurrences.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.count",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "positiveInt"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.count"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.countMax",
        "path": "ServiceRequest.occurrence[x].repeat.countMax",
        "short": "Maximum number of times to repeat",
        "definition": "If present, indicates that the count is a range - so to perform the action between [count] and [countMax] times.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.countMax",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "positiveInt"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.count"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.duration",
        "path": "ServiceRequest.occurrence[x].repeat.duration",
        "short": "How long when it happens",
        "definition": "How long this thing happens for when it happens. If durationMax is present, this element indicates the lower bound of the allowed range of the duration.",
        "comment": "For some events the duration is part of the definition of the event (e.g. IV infusions, where the duration is implicit in the specified quantity and rate). For others, it's part of the timing specification (e.g. exercise).",
        "requirements": "Some activities are not instantaneous and need to be maintained for a period of time.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.duration",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "decimal"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.durationMax",
        "path": "ServiceRequest.occurrence[x].repeat.durationMax",
        "short": "How long when it happens (Max)",
        "definition": "If present, indicates that the duration is a range - so to perform the action between [duration] and [durationMax] time length.",
        "comment": "For some events the duration is part of the definition of the event (e.g. IV infusions, where the duration is implicit in the specified quantity and rate). For others, it's part of the timing specification (e.g. exercise).",
        "requirements": "Some activities are not instantaneous and need to be maintained for a period of time.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.durationMax",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "decimal"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.durationUnit",
        "path": "ServiceRequest.occurrence[x].repeat.durationUnit",
        "short": "s | min | h | d | wk | mo | a - unit of time (UCUM)",
        "definition": "The units of time for the duration, in UCUM units.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.durationUnit",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "UnitsOfTime"
            }
          ],
          "strength": "required",
          "description": "A unit of time (units from UCUM).",
          "valueSet": "http://hl7.org/fhir/ValueSet/units-of-time|4.0.1"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase.unit"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.frequency",
        "path": "ServiceRequest.occurrence[x].repeat.frequency",
        "short": "Event occurs frequency times per period",
        "definition": "The number of times to repeat the action within the specified period. If frequencyMax is present, this element indicates the lower bound of the allowed range of the frequency.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.frequency",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "positiveInt"
          }
        ],
        "meaningWhenMissing": "If no frequency is stated, the assumption is that the event occurs once per period, but systems SHOULD always be specific about this",
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.frequencyMax",
        "path": "ServiceRequest.occurrence[x].repeat.frequencyMax",
        "short": "Event occurs up to frequencyMax times per period",
        "definition": "If present, indicates that the frequency is a range - so to repeat between [frequency] and [frequencyMax] times within the period or period range.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.frequencyMax",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "positiveInt"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.period",
        "path": "ServiceRequest.occurrence[x].repeat.period",
        "short": "Event occurs frequency times per period",
        "definition": "Indicates the duration of time over which repetitions are to occur; e.g. to express \"3 times per day\", 3 would be the frequency and \"1 day\" would be the period. If periodMax is present, this element indicates the lower bound of the allowed range of the period length.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.period",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "decimal"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.periodMax",
        "path": "ServiceRequest.occurrence[x].repeat.periodMax",
        "short": "Upper limit of period (3-4 hours)",
        "definition": "If present, indicates that the period is a range from [period] to [periodMax], allowing expressing concepts such as \"do this once every 3-5 days.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.periodMax",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "decimal"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.periodUnit",
        "path": "ServiceRequest.occurrence[x].repeat.periodUnit",
        "short": "s | min | h | d | wk | mo | a - unit of time (UCUM)",
        "definition": "The units of time for the period in UCUM units.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.periodUnit",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "UnitsOfTime"
            }
          ],
          "strength": "required",
          "description": "A unit of time (units from UCUM).",
          "valueSet": "http://hl7.org/fhir/ValueSet/units-of-time|4.0.1"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "PIVL.phase.unit"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.dayOfWeek",
        "path": "ServiceRequest.occurrence[x].repeat.dayOfWeek",
        "short": "mon | tue | wed | thu | fri | sat | sun",
        "definition": "If one or more days of week is provided, then the action happens only on the specified day(s).",
        "comment": "If no days are specified, the action is assumed to happen every day as otherwise specified. The elements frequency and period cannot be used as well as dayOfWeek.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Timing.repeat.dayOfWeek",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "DayOfWeek"
            }
          ],
          "strength": "required",
          "valueSet": "http://hl7.org/fhir/ValueSet/days-of-week|4.0.1"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.timeOfDay",
        "path": "ServiceRequest.occurrence[x].repeat.timeOfDay",
        "short": "Time of day for action",
        "definition": "Specified time of day for action to take place.",
        "comment": "When time of day is specified, it is inferred that the action happens every day (as filtered by dayofWeek) on the specified times. The elements when, frequency and period cannot be used as well as timeOfDay.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Timing.repeat.timeOfDay",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "time"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "n/a"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.when",
        "path": "ServiceRequest.occurrence[x].repeat.when",
        "short": "Code for time period of occurrence",
        "definition": "An approximate time period during the day, potentially linked to an event of daily living that indicates when the action should occur.",
        "comment": "When more than one event is listed, the event is tied to the union of the specified events.",
        "requirements": "Timings are frequently determined by occurrences such as waking, eating and sleep.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Timing.repeat.when",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "code"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "EventTiming"
            }
          ],
          "strength": "required",
          "description": "Real world event relating to the schedule.",
          "valueSet": "http://hl7.org/fhir/ValueSet/event-timing|4.0.1"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "EIVL.event"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.repeat.offset",
        "path": "ServiceRequest.occurrence[x].repeat.offset",
        "short": "Minutes from event (before or after)",
        "definition": "The number of minutes from the event. If the event code does not indicate whether the minutes is before or after the event, then the offset is assumed to be after the event.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.repeat.offset",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "unsignedInt"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "rim",
            "map": "EIVL.offset"
          }
        ]
      },
      {
        "id": "ServiceRequest.occurrence[x]:occurrenceTiming.code",
        "path": "ServiceRequest.occurrence[x].code",
        "short": "BID | TID | QID | AM | PM | QD | QOD | +",
        "definition": "A code for the timing schedule (or just text in code.text). Some codes such as BID are ubiquitous, but many institutions define their own additional codes. If a code is provided, the code is understood to be a complete statement of whatever is specified in the structured timing data, and either the code or the data may be used to interpret the Timing, with the exception that .repeat.bounds still applies over the code (and is not contained in the code).",
        "comment": "BID etc. are defined as 'at institutionally specified times'. For example, an institution may choose that BID is \"always at 7am and 6pm\".  If it is inappropriate for this choice to be made, the code BID should not be used. Instead, a distinct organization-specific code should be used in place of the HL7-defined BID code and/or a structured representation should be used (in this case, specifying the two event times).",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Timing.code",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "TimingAbbreviation"
            }
          ],
          "strength": "preferred",
          "description": "Code for a known / defined timing pattern.",
          "valueSet": "http://hl7.org/fhir/ValueSet/timing-abbreviation"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "QSC.code"
          }
        ]
      },
      {
        "id": "ServiceRequest.asNeeded[x]",
        "path": "ServiceRequest.asNeeded[x]",
        "short": "Preconditions for service",
        "definition": "If a CodeableConcept is present, it indicates the pre-condition for performing the service.  For example \"pain\", \"on flare-up\", etc.",
        "min": 0,
        "max": "0",
        "base": {
          "path": "ServiceRequest.asNeeded[x]",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "boolean"
          },
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ProcedureAsNeededReason"
            }
          ],
          "strength": "example",
          "description": "A coded concept identifying the pre-condition that should hold prior to performing a procedure.  For example \"pain\", \"on flare-up\", etc.",
          "valueSet": "http://hl7.org/fhir/ValueSet/medication-as-needed-reason"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "boolean: precondition.negationInd (inversed - so negationInd = true means asNeeded=false CodeableConcept: precondition.observationEventCriterion[code=\"Assertion\"].value"
          },
          {
            "identity": "quick",
            "map": "Proposal.prnReason.reason"
          }
        ]
      },
      {
        "id": "ServiceRequest.authoredOn",
        "path": "ServiceRequest.authoredOn",
        "short": "Date request signed",
        "definition": "When the request transitioned to being actionable.",
        "alias": [
          "orderedOn"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.authoredOn",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "dateTime"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.authoredOn"
          },
          {
            "identity": "w5",
            "map": "FiveWs.recorded"
          },
          {
            "identity": "v2",
            "map": "ORC.9,  RF1-7 / RF1-9"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=AUT].time"
          },
          {
            "identity": "quick",
            "map": "Proposal.proposedAtTime"
          }
        ]
      },
      {
        "id": "ServiceRequest.requester",
        "path": "ServiceRequest.requester",
        "short": "Who/what is requesting service",
        "definition": "The individual who initiated the request and has responsibility for its activation.",
        "comment": "This not the dispatcher, but rather who is the authorizer.  This element is not intended to handle delegation which would generally be managed through the Provenance resource.",
        "alias": [
          "author",
          "orderer"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.requester",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.requester"
          },
          {
            "identity": "w5",
            "map": "FiveWs.author"
          },
          {
            "identity": "v2",
            "map": "ORC.12, PRT"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=AUT].role"
          },
          {
            "identity": "quick",
            "map": "ClinicalStatement.statementAuthor"
          }
        ]
      },
      {
        "id": "ServiceRequest.performerType",
        "path": "ServiceRequest.performerType",
        "short": "Performer role",
        "definition": "Desired type of performer for doing the requested service.",
        "comment": "This is a  role, not  a participation type.  In other words, does not describe the task but describes the capacity.  For example, “compounding pharmacy”, “psychiatrist” or “internal referral”.",
        "alias": [
          "specialty"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.performerType",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestParticipantRole"
            }
          ],
          "strength": "example",
          "description": "Indicates specific responsibility of an individual within the care team, such as \"Primary physician\", \"Team coordinator\", \"Caregiver\", etc.",
          "valueSet": "http://hl7.org/fhir/ValueSet/participant-role"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.performerType"
          },
          {
            "identity": "w5",
            "map": "FiveWs.actor"
          },
          {
            "identity": "v2",
            "map": "PRT, RF!-3"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=PRF].role[scoper.determinerCode=KIND].code"
          }
        ]
      },
      {
        "id": "ServiceRequest.performer",
        "path": "ServiceRequest.performer",
        "slicing": {
          "discriminator": [
            {
              "type": "profile",
              "path": "$this.resolve()"
            }
          ],
          "description": "Slicing based on the profile",
          "rules": "open"
        },
        "short": "Requested performer",
        "definition": "The desired performer for doing the requested service.  For example, the surgeon, dermatopathologist, endoscopist, etc.",
        "comment": "If multiple performers are present, it is interpreted as a list of *alternative* performers without any preference regardless of order.  If order of preference is needed use the [request-performerOrder extension](http://hl7.org/fhir/R4/extension-request-performerorder.html).  Use CareTeam to represent a group of performers (for example, Practitioner A *and* Practitioner B).",
        "alias": [
          "request recipient"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.performer",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "http://hl7.org/fhir/StructureDefinition/HealthcareService",
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.performer"
          },
          {
            "identity": "w5",
            "map": "FiveWs.actor"
          },
          {
            "identity": "v2",
            "map": "PRT, Practitioner: PRD-2/PRD-7 where PRD-3 = RT; Organization: PRD-10 where PRD-3 = RT"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=PRF].role[scoper.determinerCode=INSTANCE]"
          }
        ]
      },
      {
        "id": "ServiceRequest.performer:treatmentOrSeedDevice",
        "path": "ServiceRequest.performer",
        "sliceName": "treatmentOrSeedDevice",
        "short": "Radiotherapy Treatment Device or Seed Device used as part of therapy.",
        "definition": "The desired performer for doing the requested service.  For example, the surgeon, dermatopathologist, endoscopist, etc.",
        "comment": "If multiple performers are present, it is interpreted as a list of *alternative* performers without any preference regardless of order.  If order of preference is needed use the [request-performerOrder extension](http://hl7.org/fhir/R4/extension-request-performerorder.html).  Use CareTeam to represent a group of performers (for example, Practitioner A *and* Practitioner B).",
        "alias": [
          "request recipient"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.performer",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device",
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.performer"
          },
          {
            "identity": "w5",
            "map": "FiveWs.actor"
          },
          {
            "identity": "v2",
            "map": "PRT, Practitioner: PRD-2/PRD-7 where PRD-3 = RT; Organization: PRD-10 where PRD-3 = RT"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=PRF].role[scoper.determinerCode=INSTANCE]"
          }
        ]
      },
      {
        "id": "ServiceRequest.locationCode",
        "path": "ServiceRequest.locationCode",
        "short": "Requested location",
        "definition": "The preferred location(s) where the procedure should actually happen in coded or free text form. E.g. at home or nursing day care center.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.locationCode",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ServiceRequestLocation"
            }
          ],
          "strength": "example",
          "description": "A location type where services are delivered.",
          "valueSet": "http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType"
        },
        "mapping": [
          {
            "identity": "w5",
            "map": "FiveWs.actor"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=LOC].role[scoper.determinerCode=KIND].code"
          }
        ]
      },
      {
        "id": "ServiceRequest.locationReference",
        "path": "ServiceRequest.locationReference",
        "short": "Requested location",
        "definition": "A reference to the the preferred location(s) where the procedure should actually happen. E.g. at home or nursing day care center.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.locationReference",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "w5",
            "map": "FiveWs.actor"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=LOC].role[scoper.determinerCode=INSTANCE]"
          }
        ]
      },
      {
        "id": "ServiceRequest.reasonCode",
        "path": "ServiceRequest.reasonCode",
        "short": "Explanation/Justification for procedure or service",
        "definition": "An explanation or justification for why this service is being requested in coded or textual form.   This is often for billing purposes.  May relate to the resources referred to in `supportingInfo`.",
        "comment": "This element represents why the referral is being made and may be used to decide how the service will be performed, or even if it will be performed at all.   Use `CodeableConcept.text` element if the data is free (uncoded) text as shown in the [CT Scan example](servicerequest-example-di.html).",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.reasonCode",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "strength": "extensible",
          "valueSet": "http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-disorder-vs"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.reasonCode"
          },
          {
            "identity": "w5",
            "map": "FiveWs.why[x]"
          },
          {
            "identity": "v2",
            "map": "ORC.16, RF1-10"
          },
          {
            "identity": "rim",
            "map": ".reasonCode"
          }
        ]
      },
      {
        "id": "ServiceRequest.reasonReference",
        "path": "ServiceRequest.reasonReference",
        "short": "Explanation/Justification for service or service",
        "definition": "Indicates another resource that provides a justification for why this service is being requested.   May relate to the resources referred to in `supportingInfo`.",
        "comment": "This element represents why the referral is being made and may be used to decide how the service will be performed, or even if it will be performed at all.    To be as specific as possible,  a reference to  *Observation* or *Condition* should be used if available.  Otherwise when referencing  *DiagnosticReport*  it should contain a finding  in `DiagnosticReport.conclusion` and/or `DiagnosticReport.conclusionCode`.   When using a reference to *DocumentReference*, the target document should contain clear findings language providing the relevant reason for this service request.  Use  the CodeableConcept text element in `ServiceRequest.reasonCode` if the data is free (uncoded) text as shown in the [CT Scan example](servicerequest-example-di.html).",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.reasonReference",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Condition"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.reasonReference"
          },
          {
            "identity": "w5",
            "map": "FiveWs.why[x]"
          },
          {
            "identity": "v2",
            "map": "ORC.16"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=RSON].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.insurance",
        "path": "ServiceRequest.insurance",
        "short": "Associated insurance coverage",
        "definition": "Insurance plans, coverage extensions, pre-authorizations and/or pre-determinations that may be needed for delivering the requested service.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.insurance",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Coverage",
              "http://hl7.org/fhir/StructureDefinition/ClaimResponse"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.insurance"
          },
          {
            "identity": "v2",
            "map": "IN1/IN2"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=COVBY].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.supportingInfo",
        "path": "ServiceRequest.supportingInfo",
        "short": "Additional clinical information",
        "definition": "Additional clinical information about the patient or specimen that may influence the services or their interpretations.     This information includes diagnosis, clinical findings and other observations.  In laboratory ordering these are typically referred to as \"ask at order entry questions (AOEs)\".  This includes observations explicitly requested by the producer (filler) to provide context or supporting information needed to complete the order. For example,  reporting the amount of inspired oxygen for blood gas measurements.",
        "comment": "To represent information about how the services are to be delivered use the `instructions` element.",
        "alias": [
          "Ask at order entry question",
          "AOE"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.supportingInfo",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Resource"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.supportingInfo"
          },
          {
            "identity": "v2",
            "map": "Accompanying segments"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=PERT].target"
          }
        ]
      },
      {
        "id": "ServiceRequest.specimen",
        "path": "ServiceRequest.specimen",
        "short": "Procedure Samples",
        "definition": "One or more specimens that the laboratory procedure will use.",
        "comment": "Many diagnostic procedures need a specimen, but the request itself is not actually about the specimen. This element is for when the diagnostic is requested on already existing specimens and the request points to the specimen it applies to.    Conversely, if the request is entered first with an unknown specimen, then the [Specimen](http://hl7.org/fhir/R4/specimen.html) resource points to the ServiceRequest.",
        "min": 0,
        "max": "0",
        "base": {
          "path": "ServiceRequest.specimen",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Specimen"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "SPM"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=SPC].role"
          }
        ]
      },
      {
        "id": "ServiceRequest.bodySite",
        "path": "ServiceRequest.bodySite",
        "short": "Body site that is treated with radiotherapy",
        "definition": "Anatomic location where the procedure should be performed. This is the target site.",
        "comment": "Only used if not implicit in the code found in ServiceRequest.code.  If the use case requires BodySite to be handled as a separate resource instead of an inline coded element (e.g. to identify and track separately)  then use the standard extension [procedure-targetBodyStructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html).",
        "requirements": "Knowing where the procedure is performed is important for tracking if multiple sites are possible.",
        "alias": [
          "location"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.bodySite",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "CodeableConcept"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "binding": {
          "strength": "required",
          "valueSet": "http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-treatment-location-vs"
        },
        "mapping": [
          {
            "identity": "v2",
            "map": "SPM"
          },
          {
            "identity": "rim",
            "map": "targetSiteCode"
          },
          {
            "identity": "quick",
            "map": "Procedure.targetBodySite"
          }
        ]
      },
      {
        "id": "ServiceRequest.note",
        "path": "ServiceRequest.note",
        "short": "Comments",
        "definition": "Any other notes and comments made about the service request. For example, internal billing notes.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.note",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Annotation"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "mustSupport": true,
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.note"
          },
          {
            "identity": "v2",
            "map": "NTE"
          },
          {
            "identity": "rim",
            "map": ".inboundRelationship(typeCode=SUBJ].source[classCode=ANNGEN, moodCode=EVN].value[xsi:type=ST]"
          },
          {
            "identity": "quick",
            "map": "ClinicalStatement.additionalText"
          }
        ]
      },
      {
        "id": "ServiceRequest.patientInstruction",
        "path": "ServiceRequest.patientInstruction",
        "short": "Patient or consumer-oriented instructions",
        "definition": "Instructions in terms that are understood by the patient or consumer.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "ServiceRequest.patientInstruction",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "string"
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "v2",
            "map": "NTE"
          },
          {
            "identity": "rim",
            "map": ".text"
          }
        ]
      },
      {
        "id": "ServiceRequest.relevantHistory",
        "path": "ServiceRequest.relevantHistory",
        "short": "Request provenance",
        "definition": "Key events in the history of the request.",
        "comment": "This might not include provenances for all versions of the request – only those deemed “relevant” or important.\rThis SHALL NOT include the Provenance associated with this current version of the resource.  (If that provenance is deemed to be a “relevant” change, it will need to be added as part of a later update.  Until then, it can be queried directly as the Provenance that points to this version using _revinclude\rAll Provenances should have some historical version of this Request as their subject.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "ServiceRequest.relevantHistory",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Provenance"
            ]
          }
        ],
        "constraint": [
          {
            "key": "ele-1",
            "severity": "error",
            "human": "All FHIR elements must have a @value or children",
            "expression": "hasValue() or (children().count() > id.count())",
            "xpath": "@value|f:*|h:div",
            "source": "http://hl7.org/fhir/StructureDefinition/Element"
          }
        ],
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Request.relevantHistory"
          },
          {
            "identity": "v2",
            "map": "N/A"
          },
          {
            "identity": "rim",
            "map": ".inboundRelationship(typeCode=SUBJ].source[classCode=CACT, moodCode=EVN]"
          }
        ]
      }
    ]
  },
  "differential": {
    "element": [
      {
        "id": "ServiceRequest",
        "path": "ServiceRequest"
      },
      {
        "id": "ServiceRequest.extension",
        "path": "ServiceRequest.extension",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "url"
            }
          ],
          "ordered": false,
          "rules": "open"
        },
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique",
        "path": "ServiceRequest.extension",
        "sliceName": "modalityAndTechnique",
        "min": 0,
        "max": "1",
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-modality-and-technique"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:radiotherapyEnergyOrIsotope",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "radiotherapyEnergyOrIsotope",
        "min": 0,
        "max": "*",
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.extension:modalityAndTechnique.extension:radiotherapyTreatmentApplicatorType",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "radiotherapyTreatmentApplicatorType",
        "min": 0,
        "max": "*",
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.extension:radiotherapyFractionsPrescribed",
        "path": "ServiceRequest.extension",
        "sliceName": "radiotherapyFractionsPrescribed",
        "min": 1,
        "max": "1",
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-fractions-prescribed"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume",
        "path": "ServiceRequest.extension",
        "sliceName": "radiotherapyDosePrescribedToVolume",
        "min": 0,
        "max": "*",
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-dose-prescribed-to-volume"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.extension:radiotherapyDosePrescribedToVolume.extension:fractions",
        "path": "ServiceRequest.extension.extension",
        "sliceName": "fractions",
        "short": "Not used in this profile. In a Treatment Plan, all volumes are involved in all fractions.",
        "definition": "Not used in this profile. In a Treatment Plan, all volumes are involved in all fractions and the number of fractions is defined in extension radiotherapyFractionsPrescribed.",
        "max": "0"
      },
      {
        "id": "ServiceRequest.extension:radiotherapyReasonForRevisionOrAdaptation",
        "path": "ServiceRequest.extension",
        "sliceName": "radiotherapyReasonForRevisionOrAdaptation",
        "min": 0,
        "max": "*",
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotheraphy-reason-for-revision-or-adaptation"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.identifier",
        "path": "ServiceRequest.identifier",
        "slicing": {
          "discriminator": [
            {
              "type": "value",
              "path": "use"
            }
          ],
          "description": "At least one display name and and one DICOM style UID as technical globally unqiue key",
          "rules": "open"
        },
        "definition": "SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM.",
        "min": 2,
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.identifier:displayName",
        "path": "ServiceRequest.identifier",
        "sliceName": "displayName",
        "short": "The name that is displayed to the user.",
        "min": 1,
        "max": "1",
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.identifier:displayName.use",
        "path": "ServiceRequest.identifier.use",
        "min": 1,
        "patternCode": "usual"
      },
      {
        "id": "ServiceRequest.identifier:displayName.system",
        "path": "ServiceRequest.identifier.system",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.identifier:displayName.value",
        "path": "ServiceRequest.identifier.value",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.identifier:official",
        "path": "ServiceRequest.identifier",
        "sliceName": "official",
        "short": "A business identifier for the request or procedure, which is independent of its FHIR representation, such as a GUID or DICOM UID.",
        "min": 1,
        "max": "*",
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.identifier:official.use",
        "path": "ServiceRequest.identifier.use",
        "min": 1,
        "patternCode": "official"
      },
      {
        "id": "ServiceRequest.identifier:official.system",
        "path": "ServiceRequest.identifier.system",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.identifier:official.value",
        "path": "ServiceRequest.identifier.value",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.basedOn",
        "path": "ServiceRequest.basedOn",
        "slicing": {
          "discriminator": [
            {
              "type": "profile",
              "path": "$this.resolve()"
            }
          ],
          "description": "Slicing based on the profile",
          "rules": "open"
        }
      },
      {
        "id": "ServiceRequest.basedOn:course-prescription",
        "path": "ServiceRequest.basedOn",
        "sliceName": "course-prescription",
        "short": "Radiotherapy Course Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases).",
        "min": 0,
        "max": "1",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-prescription"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.basedOn:phase-prescription",
        "path": "ServiceRequest.basedOn",
        "sliceName": "phase-prescription",
        "short": "Radiotherapy Phase Prescription that this Radiotherapy Plan Prescription fulfills (often together with other treatment phases).",
        "min": 0,
        "max": "1",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-phase-prescription"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.replaces",
        "path": "ServiceRequest.replaces",
        "short": "Previous retired prescription that is replaced by this prescription",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-plan-prescription"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.status",
        "path": "ServiceRequest.status",
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.intent",
        "path": "ServiceRequest.intent",
        "patternCode": "original-order",
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.category",
        "path": "ServiceRequest.category",
        "slicing": {
          "discriminator": [
            {
              "type": "pattern",
              "path": "$this"
            }
          ],
          "description": "Slicing requires the given value but allows additional categories",
          "rules": "open"
        },
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.category:required",
        "path": "ServiceRequest.category",
        "sliceName": "required",
        "min": 1,
        "max": "1",
        "patternCodeableConcept": {
          "coding": [
            {
              "system": "http://snomed.info/sct",
              "code": "108290001",
              "display": "Radiation oncology AND/OR radiotherapy"
            }
          ]
        }
      },
      {
        "id": "ServiceRequest.doNotPerform",
        "path": "ServiceRequest.doNotPerform",
        "max": "0"
      },
      {
        "id": "ServiceRequest.code",
        "path": "ServiceRequest.code",
        "min": 1,
        "patternCodeableConcept": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/us/codex-radiation-therapy/CodeSystem/snomed-requested-cs",
              "code": "1255724003",
              "display": "Radiotherapy treatment plan (regime/therapy)"
            }
          ]
        },
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.quantity[x]",
        "path": "ServiceRequest.quantity[x]",
        "max": "0"
      },
      {
        "id": "ServiceRequest.subject",
        "path": "ServiceRequest.subject",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.occurrenceTiming",
        "path": "ServiceRequest.occurrenceTiming",
        "min": 0,
        "max": "1",
        "type": [
          {
            "code": "Timing"
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.occurrenceTiming.repeat.boundsPeriod",
        "path": "ServiceRequest.occurrenceTiming.repeat.boundsPeriod",
        "min": 0,
        "max": "1",
        "type": [
          {
            "code": "Period"
          }
        ]
      },
      {
        "id": "ServiceRequest.asNeeded[x]",
        "path": "ServiceRequest.asNeeded[x]",
        "max": "0"
      },
      {
        "id": "ServiceRequest.requester",
        "path": "ServiceRequest.requester",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner",
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole",
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.performer",
        "path": "ServiceRequest.performer",
        "slicing": {
          "discriminator": [
            {
              "type": "profile",
              "path": "$this.resolve()"
            }
          ],
          "description": "Slicing based on the profile",
          "rules": "open"
        },
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.performer:treatmentOrSeedDevice",
        "path": "ServiceRequest.performer",
        "sliceName": "treatmentOrSeedDevice",
        "short": "Radiotherapy Treatment Device or Seed Device used as part of therapy.",
        "min": 0,
        "max": "*",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device",
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.locationReference",
        "path": "ServiceRequest.locationReference",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.reasonCode",
        "path": "ServiceRequest.reasonCode",
        "mustSupport": true,
        "binding": {
          "strength": "extensible",
          "valueSet": "http://hl7.org/fhir/us/mcode/ValueSet/mcode-cancer-disorder-vs"
        }
      },
      {
        "id": "ServiceRequest.reasonReference",
        "path": "ServiceRequest.reasonReference",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Condition"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "ServiceRequest.specimen",
        "path": "ServiceRequest.specimen",
        "max": "0"
      },
      {
        "id": "ServiceRequest.bodySite",
        "path": "ServiceRequest.bodySite",
        "short": "Body site that is treated with radiotherapy",
        "mustSupport": true,
        "binding": {
          "strength": "required",
          "valueSet": "http://hl7.org/fhir/us/mcode/ValueSet/mcode-radiotherapy-treatment-location-vs"
        }
      },
      {
        "id": "ServiceRequest.note",
        "path": "ServiceRequest.note",
        "mustSupport": true
      }
    ]
  }
}