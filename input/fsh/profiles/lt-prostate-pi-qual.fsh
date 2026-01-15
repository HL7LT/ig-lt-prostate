CodeSystem: LTProstatePIQualCS
Id: lt-prostate-piqual-cs
Title: "Lithuanian Prostate Imaging Quality (PI-QUAL) CodeSystem"
Description: "Local code system for PI-QUAL image quality assessment."
* #piqual "PI-QUAL image quality score"

ValueSet: LTProstatePIQualVS
Id: lt-prostate-piqual-vs
Title: "PI-QUAL ValueSet"
* include codes from system LTProstatePIQualCS

Invariant: piqual-min
Description: "PI-QUAL must be at least 1."
Expression: "$this >= 1"
Severity: #error

Invariant: piqual-max
Description: "PI-QUAL must be at most 3."
Expression: "$this <= 3"
Severity: #error

Profile: LTProstatePIQualObservation
Parent: Observation
Id: lt-prostate-piqual-observation
Title: "PI-QUAL Score"
Description: "Observation representing the PI-QUAL image quality score for prostate MRI."
* status 1..1
* status = #final
* code 1..1
* code from LTProstatePIQualVS (required)
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger obeys piqual-min and piqual-max
* note 0..*

Instance: example-piqual
InstanceOf: LTProstatePIQualObservation
Usage: #example
* status = #final
* code = LTProstatePIQualCS#piqual "PI-QUAL image quality score"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* valueInteger = 3
