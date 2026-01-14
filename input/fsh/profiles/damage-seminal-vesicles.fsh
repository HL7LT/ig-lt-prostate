Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $laterality = http://hl7.org/fhir/ValueSet/bodysite-laterality

ValueSet: SeminalVesicleDamageStatus
Id: lt-seminal-vesicle-damage-status
Title: "Seminal Vesicle Damage Status"
Description: "Codes representing absence, suspicion, or confirmed damage/invasion of the seminal vesicles."
* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#260413007 "None (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004 "Present (qualifier value)"

ValueSet: SeminalVesicleLocation
Id: lt-seminal-vesicle-location
Title: "Seminal Vesicle Location"
Description: "Anatomical location of seminal vesicle damage."

* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#24028007 "Right (qualifier value)"
* $sct#7771000  "Left (qualifier value)"
* $sct#36082003 "Structure of base of prostate (body structure)"


Profile: LTSeminalVesicleDamage
Parent: LTBaseObservation
Id: lt-seminal-vesicle-damage
Title: "Seminal Vesicle Damage on MRI"
Description: "Observation profile representing assessment of seminal vesicle damage or invasion on MRI."

* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#imaging "Imaging"
* code = $sct#384999004 "Status of seminal vesicle invasion by tumor (observable entity)"

* subject 1..1

* value[x] only CodeableConcept
* valueCodeableConcept from SeminalVesicleDamageStatus (required)

* bodySite from SeminalVesicleLocation (required)

* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"


Instance: Example-SeminalVesicle-Damage-Confirmed-Left
InstanceOf: LTSeminalVesicleDamage
Title: "Example: Confirmed Seminal Vesicle Damage (Left)"
Description: "An example MRI observation showing confirmed damage of the left seminal vesicle."

Usage: #example

* status = #final
* category = $observation-category#imaging "Imaging"
* code = $sct#384999004 "Status of seminal vesicle invasion by tumor (observable entity)"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-01-13T14:45:00+02:00"

* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#7771000 "Left (qualifier value)"

* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"
