Instance: observation-prostate-piqual-example
InstanceOf: PiqualObservationLtProstate
Usage: #example
Title: "Observation: PI-QUAL Score (example)"
Description: "PI-QUAL image quality score 3 (sufficient diagnostic quality) for prostate MRI."
* status = #final
* code = $prostate-piqual-scale-url#1 "No mpMRI sequences are of diagnostic quality"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2025-09-22T10:30:00Z"
* valueInteger = 3
