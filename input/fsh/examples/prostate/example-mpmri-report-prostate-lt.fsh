Instance: example2-prostate-lesion1
InstanceOf: LTProstateLesion
Usage: #example
Title: "Example 2 – Prostate Lesion 1 (Anterior Mid Transition Zone, crosses midline)"
* patient = Reference(example-male-patient)
* includedStructure.structure = $sct#716913001 "Structure of anterior middle regional part of transition zone of right half prostate"
* morphology = $sct#49755003 "Morphologically abnormal structure"
* description = "MRI-visible anterior transition zone lesion (~32 mm), predominantly right-sided with extension across midline to the left (mid-gland)."


Instance: example2-pirads-lesion1
InstanceOf: LTProstatePIRADSAssessment
Usage: #example
Title: "Example 2 – PI-RADS Assessment (Lesion 1)"
* status = #final
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(example2-prostate-lesion1)
* valueInteger = 5
* bodySite = $sct#716913001 "Structure of anterior middle regional part of transition zone of right half prostate"
* method.text = "PI-RADS v2.1"
* note.text = "Anterior transition zone lesion (~32 mm), extending across midline. Very high suspicion on mpMRI."


Instance: example2-t2-score-lesion1
InstanceOf: LTProstateSequenceScoreObservation
Usage: #example
Title: "Example 2 – T2 Score (Lesion 1)"
* status = #final
* code = $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(example2-prostate-lesion1)
* valueInteger = 5
* note.text = "T2 score 5 in transition zone lesion."


Instance: example2-dwi-score-lesion1
InstanceOf: LTProstateSequenceScoreObservation
Usage: #example
Title: "Example 2 – DWI Score (Lesion 1)"
* status = #final
* code = $dicom-dcm#113043 "Diffusion weighted"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(example2-prostate-lesion1)
* valueInteger = 5
* note.text = "Marked diffusion restriction (DWI score 5)."


Instance: example2-adc-score-lesion1
InstanceOf: LTProstateSequenceScoreObservation
Usage: #example
Title: "Example 2 – ADC Score (Lesion 1)"
* status = #final
* code = $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(example2-prostate-lesion1)
* valueInteger = 5
* note.text = "Low ADC corresponding to restricted diffusion (ADC score 5)."


Instance: example2-dce-score-lesion1
InstanceOf: LTProstateSequenceScoreObservation
Usage: #example
Title: "Example 2 – DCE (Lesion 1, Positive)"
* status = #final
* code = $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(example2-prostate-lesion1)
* valueInteger = 5
* note.text = "Dynamic contrast enhancement reported as positive (+)."


Instance: example2-precise-followup
InstanceOf: LTProstatePreciseAssessment
Usage: #example
Title: "Example 2 – PRECISE Assessment (Stable Disease)"
* status = #final
* code = LTProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal assessment"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* valueCodeableConcept = LTProstatePreciseCS#precise-3 "PRECISE 3 - Stable disease"
* derivedFrom[+] = Reference(example-imagingstudy)
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = LTProstatePreciseChangePatternCS#local "Local change"
* component[bestSequence].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* note.text = "Stable disease compared to prior MRI examinations."


Instance: example2-prostate-psa
InstanceOf: LTBaseObservation
Usage: #example
Title: "Example 2 – Prostate PSA"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2857-1 "Prostate Specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 15.7 $ucum#ng/mL "ng/mL"
* interpretation = $v3-obs-interpretation#A "Abnormal"


Instance: example2-prostate-volume
InstanceOf: LTBaseObservation
Usage: #example
Title: "Example 2 – Prostate Volume"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15315-5 "Prostate Volume by derived by planimetry (US)"
* code.text = "Prostate Volume"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 45 $ucum#mL "mL"


Instance: example2-prostate-psad
InstanceOf: LTBaseObservation
Usage: #example
Title: "Example 2 – Prostate PSA Density"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15325-4 "Prostate specific Ag/Prostate volume calculated"
* code.text = "PSA Density"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 0.35 $ucum#ng/mL.cm3 "ng/mL/cc"
* interpretation = $v3-obs-interpretation#H "High"
* note.text = "Elevated PSA density."


Instance: example2-mri-procedure
InstanceOf: $ProcedureEuImagingUrl
Usage: #example
Title: "Example 2 – Prostate mpMRI Procedure"
* status = #completed
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"
* subject = Reference(example-male-patient)
* note.text = "Multiparametric prostate MRI performed with intravenous gadolinium-based contrast agent (16 mL)."


Instance: example2-mpmri-composition
InstanceOf: $CompositionEuImagingUrl
Usage: #example
Title: "Example 2 – mpMRI Composition"
* status = #final
* subject = Reference(example-male-patient)
* date = "2024-05-27T10:30:00Z"
* author = Reference(example-radiologist-role)
* title = "Multiparametric prostate MRI report"
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "mpmri-report-example2-0001"
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(example2-mpmri-report)
* event[imagingstudy].detail = Reference(example-imagingstudy)
* event[procedure].detail = Reference(example2-mri-procedure)
* section[imagingstudy].entry = Reference(example-imagingstudy)
* section.text.status = #generated
* section.text.div = "<div><p>Multiparametric prostate MRI performed. PI-RADS 5 anterior transition zone lesion (~32 mm). PRECISE 3 stable disease.</p></div>"


Instance: example2-mpmri-report
InstanceOf: LTProstateMpMRIReport
Usage: #example
Title: "Example 2 – Prostate mpMRI DiagnosticReport (Complete)"
* status = #final
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* performer[author] = Reference(example-radiologist-role)
* composition = Reference(example2-mpmri-composition)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #719178004
* code.coding.display = "Multiparametric magnetic resonance imaging of prostate (procedure)"
* conclusion = "PI-RADS 5 lesion in the anterior transition zone (~32 mm), extending across midline. PRECISE 3 stable disease. No seminal vesicle invasion, no neurovascular bundle involvement, no regional lymphadenopathy. Possible capsular contact anteriorly."
* result[+] = Reference(example2-pirads-lesion1)
* result[+] = Reference(example2-t2-score-lesion1)
* result[+] = Reference(example2-dwi-score-lesion1)
* result[+] = Reference(example2-adc-score-lesion1)
* result[+] = Reference(example2-dce-score-lesion1)
* result[+] = Reference(example2-precise-followup)
* supportingInfo[+].reference = Reference(example2-prostate-psa)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(example2-prostate-volume)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(example2-prostate-psad)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#SCI
