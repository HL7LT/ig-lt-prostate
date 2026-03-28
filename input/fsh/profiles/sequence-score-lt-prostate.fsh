Profile: SequenceScoreLtProstate
Parent: ObservationLt
Id: sequence-score-lt-prostate
Title: "Observation: MRI Sequence Score"
Description: """
Observation representing a numeric (1–5) assessment score for a specific prostate
MRI sequence (T2-weighted, DWI, ADC or DCE), evaluated for a defined prostate lesion.
These sequence-level scores represent the individual imaging components used
to derive the overall PI-RADS assessment, but do not themselves constitute a
final diagnostic conclusion.
Anatomical localization is provided via the referenced prostate lesion.
"""
* ^url = $sequence-score-lt-prostate-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* code 1..1
* code from ProstateSequenceTypeVS (required)
* subject 1..1
* subject only Reference(PatientLt)
* encounter 0..1
* encounter only Reference(EncounterLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger obeys prostate-score-min-1 and prostate-score-max-5
// Link to the lesion this sequence score applies to
* focus 1..1
* focus only Reference(LesionLtProstate)
* note 0..*
