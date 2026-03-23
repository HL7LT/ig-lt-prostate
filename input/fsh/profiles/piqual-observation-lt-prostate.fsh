Profile: PiqualObservationLtProstate
Parent: ObservationLt
Id: piqual-observation-lt-prostate
Title: "Observation: I-QUAL Score"
Description: """
PI-QUAL is a quality assurance score for prostate MRI examinations.
It reflects whether the technical image quality of a specific MRI exam
is sufficient to allow reliable interpretation and PI-RADS assessment.

This score applies to the entire MRI examination (not to individual lesions).

Low PI-QUAL scores indicate that PI-RADS results should be interpreted
with caution or may not be reliable.
"""
* ^url = $piqual-observation-lt-prostate-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* code 1..1
* code from $prostate-piqual-vs-url (required)
* subject 1..1
* subject only Reference(PatientLt)
* encounter 0..1
* encounter only Reference(EncounterLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger obeys prostate-score-min-1 and prostate-score-max-3
* note 0..*
