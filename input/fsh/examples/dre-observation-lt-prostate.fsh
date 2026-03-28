Instance: observation-prostate-dre-hard-example
InstanceOf: DreObservationLtProstate
Usage: #example
Title: "Observation: DRE – hard prostate (example)"
Description: "Digital rectal examination finding: hard prostate consistency."
* status = #final
* category = $observation-category#exam
* code = $sct#410006001 "Digital examination of rectum (procedure)"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2025-04-15"
* valueCodeableConcept = $sct#276387009 "Hard prostate (finding)"

Instance: observation-prostate-dre-palpable-mass-example
InstanceOf: DreObservationLtProstate
Usage: #example
Title: "Observation: DRE – palpable mass (example)"
Description: "Digital rectal examination finding: palpable mass detected."
* status = #final
* category = $observation-category#exam
* code = $sct#410006001 "Digital examination of rectum (procedure)"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2025-04-15"
* valueCodeableConcept = $sct#443607001 "Palpable mass (finding)"
* note.text = "Firm nodule palpated at right lobe of prostate, approximately 1 cm"
