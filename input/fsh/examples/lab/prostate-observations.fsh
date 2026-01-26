Instance: prostate-psa-example
InstanceOf: LTBaseObservation
Title: "Observation: Prostate - PSA Example"
Description: "Prostate Specific Antigen (PSA) Observation Example"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2857-1 "Prostate Specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2025-10-01T09:00:00Z"
* valueQuantity = 9.0 $ucum#ng/mL "ng/mL"
* interpretation = $v3-obs-interpretation#A "Abnormal"


Instance: prostate-volume-example
InstanceOf: LTBaseObservation
Title: "Observation: Prostate - Volume Example"
Description: "Prostate Volume Observation Example"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15315-5 "Prostate Volume by derived by planimetry (US)"  //or 72278-5	Volume of Prostatic fluid?
* code.text = "Prostate Volume"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2024-01-20T10:00:00Z"
* valueQuantity = 50 $ucum#mL "cc"


Instance: prostate-psad-example
InstanceOf: LTBaseObservation
Title: "Observation: Prostate - PSA Density Example"
Description: "Prostate-Specific Antigen Density (PSAD) Observation Example"
Usage: #example
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15325-4 "Prostate specific Ag/Prostate volume calculated"
* code.text = "PSA Density"
* subject = Reference(Patient/example-patient)
* effectiveDateTime = "2024-01-20T10:00:00Z"
* valueQuantity = 0.18 $ucum#ng/mL.cm3 "ng/mL/cc"
* interpretation = $v3-obs-interpretation#H "High"
* interpretation.text = "Elevated density (>0.15 indicates risk)"
* note.text = "Calculated based on PSA of 9.0 ng/mL and Volume of 50 cc."
