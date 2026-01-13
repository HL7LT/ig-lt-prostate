ValueSet: LTProstateZoneVS
Id: lt-prostate-zone-vs
Title: "Prostate Zone ValueSet"
Description: "Zones of the prostate used for PI-RADS scoring."
* include $sct#399384005 "Structure of transition zone of prostate"
* include $sct#279491002 "Structure of peripheral zone of prostate"

Invariant: pirads-min
Description: "PI-RADS score must be at least 1."
Expression: "$this >= 1"
Severity: #error

Invariant: pirads-max
Description: "PI-RADS score must be at most 5."
Expression: "$this <= 5"
Severity: #error



Profile: LTProstatePIRADSObservation
Parent: Observation
Id: lt-prostate-pirads-observation
Title: "PI-RADS Score Observation"
Description: "Observation representing a PI-RADS score (1–5) for a prostate lesion, as part of prostate cancer diagnostics."
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
* valueInteger obeys pirads-min and pirads-max
* bodySite 1..1
* bodySite from LTProstateZoneVS (required)
* method 0..1
* method.text ^short = "PI-RADS version or method (e.g., PI-RADS v2.1)"
* note 0..*


Instance: example-pirads-lesion1
InstanceOf: LTProstatePIRADSObservation
Title: "Example PI-RADS Observation — Lesion 1 in Peripheral Zone"
Usage: #example
* status = #final
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject = Reference(example-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* valueInteger = 4
* bodySite = $sct#279491002 "Structure of peripheral zone of prostate"
* method.text = "PI-RADS v2.1"
* note.text = "Lesion 1 in the right peripheral zone, 8 mm, high suspicion."
