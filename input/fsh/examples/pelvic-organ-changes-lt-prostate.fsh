Instance: observation-prostate-urinary-bladder-changes-suspected-example
InstanceOf: PelvicOrganChangesLtProstate
Usage: #example
Title: "Observation: Prostate - Urinary Bladder Wall Thickening (Suspected) (example)"
Description: "Shows suspected urinary bladder changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-urinary-bladder-example)
* note.text = "Bladder wall thickening; non-neoplastic changes favored. Correlate clinically."

Instance: observation-prostate-rectal-changes-absent-example
InstanceOf: PelvicOrganChangesLtProstate
Usage: #example
Title: "Observation: Prostate - Rectal Changes (Absent) (example)"
Description: "Shows absent rectal changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-rectum-example)
* note.text = "No rectal wall changes."

Instance: observation-prostate-bone-changes-present-example
InstanceOf: PelvicOrganChangesLtProstate
Usage: #example
Title: "Observation: Prostate - Bone Changes (Present) (example)"
Description: "Shows present bone changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-bone-example)
* note.text = "Sclerotic lesions in pelvic bones suspicious for metastases; recommend PSMA PET/CT."
