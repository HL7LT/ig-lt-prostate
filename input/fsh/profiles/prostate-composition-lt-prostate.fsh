Profile: ProstateCompositionLtProstate
Parent: ImagingCompositionLt
Id: prostate-composition-lt-prostate
Title: "Composition: Prostate programme document (LT)"
Description: "Synoptic imaging composition for the prostate programme: inherits the **ImagingCompositionLt** section layout (imaging study, order, history, procedure, comparison, findings, impression, recommendation). Used as the narrative partner for **ProstateReportLtProstate**. Authoritative pathology documents remain profiled in **LT Lab**; cross-reference them in **section.text** or exchange bundles when needed."
* ^url = $prostate-composition-lt-prostate-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^language = #en
* ^version = "0.1.0"
* . ^short = "Prostate programme imaging composition"
* . ^definition = "A single logical imaging-class document for the national prostate pathway. Section narratives SHALL remain present so the document is readable without resolving every reference, per Base imaging composition rules."
