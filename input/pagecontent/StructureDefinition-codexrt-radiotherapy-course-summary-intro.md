{
  "resourceType": "StructureDefinition",
  "id": "codexrt-radiotherapy-course-summary",
  "text": {
    "status": "extensions",
    "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border: 0px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top;\"><tr style=\"border: 1px #F0F0F0 solid; font-size: 11px; font-family: verdana; vertical-align: top\"><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"The logical name of the element\">Name</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Information about the use of the element\">Flags</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Minimum and Maximum # of times the the element can appear in the instance\">Card.</a></th><th style=\"width: 100px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Reference to the type of the element\">Type</a></th><th style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Additional information about the element\">Description &amp; Constraints</a><span style=\"float: right\"><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"http://hl7.org/fhir/R4/help16.png\" alt=\"doco\" style=\"background-color: inherit\"/></a></span></th></tr><tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_resource.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure\">Procedure</a><a name=\"Procedure\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"padding-left: 3px; padding-right: 3px; border: 1px maroon solid; font-weight: bold; color: #301212; background-color: #fdf4f4;\" href=\"http://hl7.org/fhir/R4conformance-rules.html#constraints\" title=\"This element has or is affected by some invariants (codexrt-procedure-status)\">C</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-course-summary.html\">RadiotherapyCourseSummary</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">An action that is being or was performed on a patient</span><br/><span style=\"font-weight:bold\">codexrt-procedure-status: </span>Only the following status values are supported: in-progress | not-done | on-hold | stopped | completed</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck15.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.extension:modalityAndTechnique\" title=\"Slice modalityAndTechnique\">extension:modalityAndTechnique</a><a name=\"Procedure.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-modality-and-technique.html\" title=\"Extension\">RadiotherapyModalityAndTechnique</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Radiotherapy Modality And Technique Extension</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck154.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.extension:modalityAndTechnique.extension:radiotherapyEnergyOrIsotope\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope\">radiotherapyEnergyOrIsotope</a><a name=\"Procedure.extension.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#SimpleQuantity\" title=\"Quantity\">SimpleQuantity</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Radiotherapy Energy or Isotope</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotherapy-energy-or-isotope.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-energy-or-isotope</a><br/><span style=\"font-weight:bold\">Binding: </span><a href=\"ValueSet-codexrt-radiotherapy-energy-unit-vs.html\">Radiotherapy Energy Unit Value Set</a> (<a href=\"http://hl7.org/fhir/R4/terminologies.html#required\" title=\"To be conformant, the concept in this element SHALL be from the specified value set.\">required</a>)<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck144.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.extension:modalityAndTechnique.extension:radiotherapyTreatmentApplicatorType\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type\">radiotherapyTreatmentApplicatorType</a><a name=\"Procedure.extension.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#CodeableConcept\">CodeableConcept</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Radiotherapy Treatment Applicator Type</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotherapy-treatment-applicator-type.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-applicator-type</a><br/><span style=\"font-weight:bold\">Binding: </span><a href=\"ValueSet-codexrt-brachytherapy-applicator-type-vs.html\">Brachytherapy Applicator Type Value Set</a> (<a href=\"http://hl7.org/fhir/R4/terminologies.html#extensible\" title=\"To be conformant, the concept in this element SHALL be from the specified value set if any of the codes within the value set can apply to the concept being communicated.  If the value set does not cover the concept (based on human review), alternate codings (or, data type allowing, text) may be included instead.\">extensible</a>)<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck15.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.extension:doseDeliveredToVolume\" title=\"Slice doseDeliveredToVolume\">extension:doseDeliveredToVolume</a><a name=\"Procedure.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/us/mcode/STU2/StructureDefinition-mcode-radiotherapy-dose-delivered-to-volume.html\" title=\"Extension\">RadiotherapyDoseDeliveredToVolume</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Radiotherapy Dose Delivered To Volume Extension</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck150.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_extension_simple.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Simple Extension\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.extension:doseDeliveredToVolume.extension\">extension</a><a name=\"Procedure.extension.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">2..<span style=\"opacity: 0.5\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/extensibility.html#Extension\">Extension</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Extension</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck144.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.extension:doseDeliveredToVolume.extension:uniformFractionation\" title=\"Extension URL = http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation\">uniformFractionation</a><a name=\"Procedure.extension.extension\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/datatypes.html#boolean\">boolean</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Uniform Fractionation</span><br/><span style=\"font-weight:bold\">URL: </span><a href=\"http://hl7.org/fhir/R4/StructureDefinition-codexrt-radiotherapy-uniform-fractionation.html\">http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation</a></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck13.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier\" title=\"SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM.\">Slices for identifier</a><a name=\"Procedure.identifier\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red; font-style: italic\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"font-style: italic\">2</span><span style=\"font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">External Identifiers for this procedure</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by value:use</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck135.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:displayName\" title=\"Slice displayName\">identifier:displayName</a><a name=\"Procedure.identifier\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">The name that is displayed to the user.</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1350.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:displayName.use\">use</a><a name=\"Procedure.identifier.use\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">usual | official | temp | secondary | old (If known)</span><br/><span style=\"font-weight:bold\">Required Pattern: </span><span style=\"color: darkgreen\">usual</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1350.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:displayName.system\">system</a><a name=\"Procedure.identifier.system\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#uri\">uri</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The namespace for the identifier value</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1340.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:displayName.value\">value</a><a name=\"Procedure.identifier.value\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The value that is unique</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck125.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:official\" title=\"Slice official\">identifier:official</a><a name=\"Procedure.identifier\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#Identifier\">Identifier</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">A business identifier for the request or procedure, which is independent of its FHIR representation, such as a GUID or DICOM UID.<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1250.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:official.use\">use</a><a name=\"Procedure.identifier.use\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#code\">code</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">usual | official | temp | secondary | old (If known)</span><br/><span style=\"font-weight:bold\">Required Pattern: </span><span style=\"color: darkgreen\">official</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1250.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:official.system\">system</a><a name=\"Procedure.identifier.system\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#uri\">uri</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The namespace for the identifier value</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1240.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.identifier:official.value\">value</a><a name=\"Procedure.identifier.value\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..<span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#string\">string</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">The value that is unique</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck13.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.basedOn\">Slices for basedOn</a><a name=\"Procedure.basedOn\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"opacity: 0.5; font-style: italic\">0</span><span style=\"opacity: 0.5; font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"font-style: italic\" href=\"http://hl7.org/fhir/R4/references.html\">Reference</a><span style=\"font-style: italic\">(</span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/careplan.html\">CarePlan</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/servicerequest.html\">ServiceRequest</a><span style=\"font-style: italic\">)</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">A request for this procedure</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by profile:$this.resolve()</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck134.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.basedOn:planned-course\" title=\"Slice planned-course\">basedOn:planned-course</a><a name=\"Procedure.basedOn\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-planned-course.html\">Radiotherapy Planned Course</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Radiotherapy Planned Course that planned the treatment summarized in this Radiotherapy Course Summary.</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck124.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.basedOn:course-prescription\" title=\"Slice course-prescription\">basedOn:course-prescription</a><a name=\"Procedure.basedOn\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..1</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-course-prescription.html\">Radiotherapy Course Prescription</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Radiotherapy Course Prescription that prescribed the treatment summarized in this Radiotherapy Course Summary.</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck11.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.performedPeriod\">performedPeriod</a><a name=\"Procedure.performedPeriod\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">1..1</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#Period\">Period</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">When the procedure was performed</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck110.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.performedPeriod.start\">start</a><a name=\"Procedure.performedPeriod.start\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#dateTime\">dateTime</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">The date and time when the first therapeutic radiation was delivered.</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck100.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_element.gif\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Element\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.performedPeriod.end\">end</a><a name=\"Procedure.performedPeriod.end\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#dateTime\">dateTime</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">An end date is expected if the status is 'stopped' or 'completed'</td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck10.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_reference.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Reference to another Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.location\">location</a><a name=\"Procedure.location\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">0</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"http://hl7.org/fhir/us/core/STU4/StructureDefinition-us-core-location.html\">US Core Location Profile</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Where the procedure happened</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck13.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.focalDevice\">Slices for focalDevice</a><a name=\"Procedure.focalDevice\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"opacity: 0.5; font-style: italic\">0</span><span style=\"opacity: 0.5; font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/datatypes.html#BackboneElement\">BackboneElement</a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">Manipulated, implanted, or removed device</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by profile:manipulated.resolve()</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck125.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.focalDevice:seedDevice\" title=\"Slice seedDevice\">focalDevice:seedDevice</a><a name=\"Procedure.focalDevice\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"opacity: 0.5\" href=\"http://hl7.org/fhir/R4/datatypes.html#BackboneElement\">BackboneElement</a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Radiotherapy Seed Device used as part of therapy.<br/></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck1240.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vline.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slice.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_reference.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Reference to another Resource\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.focalDevice:seedDevice.manipulated\">manipulated</a><a name=\"Procedure.focalDevice.manipulated\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"/><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">1</span><span style=\"opacity: 0.5\">..</span><span style=\"opacity: 0.5\">1</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-seed-device.html\">Radiotherapy Seed Device</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5\">Device that was changed</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: white\"><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck03.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice.png\" alt=\".\" style=\"background-color: white; background-color: inherit\" title=\"Slice Definition\" class=\"hierarchy\"/> <a style=\"font-style: italic\" href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.usedReference\">Slices for usedReference</a><a name=\"Procedure.usedReference\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red; font-style: italic\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"font-style: italic\"/><span style=\"opacity: 0.5; font-style: italic\">0</span><span style=\"opacity: 0.5; font-style: italic\">..</span><span style=\"opacity: 0.5; font-style: italic\">*</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a style=\"font-style: italic\" href=\"http://hl7.org/fhir/R4/references.html\">Reference</a><span style=\"font-style: italic\">(</span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/device.html\">Device</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/medication.html\">Medication</a><span style=\"font-style: italic\"> | </span><a style=\"opacity: 0.5; font-style: italic\" href=\"http://hl7.org/fhir/R4/substance.html\">Substance</a><span style=\"font-style: italic\">)</span></td><td style=\"vertical-align: top; text-align : left; background-color: white; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"opacity: 0.5; font-style: italic\">Items used during procedure</span><br style=\"font-style: italic\"/><span style=\"font-weight:bold; font-style: italic\">Slice: </span><span style=\"font-style: italic\">Unordered, Open by profile:$this.resolve()</span></td></tr>\r\n<tr style=\"border: 0px #F0F0F0 solid; padding:0px; vertical-align: top; background-color: #F7F7F7\"><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px; white-space: nowrap; background-image: url(tbl_bck024.png)\" class=\"hierarchy\"><img src=\"tbl_spacer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_blank.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"tbl_vjoin_end_slicer.png\" alt=\".\" style=\"background-color: inherit\" class=\"hierarchy\"/><img src=\"icon_slice_item.png\" alt=\".\" style=\"background-color: #F7F7F7; background-color: inherit\" title=\"Slice Item\" class=\"hierarchy\"/> <a href=\"StructureDefinition-codexrt-radiotherapy-course-summary-definitions.html#Procedure.usedReference:treatmentDevice\" title=\"Slice treatmentDevice\">usedReference:treatmentDevice</a><a name=\"Procedure.usedReference\"> </a></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><span style=\"padding-left: 3px; padding-right: 3px; color: white; background-color: red\" title=\"This element must be supported\">S</span></td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">0..*</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\"><a href=\"http://hl7.org/fhir/R4/references.html\">Reference</a>(<a href=\"StructureDefinition-codexrt-radiotherapy-treatment-device.html\">Radiotherapy Treatment Device</a>)</td><td style=\"vertical-align: top; text-align : left; background-color: #F7F7F7; border: 0px #F0F0F0 solid; padding:0px 4px 0px 4px\" class=\"hierarchy\">Radiotherapy Treatment Device used as part of therapy.<br/></td></tr>\r\n<tr><td colspan=\"5\" class=\"hierarchy\"><br/><a href=\"http://hl7.org/fhir/R4/formats.html#table\" title=\"Legend for this format\"><img src=\"http://hl7.org/fhir/R4/help16.png\" alt=\"doco\" style=\"background-color: inherit\"/> Documentation for this format</a></td></tr></table></div>"
  },
  "url": "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary",
  "version": "1.0.0-ballot",
  "name": "RadiotherapyCourseSummary",
  "title": "Radiotherapy Course Summary",
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
  "description": "A summary of the treatment progress in a radiotherapy course.\nWhenever new contributions in the scope of the same course are delivered, this resource is updated (no new resource created).",
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
      "identity": "v2",
      "uri": "http://hl7.org/v2",
      "name": "HL7 v2 Mapping"
    }
  ],
  "kind": "resource",
  "abstract": false,
  "type": "Procedure",
  "baseDefinition": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary",
  "derivation": "constraint",
  "snapshot": {
    "element": [
      {
        "id": "Procedure",
        "path": "Procedure",
        "short": "An action that is being or was performed on a patient",
        "definition": "The US Core Condition Profile is based upon the core FHIR Procedure Resource and created to meet the 2015 Edition Common Clinical Data Set 'Procedures' requirements.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure",
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
            "key": "mcode-reason-required",
            "severity": "warning",
            "human": "One of reasonCode or reasonReference SHALL be present",
            "expression": "reasonCode.exists() or reasonReference.exists()",
            "source": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-course-summary"
          },
          {
            "key": "codexrt-procedure-status",
            "severity": "error",
            "human": "Only the following status values are supported: in-progress | not-done | on-hold | stopped | completed",
            "expression": "status = 'in-progress' or status = 'not-done' or status = 'on-hold' or status = 'stopped' or status = 'completed'",
            "source": "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary"
          }
        ],
        "mustSupport": false,
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "Entity. Role, or Act"
          },
          {
            "identity": "workflow",
            "map": "Event"
          },
          {
            "identity": "rim",
            "map": "Procedure[moodCode=EVN]"
          },
          {
            "identity": "argonaut-dq-dstu2",
            "map": "Procedure"
          }
        ]
      },
      {
        "id": "Procedure.id",
        "path": "Procedure.id",
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
        "id": "Procedure.meta",
        "path": "Procedure.meta",
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
        "id": "Procedure.implicitRules",
        "path": "Procedure.implicitRules",
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
        "id": "Procedure.language",
        "path": "Procedure.language",
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
        "id": "Procedure.text",
        "path": "Procedure.text",
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
        "id": "Procedure.contained",
        "path": "Procedure.contained",
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
        "id": "Procedure.extension",
        "path": "Procedure.extension",
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
        "min": 0,
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
        "id": "Procedure.extension:treatmentIntent",
        "path": "Procedure.extension",
        "sliceName": "treatmentIntent",
        "short": "Procedure Intent Extension",
        "definition": "The purpose of a treatment, medication, or procedure.",
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
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-procedure-intent"
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
        "id": "Procedure.extension:terminationReason",
        "path": "Procedure.extension",
        "sliceName": "terminationReason",
        "short": "Treatment Termination Reason Extension",
        "definition": "A code explaining the unplanned or premature termination, or normal completion, of a plan of treatment, course of medication, or research study.",
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
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-treatment-termination-reason"
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
        "id": "Procedure.extension:modalityAndTechnique",
        "path": "Procedure.extension",
        "sliceName": "modalityAndTechnique",
        "short": "Radiotherapy Modality And Technique Extension",
        "definition": "Extension capturing modality and technique of a given radiotherapy procedure.  The allowed combinations of modality and technique are constrained by invariants, one per modality.",
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
        "id": "Procedure.extension:modalityAndTechnique.id",
        "path": "Procedure.extension.id",
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
        "id": "Procedure.extension:modalityAndTechnique.extension",
        "path": "Procedure.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality",
        "path": "Procedure.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.id",
        "path": "Procedure.extension.extension.id",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.extension",
        "path": "Procedure.extension.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.extension.id",
        "path": "Procedure.extension.extension.extension.id",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.extension.extension",
        "path": "Procedure.extension.extension.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.extension.url",
        "path": "Procedure.extension.extension.extension.url",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.extension.value[x]",
        "path": "Procedure.extension.extension.extension.value[x]",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.url",
        "path": "Procedure.extension.extension.url",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:modality.value[x]",
        "path": "Procedure.extension.extension.value[x]",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique",
        "path": "Procedure.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.id",
        "path": "Procedure.extension.extension.id",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.extension",
        "path": "Procedure.extension.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.extension.id",
        "path": "Procedure.extension.extension.extension.id",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.extension.extension",
        "path": "Procedure.extension.extension.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.extension.url",
        "path": "Procedure.extension.extension.extension.url",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.extension.value[x]",
        "path": "Procedure.extension.extension.extension.value[x]",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.url",
        "path": "Procedure.extension.extension.url",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:technique.value[x]",
        "path": "Procedure.extension.extension.value[x]",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:radiotherapyEnergyOrIsotope",
        "path": "Procedure.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:radiotherapyTreatmentApplicatorType",
        "path": "Procedure.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.url",
        "path": "Procedure.extension.url",
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
        "id": "Procedure.extension:modalityAndTechnique.value[x]",
        "path": "Procedure.extension.value[x]",
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
        "id": "Procedure.extension:actualNumberOfSessions",
        "path": "Procedure.extension",
        "sliceName": "actualNumberOfSessions",
        "short": "Radiotherapy Number of Sessions Extension",
        "definition": "The number of sessions in a course of radiotherapy.",
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
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-sessions"
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
        "id": "Procedure.extension:doseDeliveredToVolume",
        "path": "Procedure.extension",
        "sliceName": "doseDeliveredToVolume",
        "short": "Radiotherapy Dose Delivered To Volume Extension",
        "definition": "Dose delivered to a given radiotherapy volume.",
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
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume"
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
        "id": "Procedure.extension:doseDeliveredToVolume.id",
        "path": "Procedure.extension.id",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension",
        "path": "Procedure.extension.extension",
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
        "min": 2,
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:volume",
        "path": "Procedure.extension.extension",
        "sliceName": "volume",
        "short": "Volume in the body where radiation was delivered",
        "definition": "A BodyStructure resource representing volume in the body where radiation was delivered, for example, Chest Wall Lymph Nodes.",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:volume.id",
        "path": "Procedure.extension.extension.id",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:volume.extension",
        "path": "Procedure.extension.extension.extension",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:volume.url",
        "path": "Procedure.extension.extension.url",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:volume.value[x]",
        "path": "Procedure.extension.extension.value[x]",
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
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-volume"
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:totalDoseDelivered",
        "path": "Procedure.extension.extension",
        "sliceName": "totalDoseDelivered",
        "short": "Total Radiation Dose Delivered",
        "definition": "The total amount of radiation delivered to this volume within the scope of this dose delivery, i.e., dose delivered from the Procedure in which this extension is used.",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:totalDoseDelivered.id",
        "path": "Procedure.extension.extension.id",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:totalDoseDelivered.extension",
        "path": "Procedure.extension.extension.extension",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:totalDoseDelivered.url",
        "path": "Procedure.extension.extension.url",
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
        "fixedUri": "totalDoseDelivered",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:totalDoseDelivered.value[x]",
        "path": "Procedure.extension.extension.value[x]",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:totalDoseDelivered.value[x]:valueQuantity",
        "path": "Procedure.extension.extension.value[x]",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:fractionsDelivered",
        "path": "Procedure.extension.extension",
        "sliceName": "fractionsDelivered",
        "short": "Number of Fractions Delivered",
        "definition": "The number of fractions delivered to this volume.",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:fractionsDelivered.id",
        "path": "Procedure.extension.extension.id",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:fractionsDelivered.extension",
        "path": "Procedure.extension.extension.extension",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:fractionsDelivered.url",
        "path": "Procedure.extension.extension.url",
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
        "fixedUri": "fractionsDelivered",
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
        "id": "Procedure.extension:doseDeliveredToVolume.extension:fractionsDelivered.value[x]",
        "path": "Procedure.extension.extension.value[x]",
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
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": "N/A"
          }
        ]
      },
      {
        "id": "Procedure.extension:doseDeliveredToVolume.extension:uniformFractionation",
        "path": "Procedure.extension.extension",
        "sliceName": "uniformFractionation",
        "short": "Uniform Fractionation",
        "definition": "This flag is true if the fractionation was uniform (i.e., treated with same modality and dose per fraction) and false if the fractionation was mixed. Treatment technique may vary in uniform fractionation.\nIf the fractionation was uniform, then the correspondence between the physical and biologically effective dose can be determined at the course level.\nIf the fractionation was not uniform, then the correspondence between the physical and biologically effective dose has to be determined per the phase level.\nThe flag was introduced to support determination of whether fractionation was uniform when viewing the Radiotherapy Course Summary (without first checking the details of each treatment phase).\nThis is important in registry use cases to efficiently assess whether checking phase level information is needed.",
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
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
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
        "id": "Procedure.extension:doseDeliveredToVolume.url",
        "path": "Procedure.extension.url",
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
        "fixedUri": "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-radiotherapy-dose-delivered-to-volume",
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
        "id": "Procedure.extension:doseDeliveredToVolume.value[x]",
        "path": "Procedure.extension.value[x]",
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
        "id": "Procedure.modifierExtension",
        "path": "Procedure.modifierExtension",
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
        "id": "Procedure.identifier",
        "path": "Procedure.identifier",
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
        "short": "External Identifiers for this procedure",
        "definition": "SHALL have a display name with use = usual and at least one globally unique technical identifier, for example, the Conceptual Volume UID used in DICOM.",
        "comment": "This is a business identifier, not a resource identifier (see [discussion](http://hl7.org/fhir/R4/resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and Person resource instances might share the same social insurance number.",
        "requirements": "Allows identification of the procedure as it is known by various participating systems and in a way that remains consistent across servers.",
        "min": 2,
        "max": "*",
        "base": {
          "path": "Procedure.identifier",
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
            "map": "Event.identifier"
          },
          {
            "identity": "w5",
            "map": "FiveWs.identifier"
          },
          {
            "identity": "v2",
            "map": "Some combination of ORC-2 / ORC-3 / OBR-2 / OBR-3 / IPC-1 / IPC-2 / IPC-3 / IPC-4"
          },
          {
            "identity": "rim",
            "map": ".id"
          }
        ]
      },
      {
        "id": "Procedure.identifier:displayName",
        "path": "Procedure.identifier",
        "sliceName": "displayName",
        "short": "The name that is displayed to the user.",
        "definition": "Business identifiers assigned to this procedure by the performer or other systems which remain constant as the resource is updated and is propagated from server to server.",
        "comment": "This is a business identifier, not a resource identifier (see [discussion](http://hl7.org/fhir/R4/resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and Person resource instances might share the same social insurance number.",
        "requirements": "Allows identification of the procedure as it is known by various participating systems and in a way that remains consistent across servers.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.identifier",
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
            "map": "Event.identifier"
          },
          {
            "identity": "w5",
            "map": "FiveWs.identifier"
          },
          {
            "identity": "v2",
            "map": "Some combination of ORC-2 / ORC-3 / OBR-2 / OBR-3 / IPC-1 / IPC-2 / IPC-3 / IPC-4"
          },
          {
            "identity": "rim",
            "map": ".id"
          }
        ]
      },
      {
        "id": "Procedure.identifier:displayName.id",
        "path": "Procedure.identifier.id",
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
        "id": "Procedure.identifier:displayName.extension",
        "path": "Procedure.identifier.extension",
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
        "id": "Procedure.identifier:displayName.use",
        "path": "Procedure.identifier.use",
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
        "id": "Procedure.identifier:displayName.type",
        "path": "Procedure.identifier.type",
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
        "id": "Procedure.identifier:displayName.system",
        "path": "Procedure.identifier.system",
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
        "id": "Procedure.identifier:displayName.value",
        "path": "Procedure.identifier.value",
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
        "id": "Procedure.identifier:displayName.period",
        "path": "Procedure.identifier.period",
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
        "id": "Procedure.identifier:displayName.assigner",
        "path": "Procedure.identifier.assigner",
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
        "id": "Procedure.identifier:official",
        "path": "Procedure.identifier",
        "sliceName": "official",
        "short": "A business identifier for the request or procedure, which is independent of its FHIR representation, such as a GUID or DICOM UID.",
        "definition": "Business identifiers assigned to this procedure by the performer or other systems which remain constant as the resource is updated and is propagated from server to server.",
        "comment": "This is a business identifier, not a resource identifier (see [discussion](http://hl7.org/fhir/R4/resource.html#identifiers)).  It is best practice for the identifier to only appear on a single resource instance, however business practices may occasionally dictate that multiple resource instances with the same identifier can exist - possibly even with different resource types.  For example, multiple Patient and Person resource instances might share the same social insurance number.",
        "requirements": "Allows identification of the procedure as it is known by various participating systems and in a way that remains consistent across servers.",
        "min": 1,
        "max": "*",
        "base": {
          "path": "Procedure.identifier",
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
            "map": "Event.identifier"
          },
          {
            "identity": "w5",
            "map": "FiveWs.identifier"
          },
          {
            "identity": "v2",
            "map": "Some combination of ORC-2 / ORC-3 / OBR-2 / OBR-3 / IPC-1 / IPC-2 / IPC-3 / IPC-4"
          },
          {
            "identity": "rim",
            "map": ".id"
          }
        ]
      },
      {
        "id": "Procedure.identifier:official.id",
        "path": "Procedure.identifier.id",
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
        "id": "Procedure.identifier:official.extension",
        "path": "Procedure.identifier.extension",
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
        "id": "Procedure.identifier:official.use",
        "path": "Procedure.identifier.use",
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
        "id": "Procedure.identifier:official.type",
        "path": "Procedure.identifier.type",
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
        "id": "Procedure.identifier:official.system",
        "path": "Procedure.identifier.system",
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
        "id": "Procedure.identifier:official.value",
        "path": "Procedure.identifier.value",
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
        "id": "Procedure.identifier:official.period",
        "path": "Procedure.identifier.period",
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
        "id": "Procedure.identifier:official.assigner",
        "path": "Procedure.identifier.assigner",
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
        "id": "Procedure.instantiatesCanonical",
        "path": "Procedure.instantiatesCanonical",
        "short": "Instantiates FHIR protocol or definition",
        "definition": "The URL pointing to a FHIR-defined protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.instantiatesCanonical",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "canonical",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/PlanDefinition",
              "http://hl7.org/fhir/StructureDefinition/ActivityDefinition",
              "http://hl7.org/fhir/StructureDefinition/Measure",
              "http://hl7.org/fhir/StructureDefinition/OperationDefinition",
              "http://hl7.org/fhir/StructureDefinition/Questionnaire"
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
            "map": "Event.instantiatesCanonical"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=DEFN].target"
          }
        ]
      },
      {
        "id": "Procedure.instantiatesUri",
        "path": "Procedure.instantiatesUri",
        "short": "Instantiates external protocol or definition",
        "definition": "The URL pointing to an externally maintained protocol, guideline, order set or other definition that is adhered to in whole or in part by this Procedure.",
        "comment": "This might be an HTML page, PDF, etc. or could just be a non-resolvable URI identifier.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.instantiatesUri",
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
            "map": "Event.instantiatesUri"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=DEFN].target"
          }
        ]
      },
      {
        "id": "Procedure.basedOn",
        "path": "Procedure.basedOn",
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
        "short": "A request for this procedure",
        "definition": "A reference to a resource that contains details of the request for this procedure.",
        "alias": [
          "fulfills"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.basedOn",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/CarePlan",
              "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
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
            "map": "Event.basedOn"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=FLFS].target[classCode=(various e.g. PROC, OBS, PCPR, ACT,  moodCode=RQO].code"
          }
        ]
      },
      {
        "id": "Procedure.basedOn:planned-course",
        "path": "Procedure.basedOn",
        "sliceName": "planned-course",
        "short": "Radiotherapy Planned Course that planned the treatment summarized in this Radiotherapy Course Summary.",
        "definition": "A reference to a resource that contains details of the request for this procedure.",
        "alias": [
          "fulfills"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.basedOn",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-course"
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
            "map": "Event.basedOn"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=FLFS].target[classCode=(various e.g. PROC, OBS, PCPR, ACT,  moodCode=RQO].code"
          }
        ]
      },
      {
        "id": "Procedure.basedOn:course-prescription",
        "path": "Procedure.basedOn",
        "sliceName": "course-prescription",
        "short": "Radiotherapy Course Prescription that prescribed the treatment summarized in this Radiotherapy Course Summary.",
        "definition": "A reference to a resource that contains details of the request for this procedure.",
        "alias": [
          "fulfills"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.basedOn",
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
            "map": "Event.basedOn"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=FLFS].target[classCode=(various e.g. PROC, OBS, PCPR, ACT,  moodCode=RQO].code"
          }
        ]
      },
      {
        "id": "Procedure.partOf",
        "path": "Procedure.partOf",
        "short": "Part of referenced event",
        "definition": "A larger event of which this particular procedure is a component or step.",
        "comment": "The MedicationAdministration resource has a partOf reference to Procedure, but this is not a circular reference.   For example, the anesthesia MedicationAdministration is part of the surgical Procedure (MedicationAdministration.partOf = Procedure).  For example, the procedure to insert the IV port for an IV medication administration is part of the medication administration (Procedure.partOf = MedicationAdministration).",
        "alias": [
          "container"
        ],
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.partOf",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Procedure",
              "http://hl7.org/fhir/StructureDefinition/Observation",
              "http://hl7.org/fhir/StructureDefinition/MedicationAdministration"
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
            "map": "Event.partOf"
          },
          {
            "identity": "rim",
            "map": ".inboundRelationship[typeCode=COMP].source[classCode=SBADM or PROC or OBS, moodCode=EVN]"
          }
        ]
      },
      {
        "id": "Procedure.status",
        "path": "Procedure.status",
        "short": "preparation | in-progress | not-done | on-hold | stopped | completed | entered-in-error | unknown",
        "definition": "A code specifying the state of the procedure. Generally, this will be the in-progress or completed state.",
        "comment": "The \"unknown\" code is not to be used to convey other statuses.  The \"unknown\" code should be used when one of the statuses applies, but the authoring system doesn't know the current state of the procedure.\n\nThis element is labeled as a modifier because the status contains codes that mark the resource as not currently valid.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.status",
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
        "isModifierReason": "This element is labelled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid",
        "isSummary": true,
        "binding": {
          "strength": "required",
          "valueSet": "http://hl7.org/fhir/ValueSet/event-status"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Event.status"
          },
          {
            "identity": "w5",
            "map": "FiveWs.status"
          },
          {
            "identity": "rim",
            "map": "statusCode"
          },
          {
            "identity": "argonaut-dq-dstu2",
            "map": "Procedure.status"
          }
        ]
      },
      {
        "id": "Procedure.statusReason",
        "path": "Procedure.statusReason",
        "short": "Reason for current status",
        "definition": "Captures the reason for the current state of the procedure.",
        "comment": "This is generally only used for \"exception\" statuses such as \"not-done\", \"suspended\" or \"aborted\". The reason for performing the event at all is captured in reasonCode, not here.",
        "alias": [
          "Suspended Reason",
          "Cancelled Reason"
        ],
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.statusReason",
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
              "valueString": "ProcedureNegationReason"
            }
          ],
          "strength": "example",
          "description": "A code that identifies the reason a procedure was not performed.",
          "valueSet": "http://hl7.org/fhir/ValueSet/procedure-not-performed-reason"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Event.statusReason"
          },
          {
            "identity": "rim",
            "map": ".reason.Observation.value"
          }
        ]
      },
      {
        "id": "Procedure.category",
        "path": "Procedure.category",
        "short": "Classification of the procedure",
        "definition": "A code that classifies the procedure for searching, sorting and display purposes (e.g. \"Surgical Procedure\").",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.category",
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
              "system": "http://snomed.info/sct",
              "code": "108290001"
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
              "valueString": "ProcedureCategory"
            }
          ],
          "strength": "example",
          "description": "A code that classifies a procedure for searching, sorting and display purposes.",
          "valueSet": "http://hl7.org/fhir/ValueSet/procedure-category"
        },
        "mapping": [
          {
            "identity": "w5",
            "map": "FiveWs.class"
          },
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=\"COMP].target[classCode=\"LIST\", moodCode=\"EVN\"].code"
          }
        ]
      },
      {
        "id": "Procedure.code",
        "path": "Procedure.code",
        "short": "Identification of the procedure",
        "definition": "The specific procedure that is performed. Use text if the exact nature of the procedure cannot be coded (e.g. \"Laparoscopic Appendectomy\").",
        "requirements": "0..1 to account for primarily narrative only resources.",
        "alias": [
          "type"
        ],
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.code",
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
              "system": "http://hl7.org/fhir/us/mcode/CodeSystem/snomed-requested-cs",
              "code": "USCRS-33529"
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
          "strength": "extensible",
          "description": "Codes describing the type of  Procedure",
          "valueSet": "http://hl7.org/fhir/us/core/ValueSet/us-core-procedure-code"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Event.code"
          },
          {
            "identity": "w5",
            "map": "FiveWs.what[x]"
          },
          {
            "identity": "v2",
            "map": "OBR-44/OBR-45"
          },
          {
            "identity": "rim",
            "map": ".code"
          },
          {
            "identity": "argonaut-dq-dstu2",
            "map": "Procedure.code"
          }
        ]
      },
      {
        "id": "Procedure.subject",
        "path": "Procedure.subject",
        "short": "Who the procedure was performed on",
        "definition": "The patient on whom the procedure was performed.",
        "alias": [
          "patient"
        ],
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.subject",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
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
            "map": "Event.subject"
          },
          {
            "identity": "w5",
            "map": "FiveWs.subject[x]"
          },
          {
            "identity": "v2",
            "map": "PID-3"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=SBJ].role"
          },
          {
            "identity": "w5",
            "map": "FiveWs.subject"
          },
          {
            "identity": "argonaut-dq-dstu2",
            "map": "Procedure.subject"
          }
        ]
      },
      {
        "id": "Procedure.encounter",
        "path": "Procedure.encounter",
        "short": "Encounter created as part of",
        "definition": "The Encounter during which this Procedure was created or performed or to which the creation of this record is tightly associated.",
        "comment": "This will typically be the encounter the event occurred within, but some activities may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.encounter",
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
            "map": "Event.context"
          },
          {
            "identity": "w5",
            "map": "FiveWs.context"
          },
          {
            "identity": "v2",
            "map": "PV1-19"
          },
          {
            "identity": "rim",
            "map": ".inboundRelationship[typeCode=COMP].source[classCode=ENC, moodCode=EVN]"
          }
        ]
      },
      {
        "id": "Procedure.performed[x]",
        "path": "Procedure.performed[x]",
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
        "short": "When the procedure was performed",
        "definition": "Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.",
        "comment": "Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.performed[x]",
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
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Event.occurrence[x]"
          },
          {
            "identity": "w5",
            "map": "FiveWs.done[x]"
          },
          {
            "identity": "v2",
            "map": "OBR-7"
          },
          {
            "identity": "rim",
            "map": ".effectiveTime"
          },
          {
            "identity": "argonaut-dq-dstu2",
            "map": "Procedure.performed[x]"
          }
        ]
      },
      {
        "id": "Procedure.performed[x]:performedPeriod",
        "path": "Procedure.performed[x]",
        "sliceName": "performedPeriod",
        "short": "When the procedure was performed",
        "definition": "Estimated or actual date, date-time, period, or age when the procedure was performed.  Allows a period to support complex procedures that span more than one date, and also allows for the length of the procedure to be captured.",
        "comment": "Age is generally used when the patient reports an age at which the procedure was performed. Range is generally used when the patient reports an age range when the procedure was performed, such as sometime between 20-25 years old.  dateTime supports a range of precision due to some procedures being reported as past procedures that might not have millisecond precision while other procedures performed and documented during the encounter might have more precise UTC timestamps with timezone.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.performed[x]",
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
        "mustSupport": true,
        "isModifier": false,
        "isSummary": true,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Event.occurrence[x]"
          },
          {
            "identity": "w5",
            "map": "FiveWs.done[x]"
          },
          {
            "identity": "v2",
            "map": "OBR-7"
          },
          {
            "identity": "rim",
            "map": ".effectiveTime"
          },
          {
            "identity": "argonaut-dq-dstu2",
            "map": "Procedure.performed[x]"
          }
        ]
      },
      {
        "id": "Procedure.performed[x]:performedPeriod.id",
        "path": "Procedure.performed[x].id",
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
        "id": "Procedure.performed[x]:performedPeriod.extension",
        "path": "Procedure.performed[x].extension",
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
        "id": "Procedure.performed[x]:performedPeriod.start",
        "path": "Procedure.performed[x].start",
        "short": "The date and time when the first therapeutic radiation was delivered.",
        "definition": "The start of the period. The boundary is inclusive.",
        "comment": "If the low element is missing, the meaning is that the low boundary is not known.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Period.start",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "dateTime"
          }
        ],
        "condition": [
          "per-1"
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
            "map": "DR.1"
          },
          {
            "identity": "rim",
            "map": "./low"
          }
        ]
      },
      {
        "id": "Procedure.performed[x]:performedPeriod.end",
        "path": "Procedure.performed[x].end",
        "short": "An end date is expected if the status is 'stopped' or 'completed'",
        "definition": "The end of the period. If the end of the period is missing, it means no end was known or planned at the time the instance was created. The start may be in the past, and the end date in the future, which means that period is expected/planned to end at that time.",
        "comment": "The high value includes any matching date/time. i.e. 2012-02-03T10:00:00 is in a period that has an end value of 2012-02-03.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Period.end",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "dateTime"
          }
        ],
        "meaningWhenMissing": "If the end of the period is missing, it means that the period is ongoing",
        "condition": [
          "per-1"
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
            "map": "DR.2"
          },
          {
            "identity": "rim",
            "map": "./high"
          }
        ]
      },
      {
        "id": "Procedure.recorder",
        "path": "Procedure.recorder",
        "short": "Who recorded the procedure",
        "definition": "Individual who recorded the record and takes responsibility for its content.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.recorder",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole"
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
            "identity": "w5",
            "map": "FiveWs.author"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=AUT].role"
          }
        ]
      },
      {
        "id": "Procedure.asserter",
        "path": "Procedure.asserter",
        "short": "Person who asserts this procedure",
        "definition": "Individual who is making the procedure statement.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.asserter",
          "min": 0,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole"
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
            "identity": "w5",
            "map": "FiveWs.source"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=INF].role"
          }
        ]
      },
      {
        "id": "Procedure.performer",
        "path": "Procedure.performer",
        "short": "The people who performed the procedure",
        "definition": "Limited to \"real\" people rather than equipment.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.performer",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "BackboneElement"
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
            "map": "Event.performer"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=PRF]"
          }
        ]
      },
      {
        "id": "Procedure.performer.id",
        "path": "Procedure.performer.id",
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
        "id": "Procedure.performer.extension",
        "path": "Procedure.performer.extension",
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
        "id": "Procedure.performer.modifierExtension",
        "path": "Procedure.performer.modifierExtension",
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
        "id": "Procedure.performer.function",
        "path": "Procedure.performer.function",
        "short": "Type of performance",
        "definition": "Distinguishes the type of involvement of the performer in the procedure. For example, surgeon, anaesthetist, endoscopist.",
        "requirements": "Allows disambiguation of the types of involvement of different performers.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.performer.function",
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
              "valueString": "ProcedurePerformerRole"
            }
          ],
          "strength": "example",
          "description": "A code that identifies the role of a performer of the procedure.",
          "valueSet": "http://hl7.org/fhir/ValueSet/performer-role"
        },
        "mapping": [
          {
            "identity": "workflow",
            "map": "Event.performer.function"
          },
          {
            "identity": "v2",
            "map": "Some combination of STF-18 / PRA-3 / PRT-4 / ROL-3 / ORC-12 / OBR-16 / PV1-7 / PV1-8 / PV1-9 / PV1-17 / OBX-25"
          },
          {
            "identity": "rim",
            "map": ".functionCode"
          }
        ]
      },
      {
        "id": "Procedure.performer.actor",
        "path": "Procedure.performer.actor",
        "short": "The reference to the practitioner",
        "definition": "The practitioner who was involved in the procedure.",
        "requirements": "A reference to Device supports use cases, such as pacemakers.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.performer.actor",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Practitioner",
              "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
              "http://hl7.org/fhir/StructureDefinition/Organization",
              "http://hl7.org/fhir/StructureDefinition/Patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "http://hl7.org/fhir/StructureDefinition/Device"
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
            "map": "Event.performer.actor"
          },
          {
            "identity": "w5",
            "map": "FiveWs.actor"
          },
          {
            "identity": "v2",
            "map": "ORC-19/PRT-5"
          },
          {
            "identity": "rim",
            "map": ".role"
          }
        ]
      },
      {
        "id": "Procedure.performer.onBehalfOf",
        "path": "Procedure.performer.onBehalfOf",
        "short": "Organization the device or practitioner was acting for",
        "definition": "The organization the device or practitioner was acting on behalf of.",
        "requirements": "Practitioners and Devices can be associated with multiple organizations.  This element indicates which organization they were acting on behalf of when performing the action.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.performer.onBehalfOf",
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
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": ".scoper"
          }
        ]
      },
      {
        "id": "Procedure.location",
        "path": "Procedure.location",
        "short": "Where the procedure happened",
        "definition": "The location where the procedure actually happened.  E.g. a newborn at home, a tracheostomy at a restaurant.",
        "requirements": "Ties a procedure to where the records are likely kept.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.location",
          "min": 0,
          "max": "1"
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
            "map": "FiveWs.where[x]"
          },
          {
            "identity": "rim",
            "map": ".participation[typeCode=LOC].role[classCode=SDLOC]"
          }
        ]
      },
      {
        "id": "Procedure.reasonCode",
        "path": "Procedure.reasonCode",
        "short": "Coded reason procedure performed",
        "definition": "The coded reason why the procedure was performed. This may be a coded entity of some type, or may simply be present as text.",
        "comment": "Use Procedure.reasonCode when a code sufficiently describes the reason.  Use Procedure.reasonReference when referencing a resource, which allows more information to be conveyed, such as onset date. Procedure.reasonCode and Procedure.reasonReference are not meant to be duplicative.  For a single reason, either Procedure.reasonCode or Procedure.reasonReference can be used.  Procedure.reasonCode may be a summary code, or Procedure.reasonReference may be used to reference a very precise definition of the reason using Condition | Observation | Procedure | DiagnosticReport | DocumentReference.  Both Procedure.reasonCode and Procedure.reasonReference can be used if they are describing different reasons for the procedure.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.reasonCode",
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
            "map": "Event.reasonCode"
          },
          {
            "identity": "w5",
            "map": "FiveWs.why[x]"
          },
          {
            "identity": "rim",
            "map": ".reasonCode"
          }
        ]
      },
      {
        "id": "Procedure.reasonReference",
        "path": "Procedure.reasonReference",
        "short": "The justification that the procedure was performed",
        "definition": "The justification of why the procedure was performed.",
        "comment": "It is possible for a procedure to be a reason (such as C-Section) for another procedure (such as an epidural). Other examples include endoscopy for dilatation and biopsy (a combination of diagnostic and therapeutic use). \nUse Procedure.reasonCode when a code sufficiently describes the reason.  Use Procedure.reasonReference when referencing a resource, which allows more information to be conveyed, such as onset date. Procedure.reasonCode and Procedure.reasonReference are not meant to be duplicative.  For a single reason, either Procedure.reasonCode or Procedure.reasonReference can be used.  Procedure.reasonCode may be a summary code, or Procedure.reasonReference may be used to reference a very precise definition of the reason using Condition | Observation | Procedure | DiagnosticReport | DocumentReference.  Both Procedure.reasonCode and Procedure.reasonReference can be used if they are describing different reasons for the procedure.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.reasonReference",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition",
              "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-secondary-cancer-condition"
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
            "map": "Event.reasonReference"
          },
          {
            "identity": "w5",
            "map": "FiveWs.why[x]"
          },
          {
            "identity": "rim",
            "map": ".reasonCode"
          }
        ]
      },
      {
        "id": "Procedure.bodySite",
        "path": "Procedure.bodySite",
        "short": "All body structure(s) treated",
        "definition": "Coded body structure(s) treated in this course of radiotherapy. These codes represent general locations. For additional detail, refer to the BodyStructures references in the doseDeliveredToVolume extension.",
        "comment": "If the use case requires attributes from the BodySite resource (e.g. to identify and track separately) then use the standard extension [procedure-targetbodystructure](http://hl7.org/fhir/R4/extension-procedure-targetbodystructure.html).",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.bodySite",
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
            "map": "OBX-20"
          },
          {
            "identity": "rim",
            "map": ".targetSiteCode"
          }
        ]
      },
      {
        "id": "Procedure.outcome",
        "path": "Procedure.outcome",
        "short": "The result of procedure",
        "definition": "The outcome of the procedure - did it resolve the reasons for the procedure being performed?",
        "comment": "If outcome contains narrative text only, it can be captured using the CodeableConcept.text.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.outcome",
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
              "valueString": "ProcedureOutcome"
            }
          ],
          "strength": "example",
          "description": "An outcome of a procedure - whether it was resolved or otherwise.",
          "valueSet": "http://hl7.org/fhir/ValueSet/procedure-outcome"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=OUT].target.text"
          }
        ]
      },
      {
        "id": "Procedure.report",
        "path": "Procedure.report",
        "short": "Any report resulting from the procedure",
        "definition": "This could be a histology result, pathology report, surgical report, etc.",
        "comment": "There could potentially be multiple reports - e.g. if this was a procedure which took multiple biopsies resulting in a number of anatomical pathology reports.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.report",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/DiagnosticReport",
              "http://hl7.org/fhir/StructureDefinition/DocumentReference",
              "http://hl7.org/fhir/StructureDefinition/Composition"
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
            "map": ".inboundRelationship[typeCode=SUBJ].source[classCode=OBS, moodCode=EVN]"
          }
        ]
      },
      {
        "id": "Procedure.complication",
        "path": "Procedure.complication",
        "short": "Complication following the procedure",
        "definition": "Any complications that occurred during the procedure, or in the immediate post-performance period. These are generally tracked separately from the notes, which will typically describe the procedure itself rather than any 'post procedure' issues.",
        "comment": "If complications are only expressed by the narrative text, they can be captured using the CodeableConcept.text.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.complication",
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
        "isSummary": false,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ProcedureComplication"
            }
          ],
          "strength": "example",
          "description": "Codes describing complications that resulted from a procedure.",
          "valueSet": "http://hl7.org/fhir/ValueSet/condition-code"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=OUTC].target[classCode=OBS, code=\"complication\", moodCode=EVN].value"
          }
        ]
      },
      {
        "id": "Procedure.complicationDetail",
        "path": "Procedure.complicationDetail",
        "short": "A condition that is a result of the procedure",
        "definition": "Any complications that occurred during the procedure, or in the immediate post-performance period.",
        "requirements": "This is used to document a condition that is a result of the procedure, not the condition that was the reason for the procedure.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.complicationDetail",
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
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=OUTC].target[classCode=OBS, code=\"complication\", moodCode=EVN].value"
          }
        ]
      },
      {
        "id": "Procedure.followUp",
        "path": "Procedure.followUp",
        "short": "Instructions for follow up",
        "definition": "If the procedure required specific follow up - e.g. removal of sutures. The follow up may be represented as a simple note or could potentially be more complex, in which case the CarePlan resource can be used.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.followUp",
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
        "isSummary": false,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ProcedureFollowUp"
            }
          ],
          "strength": "example",
          "description": "Specific follow up required for a procedure e.g. removal of sutures.",
          "valueSet": "http://hl7.org/fhir/ValueSet/procedure-followup"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": ".outboundRelationship[typeCode=COMP].target[classCode=ACT, moodCode=INT].code"
          }
        ]
      },
      {
        "id": "Procedure.note",
        "path": "Procedure.note",
        "short": "Additional information about the procedure",
        "definition": "Any other notes and comments about the procedure.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.note",
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
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "workflow",
            "map": "Event.note"
          },
          {
            "identity": "v2",
            "map": "NTE"
          },
          {
            "identity": "rim",
            "map": ".inboundRelationship[typeCode=SUBJ].source[classCode=OBS, moodCode=EVN, code=\"annotation\"].value"
          }
        ]
      },
      {
        "id": "Procedure.focalDevice",
        "path": "Procedure.focalDevice",
        "slicing": {
          "discriminator": [
            {
              "type": "profile",
              "path": "manipulated.resolve()"
            }
          ],
          "description": "Slicing based on the profile",
          "rules": "open"
        },
        "short": "Manipulated, implanted, or removed device",
        "definition": "A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.focalDevice",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "BackboneElement"
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
            "map": ".participation[typeCode=DEV].role[classCode=MANU]"
          }
        ]
      },
      {
        "id": "Procedure.focalDevice.id",
        "path": "Procedure.focalDevice.id",
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
        "id": "Procedure.focalDevice.extension",
        "path": "Procedure.focalDevice.extension",
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
        "id": "Procedure.focalDevice.modifierExtension",
        "path": "Procedure.focalDevice.modifierExtension",
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
        "id": "Procedure.focalDevice.action",
        "path": "Procedure.focalDevice.action",
        "short": "Kind of change to device",
        "definition": "The kind of change that happened to the device during the procedure.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.focalDevice.action",
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
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "DeviceActionKind"
            }
          ],
          "strength": "preferred",
          "description": "A kind of change that happened to the device during the procedure.",
          "valueSet": "http://hl7.org/fhir/ValueSet/device-action"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": ".inboundRelationship[typeCode=SUBJ].source[classCode=OBS, moodCode=EVN, code=\"procedure device action\"].value=:procedure device action codes"
          }
        ]
      },
      {
        "id": "Procedure.focalDevice.manipulated",
        "path": "Procedure.focalDevice.manipulated",
        "short": "Device that was changed",
        "definition": "The device that was manipulated (changed) during the procedure.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.focalDevice.manipulated",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Device"
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
            "map": ".participation[typeCode=DEV].role[classCode=SDLOC]"
          }
        ]
      },
      {
        "id": "Procedure.focalDevice:seedDevice",
        "path": "Procedure.focalDevice",
        "sliceName": "seedDevice",
        "short": "Radiotherapy Seed Device used as part of therapy.",
        "definition": "A device that is implanted, removed or otherwise manipulated (calibration, battery replacement, fitting a prosthesis, attaching a wound-vac, etc.) as a focal portion of the Procedure.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.focalDevice",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "BackboneElement"
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
            "identity": "rim",
            "map": ".participation[typeCode=DEV].role[classCode=MANU]"
          }
        ]
      },
      {
        "id": "Procedure.focalDevice:seedDevice.id",
        "path": "Procedure.focalDevice.id",
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
        "id": "Procedure.focalDevice:seedDevice.extension",
        "path": "Procedure.focalDevice.extension",
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
        "id": "Procedure.focalDevice:seedDevice.modifierExtension",
        "path": "Procedure.focalDevice.modifierExtension",
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
        "id": "Procedure.focalDevice:seedDevice.action",
        "path": "Procedure.focalDevice.action",
        "short": "Kind of change to device",
        "definition": "The kind of change that happened to the device during the procedure.",
        "min": 0,
        "max": "1",
        "base": {
          "path": "Procedure.focalDevice.action",
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
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "DeviceActionKind"
            }
          ],
          "strength": "preferred",
          "description": "A kind of change that happened to the device during the procedure.",
          "valueSet": "http://hl7.org/fhir/ValueSet/device-action"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": ".inboundRelationship[typeCode=SUBJ].source[classCode=OBS, moodCode=EVN, code=\"procedure device action\"].value=:procedure device action codes"
          }
        ]
      },
      {
        "id": "Procedure.focalDevice:seedDevice.manipulated",
        "path": "Procedure.focalDevice.manipulated",
        "short": "Device that was changed",
        "definition": "The device that was manipulated (changed) during the procedure.",
        "min": 1,
        "max": "1",
        "base": {
          "path": "Procedure.focalDevice.manipulated",
          "min": 1,
          "max": "1"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
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
        "isModifier": false,
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": ".participation[typeCode=DEV].role[classCode=SDLOC]"
          }
        ]
      },
      {
        "id": "Procedure.usedReference",
        "path": "Procedure.usedReference",
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
        "short": "Items used during procedure",
        "definition": "Identifies medications, devices and any other substance used as part of the procedure.",
        "comment": "For devices actually implanted or removed, use Procedure.device.",
        "requirements": "Used for tracking contamination, etc.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.usedReference",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/StructureDefinition/Device",
              "http://hl7.org/fhir/StructureDefinition/Medication",
              "http://hl7.org/fhir/StructureDefinition/Substance"
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
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": ".participation[typeCode=DEV].role[classCode=MANU] or\n.participation[typeCode=CSM].role[classCode=ADMM] (for Medication or Substance)"
          }
        ]
      },
      {
        "id": "Procedure.usedReference:treatmentDevice",
        "path": "Procedure.usedReference",
        "sliceName": "treatmentDevice",
        "short": "Radiotherapy Treatment Device used as part of therapy.",
        "definition": "Identifies medications, devices and any other substance used as part of the procedure.",
        "comment": "For devices actually implanted or removed, use Procedure.device.",
        "requirements": "Used for tracking contamination, etc.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.usedReference",
          "min": 0,
          "max": "*"
        },
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device"
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
        "isSummary": false,
        "mapping": [
          {
            "identity": "rim",
            "map": ".participation[typeCode=DEV].role[classCode=MANU] or\n.participation[typeCode=CSM].role[classCode=ADMM] (for Medication or Substance)"
          }
        ]
      },
      {
        "id": "Procedure.usedCode",
        "path": "Procedure.usedCode",
        "short": "Coded items used during the procedure",
        "definition": "Identifies coded items that were used as part of the procedure.",
        "comment": "For devices actually implanted or removed, use Procedure.device.",
        "min": 0,
        "max": "*",
        "base": {
          "path": "Procedure.usedCode",
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
        "isSummary": false,
        "binding": {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
              "valueString": "ProcedureUsed"
            }
          ],
          "strength": "example",
          "description": "Codes describing items used during a procedure.",
          "valueSet": "http://hl7.org/fhir/ValueSet/device-kind"
        },
        "mapping": [
          {
            "identity": "rim",
            "map": "participation[typeCode=Dev].role[classCode=MANU]"
          }
        ]
      }
    ]
  },
  "differential": {
    "element": [
      {
        "id": "Procedure",
        "path": "Procedure",
        "constraint": [
          {
            "key": "codexrt-procedure-status",
            "severity": "error",
            "human": "Only the following status values are supported: in-progress | not-done | on-hold | stopped | completed",
            "expression": "status = 'in-progress' or status = 'not-done' or status = 'on-hold' or status = 'stopped' or status = 'completed'",
            "source": "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-course-summary"
          }
        ]
      },
      {
        "id": "Procedure.extension:modalityAndTechnique",
        "path": "Procedure.extension",
        "sliceName": "modalityAndTechnique"
      },
      {
        "id": "Procedure.extension:modalityAndTechnique.extension:radiotherapyEnergyOrIsotope",
        "path": "Procedure.extension.extension",
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
        "id": "Procedure.extension:modalityAndTechnique.extension:radiotherapyTreatmentApplicatorType",
        "path": "Procedure.extension.extension",
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
        "id": "Procedure.extension:doseDeliveredToVolume",
        "path": "Procedure.extension",
        "sliceName": "doseDeliveredToVolume"
      },
      {
        "id": "Procedure.extension:doseDeliveredToVolume.extension",
        "path": "Procedure.extension.extension",
        "min": 2
      },
      {
        "id": "Procedure.extension:doseDeliveredToVolume.extension:uniformFractionation",
        "path": "Procedure.extension.extension",
        "sliceName": "uniformFractionation",
        "min": 1,
        "max": "1",
        "type": [
          {
            "code": "Extension",
            "profile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-uniform-fractionation"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "Procedure.identifier",
        "path": "Procedure.identifier",
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
        "id": "Procedure.identifier:displayName",
        "path": "Procedure.identifier",
        "sliceName": "displayName",
        "short": "The name that is displayed to the user.",
        "min": 1,
        "max": "1",
        "mustSupport": true
      },
      {
        "id": "Procedure.identifier:displayName.use",
        "path": "Procedure.identifier.use",
        "min": 1,
        "patternCode": "usual"
      },
      {
        "id": "Procedure.identifier:displayName.system",
        "path": "Procedure.identifier.system",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "Procedure.identifier:displayName.value",
        "path": "Procedure.identifier.value",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "Procedure.identifier:official",
        "path": "Procedure.identifier",
        "sliceName": "official",
        "short": "A business identifier for the request or procedure, which is independent of its FHIR representation, such as a GUID or DICOM UID.",
        "min": 1,
        "max": "*",
        "mustSupport": true
      },
      {
        "id": "Procedure.identifier:official.use",
        "path": "Procedure.identifier.use",
        "min": 1,
        "patternCode": "official"
      },
      {
        "id": "Procedure.identifier:official.system",
        "path": "Procedure.identifier.system",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "Procedure.identifier:official.value",
        "path": "Procedure.identifier.value",
        "min": 1,
        "mustSupport": true
      },
      {
        "id": "Procedure.basedOn",
        "path": "Procedure.basedOn",
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
        "id": "Procedure.basedOn:planned-course",
        "path": "Procedure.basedOn",
        "sliceName": "planned-course",
        "short": "Radiotherapy Planned Course that planned the treatment summarized in this Radiotherapy Course Summary.",
        "min": 0,
        "max": "1",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-planned-course"
            ]
          }
        ],
        "mustSupport": true
      },
      {
        "id": "Procedure.basedOn:course-prescription",
        "path": "Procedure.basedOn",
        "sliceName": "course-prescription",
        "short": "Radiotherapy Course Prescription that prescribed the treatment summarized in this Radiotherapy Course Summary.",
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
        "id": "Procedure.performedPeriod",
        "path": "Procedure.performedPeriod",
        "min": 1,
        "max": "1"
      },
      {
        "id": "Procedure.performedPeriod.start",
        "path": "Procedure.performedPeriod.start",
        "short": "The date and time when the first therapeutic radiation was delivered.",
        "mustSupport": true
      },
      {
        "id": "Procedure.performedPeriod.end",
        "path": "Procedure.performedPeriod.end",
        "short": "An end date is expected if the status is 'stopped' or 'completed'",
        "mustSupport": true
      },
      {
        "id": "Procedure.location",
        "path": "Procedure.location",
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
        "id": "Procedure.focalDevice",
        "path": "Procedure.focalDevice",
        "slicing": {
          "discriminator": [
            {
              "type": "profile",
              "path": "manipulated.resolve()"
            }
          ],
          "description": "Slicing based on the profile",
          "rules": "open"
        }
      },
      {
        "id": "Procedure.focalDevice:seedDevice",
        "path": "Procedure.focalDevice",
        "sliceName": "seedDevice",
        "short": "Radiotherapy Seed Device used as part of therapy.",
        "min": 0,
        "max": "*",
        "mustSupport": true
      },
      {
        "id": "Procedure.focalDevice:seedDevice.manipulated",
        "path": "Procedure.focalDevice.manipulated",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-seed-device"
            ]
          }
        ]
      },
      {
        "id": "Procedure.usedReference",
        "path": "Procedure.usedReference",
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
        "id": "Procedure.usedReference:treatmentDevice",
        "path": "Procedure.usedReference",
        "sliceName": "treatmentDevice",
        "short": "Radiotherapy Treatment Device used as part of therapy.",
        "min": 0,
        "max": "*",
        "type": [
          {
            "code": "Reference",
            "targetProfile": [
              "http://hl7.org/fhir/us/codex-radiation-therapy/StructureDefinition/codexrt-radiotherapy-treatment-device"
            ]
          }
        ],
        "mustSupport": true
      }
    ]
  }
}