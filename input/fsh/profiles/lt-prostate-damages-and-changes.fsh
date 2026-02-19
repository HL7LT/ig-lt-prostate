// ValueSet: Damage and Change Status – Prostate LT
ValueSet: DamageAndChangeStatusProstateLt
Id: damage-and-change-status-prostate-lt
Title: "ValueSet: Prostate - Damage and Change Status"
Description: "Absent, suspected, or present damage and change status for prostate cancer staging."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#2667000 "Absent (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004  "Present (qualifier value)"



// ValueSet: Body Structures – Prostate LT
ValueSet: BodyStructuresProstateLt
Id: body-structures-prostate-lt
Title: "Prostate - Body Structures"
Description: "Body structures that may be affected by prostate cancer invasion or local organ changes."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#60405008 "Structure of capsule of prostate (body structure)"
* $sct#64739004 "Seminal vesicle structure (body structure)"
* $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"
* $sct#59820001 "Blood vessel structure (body structure)"
* $sct#312500006 "Regional lymph node structure (body structure)"
* $sct#89837001 "Urinary bladder structure (body structure)"
* $sct#34402009 "Rectum structure (body structure)"
* $sct#272673000 "Bone structure (body structure)"



// Profile: Presence of direct invasion by neoplasm
Profile: NeoplasmInvasionProstateLt
Parent: LTBaseObservation
Id: neoplasm-invasion-prostate-lt
Title: "Observation: Neoplasm Invasion"
Description: "Direct invasion of prostate-related structures by neoplasm."
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from DamageAndChangeStatusProstateLt (required)
* bodySite 0..0
* bodyStructure 1..1
* bodyStructure only Reference($EuBodyStructureUrl)
* note 0..1
* note.text 1..1


// Profile: Pelvic organ changes (bladder / rectum / bone)

// Profile: Pelvic Organ Changes – Prostate LT
Profile: PelvicOrganChangesProstateLt
Parent: LTBaseObservation
Id: pelvic-organ-changes-prostate-lt
Title: "Observation: Pelvic Organ Changes"
Description: "Bladder, rectal, and bone changes in prostate cancer staging."
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from DamageAndChangeStatusProstateLt (required)
* bodySite 0..0
* bodyStructure 1..1
* bodyStructure only Reference($EuBodyStructureUrl)
* note 0..1
* note.text 1..1


// BodyStructure instances

Instance: bodyStructure-prostatic-capsule-right-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Prostatic Capsule (Right) Example"
Description: "Prostate prostatic capsule with right laterality."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#60405008 "Structure of capsule of prostate (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"

Instance: bodyStructure-prostate-base-of-seminal-vesicle-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Base of Seminal Vesicle Example"
Description: "Base of seminal vesicle without laterality."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"

Instance: bodyStructure-prostate-seminal-vesicle-left-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Seminal Vesicle (Left) Example"
Description: "Seminal vesicle with left laterality."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#64739004 "Seminal vesicle structure (body structure)"
* includedStructure[0].laterality = $sct#7771000 "Left"

Instance: bodyStructure-prostate-neurovascular-bundle-right-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Neurovascular Bundle (Right) Example"
Description: "Neurovascular bundle (blood vessel structure) with right laterality."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#59820001 "Blood vessel structure (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"

Instance: bodyStructure-prostate-regional-lymph-node-left-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Regional Lymph Node (Left) Example"
Description: "Regional lymph node with left laterality."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#312500006  "Regional lymph node structure (body structure)"
* includedStructure[0].laterality = $sct#7771000 "Left"
* description = "Largest suspicious node: left obturator region; size ~9 mm."

Instance: bodyStructure-prostate-urinary-bladder-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Urinary Bladder Example"
Description: "Urinary bladder."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#89837001 "Urinary bladder structure (body structure)"

Instance: bodyStructure-prostate-rectum-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Rectum Example"
Description: "Rectum."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#34402009 "Rectum structure (body structure)"

Instance: bodyStructure-prostate-bone-example
InstanceOf: $EuBodyStructureUrl
Title: "BodyStructure: Prostate - Bone Example"
Description: "Bone structure relevant for metastatic assessment."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#272673000 "Bone structure (body structure)"


// Observation examples

Instance: observation-prostatic-capsule-invasion-present-example
InstanceOf: NeoplasmInvasionProstateLt
Title: "Observation: Prostate - Capsular Invasion (Present, Right) Example"
Description: "Shows present direct invasion by neoplasm to the prostatic capsule with right laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostatic-capsule-right-example)

Instance: observation-prostate-seminal-base-invasion-suspected-example
InstanceOf: NeoplasmInvasionProstateLt
Title: "Observation: Prostate - Base of Seminal Vesicle Invasion (Suspected) Example"
Description: "Shows suspected direct invasion by neoplasm to the base of seminal vesicle."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-base-of-seminal-vesicle-example)

Instance: observation-seminal-vesicle-invasion-suspected-l-example
InstanceOf: NeoplasmInvasionProstateLt
Title: "Observation: Prostate - Seminal Vesicle Invasion (Suspected, Left) Example"
Description: "Shows suspected direct invasion by neoplasm to the seminal vesicle with left laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-seminal-vesicle-left-example)

Instance: observation-prostate-neurovascular-invasion-absent-r-example
InstanceOf: NeoplasmInvasionProstateLt
Title: "Observation: Prostate - Neurovascular Bundle Invasion (Absent, Right) Example"
Description: "Shows absent direct invasion by neoplasm to the neurovascular bundle with right laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-neurovascular-bundle-right-example)

Instance: observation-prostate-lymphnode-invasion-present-l-example
InstanceOf: NeoplasmInvasionProstateLt
Title: "Observation: Prostate - Regional Lymph Node Involvement (Present, Left) Example"
Description: "Shows present direct invasion by neoplasm to a regional lymph node with left laterality; narrative includes location and size."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-regional-lymph-node-left-example)
* note.text = "Largest suspicious node: left obturator region; size ~9 mm."

Instance: observation-prostate-urinary-bladder-changes-suspected-example
InstanceOf: PelvicOrganChangesProstateLt
Title: "Observation: Prostate - Urinary Bladder Wall Thickening (Suspected) Example"
Description: "Shows suspected urinary bladder changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-urinary-bladder-example)
* note.text = "Bladder wall thickening; non-neoplastic changes favored. Correlate clinically."

Instance: observation-prostate-rectal-changes-absent-example
InstanceOf: PelvicOrganChangesProstateLt
Title: "Observation: Prostate - Rectal Changes (Absent) Example"
Description: "Shows absent rectal changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-rectum-example)
* note.text = "No rectal wall changes."

Instance: observation-prostate-bone-changes-present-example
InstanceOf: PelvicOrganChangesProstateLt
Title: "Observation: Prostate - Bone Changes (Present) Example"
Description: "Shows present bone changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-bone-example)
* note.text = "Sclerotic lesions in pelvic bones suspicious for metastases; recommend PSMA PET/CT."
