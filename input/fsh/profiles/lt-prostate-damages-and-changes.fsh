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

//may be damaged by neoplasm
* $sct#60405008 "Structure of capsule of prostate (body structure)"
* $sct#64739004 "Seminal vesicle structure (body structure)"
* $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"
* $sct#59820001 "Blood vessel structure (body structure)" //this should be neurovascular bundles, but could not find the code
* $sct#312500006  "Regional lymph node structure (body structure)"

//may have lesions
* $sct#89837001 "Urinary bladder structure (body structure)"
* $sct#34402009 "Rectum structure (body structure)"
* $sct#272673000 "Bone structure (body structure)"


// Extension: LT Observation Structure Laterality

Extension: LTObservationStructureLaterality
Id: lt-observation-structureLaterality
Title: "Observation Structure Laterality (LT, EU binding)"
Description: "Laterality qualifier for the Observation bodySite, bound to EU siteLaterality."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* ^context[0].type = #element
* ^context[0].expression = "Observation"

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.eu/fhir/base-r5/ValueSet/siteLaterality-eu (required)


// Profile: Presence of direct invasion by neoplasm

Profile: ProstateNeoplasmInvasionDamageObservation
Parent: Observation
Id: prostate-neoplasm-invasion-damage-observation
Title: "Presence of Direct Invasion by Neoplasm to prostate Structures"
Description: "Damage/invasion status for a prostate body structure, with laterality using EU siteLaterality."
* ^publisher = "HL7 Lithuania"

* status 1..1
* status = #final (exactly)

* category 1..1
* category = $observation-category#exam

* code 1..1
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"

* subject 1..1

// Answer: Absent / Suspected / Present
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ProstateDamageAndChangeStatus (required)

// Where
* bodySite 1..1
* bodySite from ProstateBodyStructuresVS (required)
// Laterality (EU ValueSet)
* extension contains LTObservationStructureLaterality named structureLaterality 0..1
* extension[structureLaterality].value[x] only CodeableConcept

// Optional free text for anything that needs narrative detail
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

// Answer: Absent / Suspected / Present (reuse same VS)
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ProstateDamageAndChangeStatus (required)

// Where (reuse the same body structures VS)
* bodySite 1..1
* bodySite from ProstateBodyStructuresVS (required)
// Free text line
* note 0..1
* note.text 1..1


// Examples

// Prostatic capsule – Present – Right
Instance: ExampleDamage-ProstaticCapsule-Right-Present
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Example: Prostatic capsule, right, present"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#60405008 "Structure of capsule of prostate (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#24028007 "Right"

// Base of prostate – Suspected – (no laterality)
Instance: ExampleDamage-BaseOfSEminalVesicle-Suspected
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Example: Base of seminal vesicle, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"

// Seminal vesicle – Suspected – Left
Instance: ExampleDamage-SeminalVesicle-Left-Suspected
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Example: Seminal vesicle, left, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#64739004 "Seminal vesicle structure (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#7771000 "Left"

// Neurovascular bundle – Absent – Right
Instance: ExampleDamage-NeurovascularBundle-Right-Absent
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Example: Neurovascular bundle, right, absent"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodySite = $sct#59820001 "Blood vessel structure (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#24028007 "Right"

// Lymph node – Present – Left
Instance: ExampleDamage-LymphNode-Left-Present
InstanceOf: ProstateNeoplasmInvasionDamageObservation
Title: "Example: Lymph node, left, present"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#312500006  "Regional lymph node structure (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#7771000 "Left"
* note.text = "Largest suspicious node: left obturator region; size ~9 mm."

// Examples: Changes in the bladder / rectum / bones (all have optional free text)
Instance: ExampleChange-Bladder-Suspected
InstanceOf: PelvicOrganChangesObservation
Title: "Example: Bladder changes, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#89837001 "Urinary bladder structure (body structure)"
* note.text = "Bladder wall thickening; non-neoplastic changes favored. Correlate clinically."

Instance: ExampleChange-Rectum-Absent
InstanceOf: PelvicOrganChangesObservation
Title: "Example: Rectal changes, Absent"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#260413007 "Absent (qualifier value)"
* bodySite = $sct#34402009 "Rectum structure (body structure)"
* note.text = "No rectal wall changes."

Instance: ExampleChange-Bone-Present
InstanceOf: PelvicOrganChangesObservation
Title: "Example: Bone changes, present"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#272673000 "Bone structure (body structure)"
* note.text = "Sclerotic lesions in pelvic bones suspicious for metastases; recommend PSMA PET/CT."
