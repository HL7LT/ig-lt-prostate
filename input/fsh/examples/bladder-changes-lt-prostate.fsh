Instance: observation-prostate-bladder-neoplasm-related-example
InstanceOf: BladderChangesLtProstate
Usage: #example
Title: "Observation: Bladder – neoplasm-related changes (example)"
Description: "Bladder changes suspected to be related to prostate neoplasm."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* bodyStructure = Reference(bodyStructure-prostate-urinary-bladder-example)
* component[changeStatus].code = $sct#260905004 "Condition (attribute)"
* component[changeStatus].valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* component[changeNature].code = $sct#246454002 "Etiology (attribute)"
* component[changeNature].valueCodeableConcept = $snomed-prostate-extension-cs-url#change-neoplasm-related "Related to prostate neoplasm"
* note.text = "Bladder wall thickening at base; likely neoplasm-related."

Instance: observation-prostate-bladder-benign-example
InstanceOf: BladderChangesLtProstate
Usage: #example
Title: "Observation: Bladder – benign changes (example)"
Description: "Benign bladder changes unrelated to prostate neoplasm."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* bodyStructure = Reference(bodyStructure-prostate-urinary-bladder-example)
* component[changeStatus].code = $sct#260905004 "Condition (attribute)"
* component[changeStatus].valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* component[changeNature].code = $sct#246454002 "Etiology (attribute)"
* component[changeNature].valueCodeableConcept = $snomed-prostate-extension-cs-url#change-benign "Benign change"
* note.text = "Bladder wall trabeculation consistent with benign prostatic hyperplasia."
