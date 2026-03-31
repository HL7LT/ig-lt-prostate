Profile: ProstateOtherConditionsLtProstate
Parent: ObservationLt
Id: prostate-other-conditions-lt-prostate
Title: "Observation: Other Prostate Conditions (LT Prostate)"
Description: """
Incidental prostate conditions observed during mpMRI or PRECISE assessment
(e.g. benign prostatic hyperplasia, prostatitis, fibrotic changes).
Value is coded from ProstateOtherConditionsVS with extensible binding,
allowing free-text descriptions via CodeableConcept.text.
"""
* ^url = $prostate-other-conditions-lt-prostate-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#365861007 "Finding of prostate (finding)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ProstateOtherConditionsVS (extensible)
* note 0..1
* note.text 1..1
