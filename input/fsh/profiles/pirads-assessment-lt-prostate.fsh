Profile: PIRADSAssessmentLtProstate
Parent: ObservationLt
Id: pirads-assessment-lt-prostate
Title: "Observation: PI-RADS Assessment"
Description: """
PI-RADS assessment (score 1–5) assigned to a specific prostate lesion
based on mpMRI findings.
The anatomical location is represented using detailed PI-RADS
sector-based prostate body structures (39-sector map).
"""
* ^url = $pirads-assessment-lt-prostate-url
* status 1..1
* status = #final
* code 1..1
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject 1..1
* subject only Reference(PatientLt)
* encounter 0..1
* encounter only Reference(EncounterLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger obeys prostate-score-min-1 and prostate-score-max-5
// PI-RADS is assigned to a specific lesion
* focus 1..1
* focus only Reference(LesionLtProstate)
// Anatomical context using PI-RADS 39-sector map
* bodySite 1..1
* bodySite from $prostate-pirads-sector-url (required)
// PI-RADS version
* method 0..1
* method.text ^short = "PI-RADS version (e.g., PI-RADS v2.1)"
* note 0..*
// TODO 2.1: Add zone-level PI-RADS assessment (TZ/PZ summary) per Excel mpMRI requirements
