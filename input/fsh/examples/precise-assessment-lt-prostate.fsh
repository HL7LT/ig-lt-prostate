Instance: observation-prostate-precise-followup-example
InstanceOf: PreciseAssessmentLtProstate
Usage: #example
Title: "Observation: Prostate - PRECISE Longitudinal Assessment (example)"
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
Title: "Observation: Prostate - PRECISE Longitudinal Assessment Example2 (example)"
* status = #final
* code = ProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal assessment"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2026-03-15T10:30:00Z"
* derivedFrom[+] = Reference(imagingstudy-prostate-mpmri-example)
* valueCodeableConcept = ProstatePreciseCategoryCS#4 "PRECISE 4 - Likely progression"
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = ProstatePreciseChangePatternCS#local "Local change"
* component[bestSequence].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* component[sizeChangeMm].valueQuantity = 3 'mm'
* note.text = "Follow-up MRI shows likely progression compared to prior study; progression driven by lesion growth and increased DWI restriction."
