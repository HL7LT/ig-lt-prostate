Instance: observation-prostate-precise-followup-example
InstanceOf: PreciseAssessmentLtProstate
Usage: #example
Title: "Observation: PRECISE assessment, stable (example)"
Description: "PRECISE category 3 (stable disease) longitudinal follow-up assessment."
* status = #final
* code = ProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal assessment"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* valueCodeableConcept = ProstatePreciseCategoryCS#3 "PRECISE 3 - Stable disease"
* derivedFrom[+] = Reference(imagingstudy-prostate-mpmri-example)
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = ProstatePreciseChangePatternCS#local "Local change"
* component[bestSequence].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* note.text = "Stable disease compared to prior MRI examinations."

Instance: observation-prostate-precise-followup-example2
InstanceOf: PreciseAssessmentLtProstate
Usage: #example
Title: "Observation: PRECISE assessment, likely progression (example)"
Description: "PRECISE category 4 (likely progression) with dimensions, volume, Likert, and prior study context."
* status = #final
* code = ProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal assessment"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2026-03-15T10:30:00Z"
* derivedFrom[+] = Reference(imagingstudy-prostate-mpmri-example)
* valueCodeableConcept = ProstatePreciseCategoryCS#4 "PRECISE 4 - Likely progression"
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = ProstatePreciseChangePatternCS#local "Local change"
* component[bestSequence][0].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* component[bestSequence][1].valueCodeableConcept = $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* component[sizeChangeMm].valueQuantity = 3 'mm'
* component[dimension1].valueQuantity = 12 'mm'
* component[dimension2].valueQuantity = 9 'mm'
* component[dimension3].valueQuantity = 11 'mm'
* component[changeVolume].valueQuantity = 0.6 'cm3'
* component[likertScale].valueInteger = 4
* component[priorPirads].valueInteger = 3
* component[priorTnmStage].valueString = "cT2 N0 M0"
* component[priorCapsuleDamage].valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* component[priorVesicleDamage].valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* note.text = "Follow-up MRI shows likely progression compared to prior study; progression driven by lesion growth and increased DWI restriction."
