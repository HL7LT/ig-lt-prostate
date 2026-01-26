ValueSet: LTProstateZoneVS
Id: lt-prostate-zone-vs
Title: "Prostate Zone ValueSet"
Description: "Zones of the prostate used for PI-RADS scoring."
* include $sct#399384005 "Structure of transition zone of prostate"
* include $sct#279491002 "Structure of peripheral zone of prostate"

Profile: LTProstatePIRADSAssessment
Parent: LTBaseObservation
Id: lt-prostate-pirads-assessment
Title: "PI-RADS Assessment"
Description: "PI-RADS assessment (score 1–5) assigned to a prostate lesion based on mpMRI findings."
* status 1..1
* status = #final
* code 1..1
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger obeys prostate-score-min-1 and prostate-score-max-5
// lesion --> this PI-RADS is assigned to
* focus 1..1
* focus only Reference(LTProstateLesion)
// anatomical zone context
* bodySite 1..1
* bodySite from LTProstateZoneVS (required)
// PI-RADS version
* method 0..1
* method.text ^short = "PI-RADS version (e.g., PI-RADS v2.1)"
* note 0..*


Instance: example-pirads-lesion1
InstanceOf: LTProstatePIRADSAssessment
Title: "Example PI-RADS Assessment — Lesion 1"
Usage: #example
* status = #final
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* focus = Reference(example-prostate-lesion1)
* valueInteger = 4
* bodySite = $sct#279491002 "Structure of peripheral zone of prostate"
* method.text = "PI-RADS v2.1"
* note.text = "Lesion 1 in the peripheral zone, 8 mm, high suspicion."
