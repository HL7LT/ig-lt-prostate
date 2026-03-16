Instance: observation-prostate-piqual-example
InstanceOf: PiqualObservationLtProstate
Usage: #example
Title: "Observation: Prostate - PI-QUAL Score (example)"
* status = #final
* code = PiqualLtProstateCS#piqual "PI-QUAL image quality score"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* valueInteger = 3
