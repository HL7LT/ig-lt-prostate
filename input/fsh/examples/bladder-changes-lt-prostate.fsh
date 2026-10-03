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
// Code corrected: 246454002 is "Occurrence (attribute)" in SNOMED CT,
// not what the display beside it said. 134198009 is the concept meant.
* component[changeNature].code = $sct#134198009 "Etiology (attribute)"
* component[changeNature].valueCodeableConcept = $snomed-prostate-extension-cs-url#change-neoplasm-related "Related to prostate neoplasm (finding)"
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
// Code corrected: 246454002 is "Occurrence (attribute)" in SNOMED CT,
// not what the display beside it said. 134198009 is the concept meant.
* component[changeNature].code = $sct#134198009 "Etiology (attribute)"
* component[changeNature].valueCodeableConcept = $snomed-prostate-extension-cs-url#change-benign "Benign change (finding)"
* note.text = "Bladder wall trabeculation consistent with benign prostatic hyperplasia."
