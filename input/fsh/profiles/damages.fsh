// Aliases

Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $laterality = http://hl7.org/fhir/ValueSet/bodysite-laterality
Alias: $ucum = http://unitsofmeasure.org

// Damage Status

ValueSet: DamageStatus
Id: lt-damage-status
Title: "Damage Status"
Description: "None, suspected, or present damage."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#260413007 "None (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004 "Present (qualifier value)"

// Damage Target

ValueSet: DamageTarget
Id: lt-damage-target
Title: "Prostate MRI Damage Target"
Description: "Anatomical structure assessed for damage on prostate MRI."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#60405008  "Structure of capsule of prostate (body structure)"
* $sct#64739004  "Seminal vesicle structure (body structure)"
* $sct#59820001 "Blood vessel structure (body structure)"
* $sct#371494008 "Regional lymph node involvement (observable entity)"

// Damage Body Site

ValueSet: DamageBodySite
Id: lt-damage-body-site
Title: "Damage Body Site"
Description: "Laterality or specific anatomical site for prostate MRI damage."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* include codes from valueset $laterality
* $sct#36082003 "Structure of base of prostate (body structure)"

// Profile

Profile: LTProstateDamage
Parent: LTBaseObservation
Id: lt-prostate-damage
Title: "Prostate MRI Damage"
Description: "Unified observation for prostate MRI damage findings."

* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#imaging "Imaging"

* subject 1..1

* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* valueCodeableConcept from DamageStatus (required)
* bodySite from DamageBodySite

* code 1..1
* code from DamageTarget (required)

* value[x] only CodeableConcept
* valueCodeableConcept from DamageStatus (required)

* bodySite 0..1
* bodySite from DamageBodySite

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    nodeLocation 0..1 and
    nodeSize 0..1

* component[nodeLocation].code =
  $sct#399635006 "Site of lymph node (observable entity)"
* component[nodeLocation].value[x] only string

* component[nodeSize].code =
  $sct#364109001 "Size of lymph node (observable entity)"
* component[nodeSize].value[x] only Quantity
* component[nodeSize].valueQuantity.system = $ucum
* component[nodeSize].valueQuantity.code = #mm
* component[nodeSize].valueQuantity.unit = "mm"

* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"


Instance: ExampleSeminalVesicleDamage
InstanceOf: LTProstateDamage
Title: "Example Seminal Vesicle Damage at Prostate Base"
Description: "MRI shows present damage of seminal vesicles at the prostate base."

* status = #final
* category = $observation-category#imaging "Imaging"

* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#36082003 "Structure of base of prostate (body structure)"

* subject = Reference(Patient/example)

* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"
