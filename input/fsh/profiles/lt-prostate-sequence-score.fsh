ValueSet: SequenceTypeProstateLt
Id: sequence-type-prostate-lt
Title: "Prostate - mpMRI Sequence Type"
Description: "Sequence/image types used in prostate mpMRI scoring (DICOM terminology)."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* include $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* include $dicom-dcm#113043 "Diffusion weighted"
* include $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* include $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"


Profile: SequenceScoreProstateLt
Parent: LTBaseObservation
Id: sequence-score-prostate-lt
Title: "Observation: MRI Sequence Score"
Description: """
Observation representing a numeric (1–5) assessment score for a specific prostate
MRI sequence (T2-weighted, DWI, ADC or DCE), evaluated for a defined prostate lesion.
These sequence-level scores represent the individual imaging components used
to derive the overall PI-RADS assessment, but do not themselves constitute a
final diagnostic conclusion.
Anatomical localization is provided via the referenced prostate lesion.
"""
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* code 1..1
* code from SequenceTypeProstateLt (required)
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
* focus only Reference(LesionProstateLt)
* note 0..*


Instance: observation-prostate-dwi-score-lesion1-example2
InstanceOf: SequenceScoreProstateLt
Usage: #example
Title: "Observation: Prostate - DWI Score (Lesion 1) Example"
* status = #final
* code = $dicom-dcm#113043 "Diffusion weighted"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Marked diffusion restriction in lesion focus."
