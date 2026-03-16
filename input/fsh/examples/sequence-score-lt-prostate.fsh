Instance: observation-prostate-dwi-score-lesion1-example2
InstanceOf: SequenceScoreLtProstate
Usage: #example
Title: "Observation: Prostate - DWI Score (Lesion 1) (example)"
* status = #final
* code = $dicom-dcm#113043 "Diffusion weighted"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Marked diffusion restriction in lesion focus."
