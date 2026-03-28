Instance: observation-prostate-urinary-bladder-changes-suspected-example
InstanceOf: BladderChangesLtProstate
Usage: #example
Title: "Observation: Prostate - Urinary Bladder Wall Thickening (Suspected) (example)"
Description: "Shows suspected urinary bladder changes with change nature classification."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* bodyStructure = Reference(bodyStructure-prostate-urinary-bladder-example)
* component[changeStatus].code = $sct#260905004 "Condition (attribute)"
* component[changeStatus].valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* component[changeNature].code = $sct#246454002 "Etiology (attribute)"
* component[changeNature].valueCodeableConcept = $snomed-prostate-extension-cs-url#change-non-neoplastic "Non-neoplastic / incidental"
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
InstanceOf: BoneMetastasisLtProstate
Usage: #example
Title: "Observation: Prostate - Bone Changes (Present) (example)"
Description: "Shows present bone metastatic changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#94222008 "Secondary malignant neoplasm of bone (disorder)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-bone-example)
* note.text = "Sclerotic lesions in pelvic bones suspicious for metastases; recommend PSMA PET/CT."
