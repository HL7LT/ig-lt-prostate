Instance: bodyStructure-prostate-lesion1-example
InstanceOf: LesionProstateLt
Usage: #example
Title: "BodyStructure: Prostate - Lesion (Anterior Mid Transition Zone, crosses midline) Example"
* patient = Reference(example-male-patient)
* includedStructure.structure = $sct#716913001 "Structure of anterior middle regional part of transition zone of right half prostate"
* morphology = $sct#49755003 "Morphologically abnormal structure"
* description = "MRI-visible anterior transition zone lesion (~32 mm), predominantly right-sided with extension across midline to the left (mid-gland)."


Instance: observation-prostate-pirads-lesion1-example
InstanceOf: PIRADSAssessmentProstateLt
Usage: #example
Title: "Observation: Prostate - PI-RADS Assessment (Lesion 1) Example"
* status = #final
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* bodySite = $sct#716913001 "Structure of anterior middle regional part of transition zone of right half prostate"
* method.text = "PI-RADS v2.1"
* note.text = "Anterior transition zone lesion (~32 mm), extending across midline. Very high suspicion on mpMRI."


Instance: observation-prostate-t2-score-lesion1-example
InstanceOf: SequenceScoreProstateLt
Usage: #example         
Title: "Observation: Prostate - T2 Score (Lesion 1) Example"
* status = #final
* code = $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "T2 score 5 in transition zone lesion."


Instance: observation-prostate-dwi-score-lesion1-example
InstanceOf: SequenceScoreProstateLt
Usage: #example
Title: "Observation: Prostate - DWI Score (Lesion 1) Example"
* status = #final
* code = $dicom-dcm#113043 "Diffusion weighted"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Marked diffusion restriction (DWI score 5)."


Instance: observation-prostate-adc-score-lesion1-example
InstanceOf: SequenceScoreProstateLt
Usage: #example
Title: "Observation: Prostate - ADC Score (Lesion 1) Example"
* status = #final
* code = $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Low ADC corresponding to restricted diffusion (ADC score 5)."


Instance: observation-prostate-dce-score-lesion1-example
InstanceOf: SequenceScoreProstateLt
Usage: #example
Title: "Observation: Prostate - DCE (Lesion 1, Positive) Example"
* status = #final
* code = $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Dynamic contrast enhancement reported as positive (+)."


Instance: observation-prostate-precise-followup-example
InstanceOf: PreciseAssessmentProstateLt
Usage: #example
Title: "Observation: Prostate - PRECISE Longitudinal Assessment Example"
* status = #final
* code = PreciseComponentProstateLtCS#precise-assessment "PRECISE longitudinal assessment"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* valueCodeableConcept = PreciseCategoryProstateLtCS#precise-3 "PRECISE 3 - Stable disease"
* derivedFrom[+] = Reference(example-imagingstudy)
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = PreciseChangePatternProstateLtCS#local "Local change"
* component[bestSequence].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* note.text = "Stable disease compared to prior MRI examinations."


Instance: observation-prostate-psa-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Prostate - PSA Example2"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2857-1 "Prostate Specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 15.7 $ucum#ng/mL "ng/mL"
* interpretation = $v3-obs-interpretation#A "Abnormal"


Instance: observation-prostate-volume-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Prostate - Volume Example2"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15315-5 "Prostate Volume by derived by planimetry (US)"
* code.text = "Prostate Volume"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 45 $ucum#mL "mL"


Instance: observation-prostate-psad-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Prostate - PSA Density Example2"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15325-4 "Prostate specific Ag/Prostate volume calculated"
* code.text = "PSA Density"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 0.35 $ucum#ng/mL.cm3 "ng/mL/cc"
* interpretation = $v3-obs-interpretation#H "High"
* note.text = "Elevated PSA density."


Instance: procedure-prostate-mpmri-example
InstanceOf: $ProcedureEuImagingUrl
Usage: #example
Title: "Procedure: Prostate - mpMRI Example"
* status = #completed
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"
* subject = Reference(example-male-patient)
* note.text = "Multiparametric prostate MRI performed with intravenous gadolinium-based contrast agent (16 mL)."


Instance: composition-prostate-mpmri-report-example
InstanceOf: $CompositionEuImagingUrl
Usage: #example
Title: "Composition: Prostate - mpMRI Report Example"
* status = #final
* subject = Reference(example-male-patient)
* date = "2024-05-27T10:30:00Z"
* author[author] = Reference(example-radiologist-role)
* title = "Multiparametric prostate MRI report"
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "mpmri-report-example2-0001"
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(diagnosticReport-prostate-mpmri-report-example)
* event[imagingstudy].detail.concept = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* event[imagingstudy].detail.reference = Reference(example-imagingstudy)
* event[procedure].detail.concept = $sct#103693007 "Diagnostic procedure (procedure)"
* event[procedure].detail.reference = Reference(procedure-prostate-mpmri-example)
* section[imagingstudy].entry = Reference(example-imagingstudy)
* section.text.status = #generated
* section.text.div = "<div><p>Multiparametric prostate MRI performed. PI-RADS 5 anterior transition zone lesion (~32 mm). PRECISE 3 stable disease.</p></div>"


