ValueSet: LTProstateSequenceTypeVS
Id: lt-prostate-sequence-type-vs
Title: "Prostate mpMRI Sequence Type ValueSet"
Description: "Sequence/image types used in prostate mpMRI scoring (DICOM terminology)."
* include $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* include $dicom-dcm#113043 "Diffusion weighted"
* include $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* include $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"


Invariant: score-min
Description: "Score must be at least 1."
Expression: "$this >= 1"
Severity: #error

Invariant: score-max
Description: "Score must be at most 5."
Expression: "$this <= 5"
Severity: #error

Profile: LTProstateSequenceScoreObservation
Parent: Observation
Id: lt-prostate-sequence-score-observation
Title: "Prostate MRI Sequence Score Observation"
Description: "Numeric 1–5 score for a specific prostate MRI sequence (T2, DWI, ADC, DCE) for a given prostate lesion."
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
* valueInteger obeys score-min and score-max
* focus 1..1
* focus only Reference(LTProstateLesion)
* bodySite 0..1
* bodySite from LTProstateZoneVS (extensible)
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
* note.text = "Marked diffusion restriction in peripheral zone focus."
