Instance: observation-prostate-bone-metastasis-present-example
InstanceOf: BoneMetastasisLtProstate
Usage: #example
Title: "Observation: Bone metastasis – present (example)"
Description: "Bone metastatic changes detected on prostate MRI."
* status = #final
* category = $observation-category#exam
* code = $sct#94222008 "Secondary malignant neoplasm of bone (disorder)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-bone-example)
* note.text = "Sclerotic lesions in pelvic bones suspicious for metastases; recommend PSMA PET/CT."

Instance: observation-prostate-bone-metastasis-absent-example
InstanceOf: BoneMetastasisLtProstate
Usage: #example
Title: "Observation: Bone metastasis – absent (example)"
Description: "No bone metastatic changes on prostate MRI."
* status = #final
* category = $observation-category#exam
* code = $sct#94222008 "Secondary malignant neoplasm of bone (disorder)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* note.text = "No suspicious bone lesions identified."
