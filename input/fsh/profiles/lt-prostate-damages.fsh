// =====================================================
// ValueSet: Damage Status
// =====================================================

ValueSet: DamageStatus
Id: lt-damage-status
Title: "Damage Status"
Description: "None, suspected, or present damage."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#260413007 "None (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004  "Present (qualifier value)"


// =====================================================
// ValueSet: Damage Body Structures (includes base)
// =====================================================

ValueSet: DamageBodyStructuresVS
Id: damage-body-structures-vs
Title: "Damage Body Structures"
Description: "Body structures that may be invaded or damaged by neoplasm."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#716917000 "Prostatic capsule"
* $sct#181277001 "Seminal vesicle"
* $sct#279549004 "Neurovascular bundle"
* $sct#59441001  "Lymph node"
* $sct#18144005  "Base of prostate"


// =====================================================
// Extension: LT Observation Structure Laterality (EU binding)
// (Because observation-structureLaterality is not present in your deps)
// =====================================================

Extension: LTObservationStructureLaterality
Id: lt-observation-structureLaterality
Title: "Observation Structure Laterality (LT, EU binding)"
Description: "Laterality qualifier for the Observation bodySite, bound to EU siteLaterality."
* ^status = #active
* ^publisher = "HL7 Lithuania"

// Where it can be used
* ^context[0].type = #element
* ^context[0].expression = "Observation"

// Value
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.eu/fhir/base-r5/ValueSet/siteLaterality-eu (required)


// =====================================================
// Profile: Presence of direct invasion by neoplasm
// =====================================================

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

// Laterality (optional, EU ValueSet)
* extension contains LTObservationStructureLaterality named structureLaterality 0..1
* extension[structureLaterality].value[x] only CodeableConcept


// =====================================================
// Examples (cover everything)
// NOTE: set `code` consistently with display to avoid "different CodeableConcept" errors
// =====================================================

// 1) Prostatic capsule – Present – Right
Instance: ExampleDamage-ProstaticCapsule-Right-Present
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Prostatic capsule, right, present"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#716917000 "Prostatic capsule"
* extension[structureLaterality].valueCodeableConcept = $sct#24028007 "Right"


// 2) Seminal vesicle – Suspected – Left
Instance: ExampleDamage-SeminalVesicle-Left-Suspected
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Seminal vesicle, left, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#181277001 "Seminal vesicle"
* extension[structureLaterality].valueCodeableConcept = $sct#7771000 "Left"


// 3) Neurovascular bundle – None – Right
Instance: ExampleDamage-NeurovascularBundle-Right-None
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Neurovascular bundle, right, none"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#260413007 "None (qualifier value)"
* bodySite = $sct#279549004 "Neurovascular bundle"
* extension[structureLaterality].valueCodeableConcept = $sct#24028007 "Right"


// 4) Lymph node – Present – Left
Instance: ExampleDamage-LymphNode-Left-Present
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Lymph node, left, present"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#59441001 "Lymph node"
* extension[structureLaterality].valueCodeableConcept = $sct#7771000 "Left"


// 5) Base of prostate – Suspected – (no laterality)
Instance: ExampleDamage-BaseOfProstate-Suspected
InstanceOf: NeoplasmInvasionDamageObservation
Title: "Example: Base of prostate, suspected"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(Patient/example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodySite = $sct#18144005 "Base of prostate"
