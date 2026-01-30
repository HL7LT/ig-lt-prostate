ValueSet: LTProstateSequenceTypeVS
Id: lt-prostate-sequence-type-vs
Title: "Prostate mpMRI Sequence Type ValueSet"
Description: "Sequence/image types used in prostate mpMRI scoring (DICOM terminology)."
* include $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* include $dicom-dcm#113043 "Diffusion weightedT2 Weighted MR Sign"
* include $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* include $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"


Profile: LTProstateSequenceScoreObservation
Parent: LTBaseObservation
Id: lt-prostate-sequence-score-observation
Title: "Prostate MRI Sequence Score Observation"
Description: """
Observation representing a numeric (1–5) assessment score for a specific prostate
MRI sequence (T2-weighted, DWI, ADC or DCE), evaluated for a defined prostate lesion.
These sequence-level scores represent the individual imaging components used
to derive the overall PI-RADS assessment, but do not themselves constitute a
final diagnostic conclusion.
Anatomical localization is provided via the referenced LTProstateLesion.
"""
* status 1..1
* status = #final
* code 1..1
* code from LTProstateSequenceTypeVS (required)
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only integer
* valueInteger obeys prostate-score-min-1 and prostate-score-max-5
// Link to the lesion this sequence score applies to
* focus 1..1
* focus only Reference(LTProstateLesion)
* note 0..*



Instance: example-dwi-score
InstanceOf: LTProstateSequenceScoreObservation
Usage: #example
Title: "Example DWI score for lesion 1"
* status = #final
* code = $dicom-dcm#113043 "Diffusion weighted"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* focus = Reference(example-prostate-lesion1)
* valueInteger = 5
* note.text = "Marked diffusion restriction in lesion focus."