Instance: diagnosticReport-prostate-mpmri-report-example
InstanceOf: MpMRIReportProstateLt
Usage: #example
Title: "DiagnosticReport: Prostate - mpMRI Report Example"
* status = #final
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter2)
* performer[author] = Reference(example-radiologist-role)
* composition = Reference(Composition-prostate-mpmri-report-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate (procedure)"
* conclusion = "PI-RADS 5 lesion in the anterior transition zone (~32 mm), extending across midline. PRECISE 3 stable disease. No seminal vesicle invasion, no neurovascular bundle involvement, no regional lymphadenopathy. Possible capsular contact anteriorly."
* result[+] = Reference(observation-prostate-pirads-lesion1-example)
* result[+] = Reference(observation-prostate-t2-score-lesion1-example)
* result[+] = Reference(observation-prostate-dwi-score-lesion1-example)
* result[+] = Reference(observation-prostate-adc-score-lesion1-example)
* result[+] = Reference(observation-prostate-dce-score-lesion1-example)
* result[+] = Reference(observation-prostate-precise-followup-example)
* supportingInfo[+].reference = Reference(observation-prostate-psa-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(observation-prostate-volume-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(observation-prostate-psad-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#SCI
* supportingInfo[+].reference = Reference(observation-prostate-gleason-gradegroup-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT



Instance: observation-prostate-seminal-vesicle-invasion-example
InstanceOf: NeoplasmInvasionProstateLt
Usage: #example
Title: "Observation: Prostate - Seminal Vesicle Invasion (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-seminal-vesicle-left-example)
* note.text = "No seminal vesicle invasion."


Instance: observation-prostate-neurovascular-bundle-invasion-example
InstanceOf: NeoplasmInvasionProstateLt
Usage: #example
Title: "Observation: Prostate - Neurovascular Bundle Invasion (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-neurovascular-bundle-right-example)
* note.text = "No neurovascular bundle involvement."


Instance: observation-prostate-regional-lymph-node-invasion-example
InstanceOf: NeoplasmInvasionProstateLt
Usage: #example
Title: "Observation: Prostate - Regional Lymph Node Involvement (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-regional-lymph-node-left-example)
* note.text = "No regional lymphadenopathy."


Instance: observation-prostate-capsule-invasion-suspected-example
InstanceOf: NeoplasmInvasionProstateLt
Usage: #example
Title: "Observation: Prostate - Capsular Invasion (Suspected) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostatic-capsule-right-example)
* note.text = "Possible capsular involvement; long tumor contact with anterior capsule."


Instance: observation-prostate-urinary-bladder-changes-example
InstanceOf: PelvicOrganChangesProstateLt    
Usage: #example
Title: "Observation: Prostate - Urinary Bladder Wall Thickening Example"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-urinary-bladder-example)
* note.text = "Urinary bladder wall thickening noted."


Instance: observation-prostate-rectum-changes-example
InstanceOf: PelvicOrganChangesProstateLt
Usage: #example
Title: "Observation: Prostate - Rectum Changes (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-rectum-example)
* note.text = "No rectal wall changes."


Instance: bodyStructure-prostate-peripheral-zone-mid-right-example
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate Peripheral Zone Mid-Gland Right (PI-RADS sector)"
Description: "Right mid-gland peripheral zone sector (PI-RADS 39-sector map)."
* active = true
* patient = Reference(example-male-patient)
* includedStructure[0].structure = $sct#716921007 
  "Structure of posterolateral middle regional part of peripheral zone of right half prostate"


Instance: observation-prostate-peripheral-zone-diffuse-enhancement-example
InstanceOf: PelvicOrganChangesProstateLt
Usage: #example
Title: "Observation: Prostate - Peripheral Zone Diffuse Enhancement (No Focal Lesion) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(example-male-patient)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-peripheral-zone-mid-right-example)
* note.text = "Diffuse contrast enhancement in the right peripheral zone; no discrete focal lesion identified. No focal PI-RADS lesion in PZ."


Instance: observation-prostate-gleason-gradegroup-example
InstanceOf: GleasonIsupObservationProstateLt
Usage: #example
Title: "Observation: Prostate - Gleason / ISUP Grade Group Example"
* status = #final
* code = $sct#372278000 "Gleason score (observable entity)"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T09:00:00Z"
* valueCodeableConcept = $sct#1279715000 "ISUP Grade Group 1 (Gleason 3+3)"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* note.text = "Histopathology shows Gleason score 3+3. Patient managed with active surveillance."


Instance: imfinding-prostate-lesion1-example
InstanceOf: ImFinding
Usage: #example
Title: "ImagingFinding: Prostate - Lesion 1 Example"
Description: "Imaging finding representing a prostate lesion identified on mpMRI."
* status = #final
* code = $sct#49755003 "Morphologically abnormal structure"
* subject = Reference(example-male-patient)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* bodyStructure = Reference(bodyStructure-prostate-lesion1-example)
* hasMember[+] = Reference(observation-prostate-pirads-lesion1-example)
* hasMember[+] = Reference(observation-prostate-t2-score-lesion1-example)
* hasMember[+] = Reference(observation-prostate-dwi-score-lesion1-example)
* hasMember[+] = Reference(observation-prostate-adc-score-lesion1-example)
* hasMember[+] = Reference(observation-prostate-dce-score-lesion1-example)
* hasMember[+] = Reference(observation-prostate-seminal-vesicle-invasion-example)
* hasMember[+] = Reference(observation-prostate-neurovascular-bundle-invasion-example)
* hasMember[+] = Reference(observation-prostate-regional-lymph-node-invasion-example)
* hasMember[+] = Reference(observation-prostate-capsule-invasion-suspected-example)
* hasMember[+] = Reference(observation-prostate-urinary-bladder-changes-example)
* hasMember[+] = Reference(observation-prostate-rectum-changes-example)
* hasMember[+] = Reference(observation-prostate-peripheral-zone-diffuse-enhancement-example)
* hasMember[+] = Reference(observation-prostate-precise-followup-example)

