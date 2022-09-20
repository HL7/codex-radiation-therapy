# CodeX Radiation Therapy
[CodeX](https://confluence.hl7.org/display/COD/CodeX+Home) is a Member-driven HL7 FHIR Accelerator hosting a growing community working together to enable FHIR-based interoperability that drives substantial improvements around the most important challenges and opportunities in patient health.

CodeX Radiation Therapy is an implementation guide developed by the CODEX accelerator intended to assemble a core set of structure data elements for radiation therapy electronic health records.

This repository contains the **Codex Radiation Therapy Implementation Guide (IG)**. An IG is "a set of rules about how FHIR resources are used (or should be used) to solve a particular problem, with associated documentation to support and clarify the usage" ([source](https://www.hl7.org/fhir/implementationguide.html)).

For more information, see:

- [Published version of this IG](http://hl7.org/fhir/us/codexrt/) --**not yet**
- Continuous integration build of this repository: [main branch](https://build.fhir.org/ig/HL7/codexrt/) or [all branches](https://build.fhir.org/ig/HL7/codexrt/branches/)
- If you are new to the FHIR community and ecosystem, [this tutorial explains FHIR, profiling, and implementation guides](https://simplifier.net/guide/profilingacademy/IntroductiontoFHIRandprofiling)

## Building the IG

"Building" the IG means generating a web-based, human-readable representation of the structured information and accompanying documentation defined within this repository. This is done via the [FHIR Implementation Guide Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation) ("IG Publisher"), a Java program provided by the FHIR team for building IGs into a standardized presentation. You can see [the output of building the current contents of this repository here](https://build.fhir.org/ig/HL7/fhir-mCODE-ig/).

If you would like to generate this locally, open command prompt window and navigate to the directory where this repository has been cloned. Then run this command:

- Linux/macOS: `./_genonce.sh`
- Windows: `_genonce`

This script will do two things automatically for you:

1. Run [SUSHI](http://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html). mCODE is developed in [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/), a domain-specific language (DSL) for defining the content of FHIR IGs. SUSHI complies FHS files into the JSON files expected by the IG Publisher.

2. Run the IG Publisher.

You will need an active internet connection to build the IG. It make take up to 30 minutes to build for the first time; subsequent builds should be faster (5-7 minutes) on a modern laptop.

When the build finishes, you can open `output/index.html` in your browser to see the locally built IG.

### Dependencies for building the IG

1. You will need to [install SUSHI](https://fshschool.org/docs/sushi/installation/) before building the IG.
2. You will also need to run `./_updatePublisher.sh` (Linux/macOS) or `_updatePublisher.bat` (Windows) to download the IG Publisher.

### Running SUSHI independently of the IG Publisher

If you want to run SUSHI without building the entire IG, you can run `sushi .` in a command prompt window after navigating to the directory where this repository has been cloned.

You can also run the IG Publisher without running SUSHI with `./_genonce.sh -no-sushi` or `_genonce -no-sushi`.

### Getting a clean build

While not normally necessary, you can delete the following folders to get a clean build:

- `fsh-generated/` (SUSHI output)
- `output/` (IG Publisher output)
- `input-cache/` (IG Publisher local cache; note that deleting this will dramatically increase the length of the next build)

## Key folders & files in the IG

- The FHIR Shorthand (`.fsh`) files defining the resources in this IG are found in `input/fsh/`.
    - There is a [FSH syntax highlighting extension](https://marketplace.visualstudio.com/items?itemName=kmahalingam.vscode-language-fsh) for [VSCode](https://code.visualstudio.com). The mCODE team generally uses this set of tools for working on FSH files.
    - The FSH files are prefixed based on what is contained inside.

        | Prefix | Description          |
        | ------ | -------------------- |
        | `AL`   | Aliases              |
        | `DEF`  | Other Definitions    |
        | `EX`   | Examples             |
        | `SD`   | StructureDefinitions |
        | `VS`   | ValueSets            |

- The main pages in the built IG are generated from [Markdown](https://daringfireball.net/projects/markdown/) found in `input/pagecontent/`. These pages must also be included in `sushi-config.yaml` to be compiled to HTML by the IG Publisher.
- There are a number of other important configuration options in `sushi-config.yaml` including the menu contents of the built IG and the groupings on the [Artifacts Summary page](https://build.fhir.org/ig/HL7/codexrt/artifacts.html).
- The source for the UML diagrams in the IG are found in `input/images-source/` and MUST have a `.plantuml` extension. These are automatically converted to SVG by the IG Publisher, and are inserted inline into Markdown files using `{%include some-diagram.svg%}` (which corresponds to `input/images-source/some-diagram.plantuml`).

## Contributing to the IG

See  [`contributing.md`](contributing.md).
