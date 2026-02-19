ValueSet: MRITypeProstateLt
Id: mri-type-prostate-lt
Title: "Prostate - MRI Examination Type"
Description: "Type of prostate MRI examination, including bi-parametric and multi-parametric MRI."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"
* include $sct#719178004 "Multiparametric magnetic resonance imaging of prostate (procedure)"


Profile: MpMRIReportProstateLt
Parent: ImDiagnosticReport
Id: mpmri-report-prostate-lt
Title: "Diagnostic Report: Prostate mpMRI"
Description: "Diagnostic report representing a prostate MRI examination (bi-parametric or multi-parametric) that serves as the clinical anchor for imaging-based prostate assessment."
* ^publisher = "HL7 Lithuania"
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* code 1..1
* code.coding 1..1
* code.coding.system = "http://snomed.info/sct"
* code.coding.code 1..1
* code.coding.code from MRITypeProstateLt (required)
* effective[x] 1..1
* effective[x] only dateTime
* conclusion 1..1
// Inherited but documented for clarity
* performer 1..*
* performer[author] 1..*
* performer[author] only Reference(PractitionerRoleEu)
* composition 1..1
* composition only Reference($CompositionEuImagingUrl)
// Imaging-derived results (PI-RADS, sequence scores, PI-QUAL, PRECISE)
* result 0..*
* result ^short = "Imaging-based observations including PI-RADS, sequence scores, PI-QUAL and PRECISE assessment"
// Clinical context
* supportingInfo 0..*
