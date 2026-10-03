Profile: MpMRIReportLtProstate
Parent: ImDiagnosticReport
Id: mpmri-report-lt-prostate
Title: "Diagnostic Report: Prostate mpMRI"
Description: "Diagnostic report representing a prostate MRI examination (bi-parametric or multi-parametric) that serves as the clinical anchor for imaging-based prostate assessment."
* ^url = $mpmri-report-lt-prostate-url
* ^publisher = "HL7 Lithuania"
* subject 1..1
* subject only Reference(PatientLt)
* encounter 0..1
* encounter only Reference(EncounterLt)
* code 1..1
* code from ProstateMriTypeVS (required)
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
// ImDiagnosticReport slices supportingInfo with #value on "reference" while its only
// assertion is a pattern on supportingInfo:procedure.type, so the publisher cannot
// evaluate the slicing and reports one error per entry. It cannot be corrected here:
// FHIR forbids a derived profile from changing an inherited discriminator, and the
// publisher refuses to generate a snapshot at all — "Slicing rules on differential
// (value:type) do not match those on base (value:reference)". The correction has to be
// made where the slicing is defined, in the ig-lt-eu transcription of the upstream
// draft. Left inherited until that is decided.
* supportingInfo 0..*
