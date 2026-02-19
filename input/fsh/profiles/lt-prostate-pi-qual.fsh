CodeSystem: PiqualProstateLtCS
Id: piqual-prostate-lt-cs
Title: "Prostate - PI-QUAL"
Description: "Local code system for PI-QUAL image quality assessment."
* ^experimental = false
* ^caseSensitive = true
* #piqual "PI-QUAL image quality score"


ValueSet: PiqualProstateLtVS
Id: piqual-prostate-lt-vs
Title: "Prostate - PI-QUAL"
Description: "PI-QUAL (PI-Rads QUALity) score for prostate MRI image quality assessment."
* ^status = #active
* ^experimental = false
* include codes from system PiqualProstateLtCS


Profile: PiqualProstateLtObservation
Parent: LTBaseObservation
Id: piqual-observation-prostate-lt
Title: "Observation: I-QUAL Score"
Description: """
PI-QUAL is a quality assurance score for prostate MRI examinations.
It reflects whether the technical image quality of a specific MRI exam
is sufficient to allow reliable interpretation and PI-RADS assessment.

This score applies to the entire MRI examination (not to individual lesions).

Low PI-QUAL scores indicate that PI-RADS results should be interpreted
with caution or may not be reliable.
"""
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* code 1..1
* code from PiqualProstateLtVS (required)
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger obeys prostate-score-min-1 and prostate-score-max-3
* note 0..*


Instance: observation-prostate-piqual-example
InstanceOf: PiqualProstateLtObservation
Usage: #example
Title: "Observation: Prostate - PI-QUAL Score Example"
* status = #final
* code = PiqualProstateLtCS#piqual "PI-QUAL image quality score"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* valueInteger = 3
