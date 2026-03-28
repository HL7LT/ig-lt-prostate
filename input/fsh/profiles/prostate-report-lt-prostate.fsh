Profile: ProstateReportLtProstate
Parent: ImagingReportLt
Id: prostate-report-lt-prostate
Title: "DiagnosticReport: Prostate programme report (LT)"
Description: "Anchor resource for the Lithuanian prostate cancer prevention and early diagnostic programme: links **ProstateCompositionLtProstate** (Base imaging composition) with **Observation** results (PSA, PI-RADS, sequence scores, PI-QUAL, PRECISE, Gleason/ISUP, etc.). Parent **ImagingReportLt** follows the national imaging-report pattern. Pathology **DiagnosticReport** resources from **LT Lab** are not listed in `result` (see **DiagnosticReportLt**); link them via encounter, bundles, or documentation."
* ^url = $prostate-report-lt-prostate-url
* ^status = #draft
* ^experimental = true
* ^publisher = "HL7 Lithuania"
* ^language = #en
* ^version = "0.1.0"

* composition 1..1 MS
* composition only Reference(ProstateCompositionLtProstate)
* result 1..* MS
* result only Reference(
    PIRADSAssessmentLtProstate or
    SequenceScoreLtProstate or
    PiqualObservationLtProstate or
    PreciseAssessmentLtProstate or
    GleasonIsupObservationLtProstate or
    NeoplasmInvasionLtProstate or
    PelvicOrganChangesLtProstate or
    BladderChangesLtProstate or
    BoneMetastasisLtProstate or
    ObservationLt
  )
* conclusion MS