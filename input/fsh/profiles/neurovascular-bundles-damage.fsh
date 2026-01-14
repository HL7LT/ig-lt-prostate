Alias: $sct = http://snomed.info/sct
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $laterality = http://hl7.org/fhir/ValueSet/bodysite-laterality

ValueSet: NeurovascularBundleDamageStatus
Id: lt-neurovascular-bundle-damage-status
Title: "Neurovascular Bundle Damage Status"
Description: "Codes representing absence, suspicion, or confirmed involvement of the neurovascular bundles."

* ^language = #en
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#260413007 "None (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004 "Present (qualifier value)"


Profile: LTNeurovascularBundleDamage
Parent: LTBaseObservation
Id: lt-neurovascular-bundle-damage
Title: "Neurovascular Bundle Damage on MRI"
Description: "Observation profile representing assessment of neurovascular bundle damage or involvement on MRI."

* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#imaging "Imaging"

* code = $sct#385008006 "Surgical posterolateral (neurovascular bundle) margin involved by malignant neoplasm (finding)"

* subject 1..1

* value[x] only CodeableConcept
* valueCodeableConcept from NeurovascularBundleDamageStatus (required)

* bodySite from $laterality (required)

* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"


Instance: Example-NeurovascularBundle-Damage-Confirmed-Right
InstanceOf: LTNeurovascularBundleDamage
Title: "Example: Confirmed Neurovascular Bundle Damage (Right)"
Description: "An example MRI observation showing confirmed involvement of the right neurovascular bundle."

Usage: #example

* status = #final
* category = $observation-category#imaging "Imaging"
* code = $sct#385008006 "Surgical posterolateral (neurovascular bundle) margin involved by malignant neoplasm (finding)"

* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2026-01-13T15:00:00+02:00"

* valueCodeableConcept = $sct#52101004 "Present (qualifier value)"
* bodySite = $sct#24028007 "Right (qualifier value)"

* method = $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"
