// ValueSet: Damage Status

ValueSet: ProstateDamageAndChangeStatus
Id: lt-prostate-damage-and-change-status
Title: "Prostate Damage and Change Status"
Description: "Absent, suspected, present damage and change."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#2667000 "Absent (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004  "Present (qualifier value)"


// ValueSet: Damage Body Structures (includes base)

ValueSet: ProstateBodyStructuresVS
Id: lt-prostate-body-structures-vs
Title: "Prostate Body Structures for Damages and Changes"
Description: "Body structures that may be damaged by neoplasm or have lesions."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#60405008 "Structure of capsule of prostate (body structure)"
* $sct#64739004 "Seminal vesicle structure (body structure)"
* $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"
* $sct#59820001 "Blood vessel structure (body structure)"
* $sct#312500006  "Regional lymph node structure (body structure)"
* $sct#89837001 "Urinary bladder structure (body structure)"
* $sct#34402009 "Rectum structure (body structure)"
* $sct#272673000 "Bone structure (body structure)"


// Profile: Presence of direct invasion by neoplasm

Profile: ProstateNeoplasmInvasionDamageObservation
Parent: Observation
Id: prostate-neoplasm-invasion-damage-observation
Title: "Presence of Direct Invasion by Neoplasm to prostate Structures"
Description: "Damage/invasion status for a prostate body structure."
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
* valueCodeableConcept from ProstateDamageAndChangeStatus (required)

* bodySite 0..0

* bodyStructure 1..1
* bodyStructure only Reference($EuBodyStructure)

* note 0..1
* note.text 1..1


// Profile: Pelvic organ changes (bladder / rectum / bone)

Profile: PelvicOrganChangesObservation
Parent: Observation
Id: pelvic-organ-changes-observation
Title: "Pelvic Organ Changes"
Description: "Bladder, rectal, bone changes status in prostate cancer staging."
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
* valueCodeableConcept from ProstateDamageAndChangeStatus (required)

* bodySite 0..0

* bodyStructure 1..1
* bodyStructure only Reference($EuBodyStructure)

* note 0..1
* note.text 1..1


// BodyStructure instances

Instance: BodyStructureProstateProstaticCapsuleRightExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate prostatic capsule example"
Description: "Prostate prostatic capsule with right laterality."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#60405008 "Structure of capsule of prostate (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"

Instance: BodyStructureProstateBaseOfSeminalVesicleExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate base of seminal vesicle example"
Description: "Prostate base of seminal vesicle without laterality."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"

Instance: BodyStructureProstateSeminalVesicleLeftExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate seminal vesicle example"
Description: "Prostate seminal vesicle with left laterality."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#64739004 "Seminal vesicle structure (body structure)"
* includedStructure[0].laterality = $sct#7771000 "Left"

Instance: BodyStructureProstateNeurovascularBundleRightExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate neurovascular bundle example"
Description: "Prostate neurovascular bundle (blood vessel structure) with right laterality."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#59820001 "Blood vessel structure (body structure)"
* includedStructure[0].laterality = $sct#24028007 "Right"

Instance: BodyStructureProstateRegionalLymphNodeLeftExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate regional lymph node example"
Description: "Prostate regional lymph node with left laterality."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#312500006  "Regional lymph node structure (body structure)"
* includedStructure[0].laterality = $sct#7771000 "Left"
* description = "Largest suspicious node: left obturator region; size ~9 mm."

Instance: BodyStructureProstateUrinaryBladderExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate urinary bladder example"
Description: "Prostate urinary bladder."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#89837001 "Urinary bladder structure (body structure)"

Instance: BodyStructureProstateRectumExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate rectum example"
Description: "Prostate rectum."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#34402009 "Rectum structure (body structure)"

Instance: BodyStructureProstateBoneExample
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate bone example"
Description: "Prostate bone."
* active = true
* patient = Reference(Patient/example)
* includedStructure[0].structure = $sct#272673000 "Bone structure (body structure)"


// Observation examples

Instance: ObservationProstateProstaticCapsuleExample
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Observation: Prostate prostatic capsule example"
Description: "Shows present direct invasion by neoplasm to the prostatic capsule with right laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateProstaticCapsuleRightExample)

Instance: ObservationProstateBaseOfSeminalVesicleExample
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Observation: Prostate base of seminal vesicle example"
Description: "Shows suspected direct invasion by neoplasm to the base of seminal vesicle."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateBaseOfSeminalVesicleExample)

Instance: ObservationProstateSeminalVesicleExample
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Observation: Prostate seminal vesicle example"
Description: "Shows suspected direct invasion by neoplasm to the seminal vesicle with left laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateSeminalVesicleLeftExample)

Instance: ObservationProstateNeurovascularBundleExample
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Observation: Prostate neurovascular bundle example"
Description: "Shows absent direct invasion by neoplasm to the neurovascular bundle with right laterality."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateNeurovascularBundleRightExample)

Instance: ObservationProstateRegionalLymphNodeExample
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Observation: Prostate regional lymph node example"
Description: "Shows present direct invasion by neoplasm to a regional lymph node with left laterality; narrative includes location and size."
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateRegionalLymphNodeLeftExample)
* note.text = "Largest suspicious node: left obturator region; size ~9 mm."

Instance: ObservationProstateUrinaryBladderChangesExample
InstanceOf: PelvicOrganChangesObservation
Title: "Observation: Prostate urinary bladder changes example"
Description: "Shows suspected urinary bladder changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateUrinaryBladderExample)
* note.text = "Bladder wall thickening; non-neoplastic changes favored. Correlate clinically."

Instance: ObservationProstateRectumChangesExample
InstanceOf: PelvicOrganChangesObservation
Title: "Observation: Prostate rectum changes example"
Description: "Shows absent rectal changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateRectumExample)
* note.text = "No rectal wall changes."

Instance: ObservationProstateBoneChangesExample
InstanceOf: PelvicOrganChangesObservation
Title: "Observation: Prostate bone changes example"
Description: "Shows present bone changes with narrative text."
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodyStructure = Reference(BodyStructureProstateBoneExample)
* note.text = "Sclerotic lesions in pelvic bones suspicious for metastases; recommend PSMA PET/CT."
