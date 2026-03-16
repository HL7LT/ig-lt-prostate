Instance: bodyStructure-prostatic-capsule-right-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Prostatic Capsule (Right) (example)"
Description: "Prostate prostatic capsule with right laterality."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#60405008 "Structure of capsule of prostate (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"

Instance: bodyStructure-prostate-base-of-seminal-vesicle-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Base of Seminal Vesicle (example)"
Description: "Base of seminal vesicle without laterality."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"

Instance: bodyStructure-prostate-seminal-vesicle-left-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Seminal Vesicle (Left) (example)"
Description: "Seminal vesicle with left laterality."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#64739004 "Seminal vesicle structure (body structure)"
* includedStructure[0].laterality = $sct#7771000 "Left"

Instance: bodyStructure-prostate-neurovascular-bundle-right-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Neurovascular Bundle (Right) (example)"
Description: "Neurovascular bundle (blood vessel structure) with right laterality."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#59820001 "Blood vessel structure (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"

Instance: bodyStructure-prostate-regional-lymph-node-left-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Regional Lymph Node (Left) (example)"
Description: "Regional lymph node with left laterality."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#312500006  "Regional lymph node structure (body structure)"
* includedStructure[0].laterality = $sct#7771000 "Left"
* description = "Largest suspicious node: left obturator region; size ~9 mm."

Instance: bodyStructure-prostate-urinary-bladder-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Urinary Bladder (example)"
Description: "Urinary bladder."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#89837001 "Urinary bladder structure (body structure)"

Instance: bodyStructure-prostate-rectum-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Rectum (example)"
Description: "Rectum."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#34402009 "Rectum structure (body structure)"

Instance: bodyStructure-prostate-bone-example
InstanceOf: $EuBodyStructureUrl
Usage: #example
Title: "BodyStructure: Prostate - Bone (example)"
Description: "Bone structure relevant for metastatic assessment."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#272673000 "Bone structure (body structure)"
