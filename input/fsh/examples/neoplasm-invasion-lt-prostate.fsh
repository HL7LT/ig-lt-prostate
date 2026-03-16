Instance: observation-prostatic-capsule-invasion-present-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Capsular Invasion (Present, Right) (example)"
Description: "Shows present direct invasion by neoplasm to the prostatic capsule with right laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostatic-capsule-right-example)

Instance: observation-prostate-seminal-base-invasion-suspected-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Base of Seminal Vesicle Invasion (Suspected) (example)"
Description: "Shows suspected direct invasion by neoplasm to the base of seminal vesicle."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-base-of-seminal-vesicle-example)

Instance: observation-seminal-vesicle-invasion-suspected-l-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Seminal Vesicle Invasion (Suspected, Left) (example)"
Description: "Shows suspected direct invasion by neoplasm to the seminal vesicle with left laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-seminal-vesicle-left-example)

Instance: observation-prostate-neurovascular-invasion-absent-r-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Neurovascular Bundle Invasion (Absent, Right) (example)"
Description: "Shows absent direct invasion by neoplasm to the neurovascular bundle with right laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-neurovascular-bundle-right-example)

Instance: observation-prostate-lymphnode-invasion-present-l-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Regional Lymph Node Involvement (Present, Left) (example)"
Description: "Shows present direct invasion by neoplasm to a regional lymph node with left laterality; narrative includes location and size."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-regional-lymph-node-left-example)
* note.text = "Largest suspicious node: left obturator region; size ~9 mm."
