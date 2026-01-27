// ValueSet: Damage Status

ValueSet: DamageStatus
Id: lt-damage-status
Title: "Damage Status"
Description: "None, suspected, or present damage."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#260413007 "None (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004  "Present (qualifier value)"


// ValueSet: Damage Body Structures (includes base)

ValueSet: DamageBodyStructuresVS
Id: damage-body-structures-vs
Title: "Damage Body Structures"
Description: "Body structures that may be invaded or damaged by neoplasm."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#60405008 "Structure of capsule of prostate (body structure)"
* $sct#64739004 "Seminal vesicle structure (body structure)"
* $sct#36082003 "Structure of base of prostate (body structure)" //this should be base of seminal vesicle, but the code does not exist (also approved to exclude from laterality and add as body structure)
* $sct#59820001 "Blood vessel structure (body structure)"
* $sct#312500006  "Regional lymph node structure (body structure)" //this should be neurovascular bundles, but could not find the code

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

Profile: NeoplasmInvasionDamageObservation
Parent: Observation
Id: neoplasm-invasion-damage-observation
Title: "Presence of Direct Invasion by Neoplasm"
Description: "Damage/invasion status for a body structure, with optional laterality using EU siteLaterality."
* ^publisher = "HL7 Lithuania"

* status 1..1
* status = #final (exactly)

* category 1..1
* category = $observation-category#exam

* code 1..1
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"

* subject 1..1

// Answer: None / Suspected / Present
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from DamageStatus (required)

// Where
* bodySite 1..1
* bodySite from DamageBodyStructuresVS (required)

// Laterality (EU ValueSet)
* extension contains LTObservationStructureLaterality named structureLaterality 0..1
* extension[structureLaterality].value[x] only CodeableConcept

// Regional lymph nodes: optional free-text localization + size (mm) of the largest changed node
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false

* component contains
    regionalLymphNodeLocation 0..1 and
    regionalLymphNodeLargestSize 0..1

* component[regionalLymphNodeLocation].code = $sct#1279931003 "Anatomic location of lymph node microscopically examined (observable entity)" //location is not microscopically examined, but can-t find better code
* component[regionalLymphNodeLocation].value[x] only string

* component[regionalLymphNodeLargestSize].code = $sct#301866000 "Finding of size of lymph node (finding)" //maybe finding is not a great option here
* component[regionalLymphNodeLargestSize].value[x] only Quantity
* component[regionalLymphNodeLargestSize].valueQuantity.system = "http://unitsofmeasure.org"
* component[regionalLymphNodeLargestSize].valueQuantity.code = #mm
* component[regionalLymphNodeLargestSize].valueQuantity.unit = "mm"

// Profile: Pelvic organ changes (bladder / rectum / bone)
Profile: PelvicOrganChangesObservation
Parent: Observation
Id: pelvic-organ-changes-observation
Title: "Pelvic Organ Changes"
Description: "Bladder/rectal/bone changes. Same answer set as damages (none/suspected/present) + free text. No laterality."
* ^publisher = "HL7 Lithuania"

* status 1..1
* status = #final (exactly)

* category 1..1
* category = $observation-category#exam

* code 1..1
* code = $sct#263703002 "Changed status (qualifier value)"
* subject 1..1

// Answer: None / Suspected / Present (reuse same VS)
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from DamageStatus (required)

// Where (reuse the same body structures VS)
* bodySite 1..1
* bodySite from DamageBodyStructuresVS (required)

// Free text line
* note 0..1
* note.text 1..1

* component 0..0


// Examples

// Prostatic capsule – Present – Right
Instance: ExampleDamage-ProstaticCapsule-Right-Present
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Prostatic capsule, right, present"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#60405008 "Structure of capsule of prostate (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#24028007 "Right"

// Base of prostate – Suspected – (no laterality)
Instance: ExampleDamage-BaseOfProstate-Suspected
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Base of prostate, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#36082003 "Structure of base of prostate (body structure)"

// Seminal vesicle – Suspected – Left
Instance: ExampleDamage-SeminalVesicle-Left-Suspected
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Seminal vesicle, left, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#64739004 "Seminal vesicle structure (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#7771000 "Left"

// Neurovascular bundle – None – Right
Instance: ExampleDamage-NeurovascularBundle-Right-None
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Neurovascular bundle, right, none"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#260413007 "None (qualifier value)"
* bodySite = $sct#59820001 "Blood vessel structure (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#24028007 "Right"

// Lymph node – Present – Left
Instance: ExampleDamage-LymphNode-Left-Present
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Lymph node, left, present"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#312500006  "Regional lymph node structure (body structure)"
* extension[structureLaterality].valueCodeableConcept = $sct#7771000 "Left"

* component[regionalLymphNodeLocation].valueString = "Largest suspicious node: left obturator region"
* component[regionalLymphNodeLargestSize].valueQuantity = 9 'mm'

// Examples: Changes in the bladder / rectum / bones (all have optional free text)
Instance: ExampleChange-Bladder-Suspected
InstanceOf: PelvicOrganChangesObservation
Title: "Example: Bladder changes, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#263703002 "Changed status (qualifier value)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#89837001 "Urinary bladder structure (body structure)"
* note.text = "Bladder wall thickening; non-neoplastic changes favored. Correlate clinically."

Instance: ExampleChange-Rectum-None
InstanceOf: PelvicOrganChangesObservation
Title: "Example: Rectal changes, none"
* status = #final
* category = $observation-category#exam
* code = $sct#263703002 "Changed status (qualifier value)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#260413007 "None (qualifier value)"
* bodySite = $sct#34402009 "Rectum structure (body structure)"
* note.text = "No rectal wall changes."

Instance: ExampleChange-Bone-Present
InstanceOf: PelvicOrganChangesObservation
Title: "Example: Bone changes, present"
* status = #final
* category = $observation-category#exam
* code = $sct#263703002 "Changed status (qualifier value)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#272673000 "Bone structure (body structure)"
* note.text = "Sclerotic lesions in pelvic bones suspicious for metastases; recommend PSMA PET/CT."
