Instance: bodyStructure-prostate-lesion1-example
InstanceOf: LesionLtProstate
Usage: #example
Title: "BodyStructure: Prostate - Lesion (Anterior Mid Transition Zone, crosses midline) Example"
* patient = Reference(patient-male-example)
* includedStructure.structure = $sct#716913001 "Structure of anterior middle regional part of transition zone of right half prostate"
* morphology = $sct#49755003 "Morphologically abnormal structure"
* description = "MRI-visible anterior transition zone lesion (~32 mm), predominantly right-sided with extension across midline to the left (mid-gland)."


Instance: observation-prostate-pirads-lesion1-example
InstanceOf: PIRADSAssessmentLtProstate
Usage: #example
Title: "Observation: Prostate - PI-RADS Assessment (Lesion 1) Example"
* status = #final
* code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* bodySite = $sct#716913001 "Structure of anterior middle regional part of transition zone of right half prostate"
* method.text = "PI-RADS v2.1"
* note.text = "Anterior transition zone lesion (~32 mm), extending across midline. Very high suspicion on mpMRI."


Instance: observation-prostate-t2-score-lesion1-example
InstanceOf: SequenceScoreLtProstate
Usage: #example         
Title: "Observation: Prostate - T2 Score (Lesion 1) Example"
* status = #final
* code = $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "T2 score 5 in transition zone lesion."


Instance: observation-prostate-dwi-score-lesion1-example
InstanceOf: SequenceScoreLtProstate
Usage: #example
Title: "Observation: Prostate - DWI Score (Lesion 1) Example"
* status = #final
* code = $dicom-dcm#113043 "Diffusion weighted"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Marked diffusion restriction (DWI score 5)."


Instance: observation-prostate-adc-score-lesion1-example
InstanceOf: SequenceScoreLtProstate
Usage: #example
Title: "Observation: Prostate - ADC Score (Lesion 1) Example"
* status = #final
* code = $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Low ADC corresponding to restricted diffusion (ADC score 5)."


Instance: observation-prostate-dce-score-lesion1-example
InstanceOf: SequenceScoreLtProstate
Usage: #example
Title: "Observation: Prostate - DCE (Lesion 1, Positive) Example"
* status = #final
* code = $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* focus = Reference(bodyStructure-prostate-lesion1-example)
* valueInteger = 5
* note.text = "Dynamic contrast enhancement reported as positive (+)."


Instance: observation-prostate-psa-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Prostate - PSA Example2"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#2857-1 "Prostate Specific Ag [Mass/volume] in Serum or Plasma"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 15.7 $ucum#ng/mL "ng/mL"
* interpretation = $v3-obs-interpretation#A "Abnormal"


Instance: observation-prostate-volume-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Prostate - Volume Example2"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15315-5 "Prostate Volume by derived by planimetry (US)"
* code.text = "Prostate Volume"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 45 $ucum#mL "mL"


Instance: observation-prostate-psad-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Prostate - PSA Density Example2"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#15325-4 "Prostate specific Ag/Prostate volume calculated"
* code.text = "PSA Density"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2024-05-27T10:00:00Z"
* valueQuantity = 0.35 $ucum#ng/mL.cm3 "ng/mL/cc"
* interpretation = $v3-obs-interpretation#H "High"
* note.text = "Elevated PSA density."


Instance: procedure-prostate-mpmri-example
InstanceOf: $procedure-lt-url
Usage: #example
Title: "Procedure: Prostate - mpMRI Example"
* status = #completed
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate"
* subject = Reference(patient-male-example)
* note.text = "Multiparametric prostate MRI performed with intravenous gadolinium-based contrast agent (16 mL)."


Instance: composition-prostate-mpmri-report-example
InstanceOf: $imaging-composition-lt-url
Usage: #example
Title: "Composition: Prostate - mpMRI Imaging Report Example"
* status = #final
* subject = Reference(patient-male-example)
* date = "2024-05-27T10:30:00Z"
* author[+] = Reference(practitioner-role-radiologist-example)
* title = "Multiparametric prostate MRI report"
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "mpmri-report-example2-0001"
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(diagnosticReport-prostate-mpmri-report-example)
* event[+].detail[+].concept = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* event[=].detail[=].reference = Reference(imagingstudy-prostate-mpmri-example)
* event[+].detail[+].concept = $sct#103693007 "Diagnostic procedure (procedure)"
* event[=].detail[=].reference = Reference(procedure-prostate-mpmri-example)
* section[imagingstudy].title = "Imaging Study"
* section[imagingstudy].entry[+] = Reference(imagingstudy-prostate-mpmri-example)
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Multiparametric prostate MRI performed. PI-RADS 5 anterior transition zone lesion (~32 mm). PRECISE 3 stable disease.</div>"
* section[order].title = "Order"
* section[order].text.status = #generated
* section[order].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Order information not specified.</p></div>"
* section[order].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[history].title = "History"
* section[history].text.status = #generated
* section[history].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Clinical history not documented.</p></div>"
* section[history].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[procedure].title = "Procedure"
* section[procedure].text.status = #generated
* section[procedure].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Procedure details not included.</p></div>"
* section[procedure].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[comparison].title = "Comparison"
* section[comparison].text.status = #generated
* section[comparison].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>No prior studies available.</p></div>"
* section[comparison].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[findings].title = "Findings"
* section[findings].text.status = #generated
* section[findings].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Anterior transition zone lesion with PI-RADS 5. No seminal vesicle or neurovascular bundle invasion. Possible capsular contact anteriorly.</div>"
* section[findings].entry[+] = Reference(imfinding-prostate-lesion1-example)
* section[impression].title = "Impression"
* section[impression].text.status = #generated
* section[impression].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>PI-RADS 5 lesion in the anterior transition zone (~32 mm), extending across midline. PRECISE 3 stable disease. Imaging features consistent with high-suspicion malignancy.</div>"
* section[impression].entry[+] = Reference(imfinding-prostate-lesion1-example)
* section[recommendation].title = "Recommendation"
* section[recommendation].text.status = #generated
* section[recommendation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Recommendations pending clinical review.</p></div>"
* section[recommendation].emptyReason = $ImSectionEmptyReason#unknown "Unknown"


Instance: diagnosticReport-prostate-mpmri-report-example
InstanceOf: MpMRIReportLtProstate
Usage: #example
Title: "DiagnosticReport: Prostate - mpMRI Report Example"
* status = #final
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* performer[author] = Reference(practitioner-role-radiologist-example)
* composition = Reference(composition-prostate-mpmri-report-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* code = $sct#719178004 "Multiparametric magnetic resonance imaging of prostate (procedure)"
* conclusion = "PI-RADS 5 lesion in the anterior transition zone (~32 mm), extending across midline. PRECISE 3 stable disease. No seminal vesicle invasion, no neurovascular bundle involvement, no regional lymphadenopathy. Possible capsular contact anteriorly."
* result[+] = Reference(imfinding-prostate-lesion1-example)
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
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Seminal Vesicle Invasion (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-seminal-vesicle-left-example)
* note.text = "No seminal vesicle invasion."


Instance: observation-prostate-neurovascular-bundle-invasion-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Neurovascular Bundle Invasion (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-neurovascular-bundle-right-example)
* note.text = "No neurovascular bundle involvement."


Instance: observation-prostate-regional-lymph-node-invasion-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Regional Lymph Node Involvement (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-regional-lymph-node-left-example)
* note.text = "No regional lymphadenopathy."


Instance: observation-prostate-capsule-invasion-suspected-example
InstanceOf: NeoplasmInvasionLtProstate
Usage: #example
Title: "Observation: Prostate - Capsular Invasion (Suspected) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostatic-capsule-right-example)
* note.text = "Possible capsular involvement; long tumor contact with anterior capsule."


Instance: observation-prostate-urinary-bladder-changes-example
InstanceOf: PelvicOrganChangesLtProstate    
Usage: #example
Title: "Observation: Prostate - Urinary Bladder Wall Thickening Example"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-urinary-bladder-example)
* note.text = "Urinary bladder wall thickening noted."


Instance: observation-prostate-rectum-changes-example
InstanceOf: PelvicOrganChangesLtProstate
Usage: #example
Title: "Observation: Prostate - Rectum Changes (Absent) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#2667000 "Absent (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-rectum-example)
* note.text = "No rectal wall changes."


Instance: bodyStructure-prostate-peripheral-zone-mid-right-example
InstanceOf: $EuBodyStructure
Title: "BodyStructure: Prostate Peripheral Zone Mid-Gland Right (PI-RADS sector)"
Description: "Right mid-gland peripheral zone sector (PI-RADS 39-sector map)."
* active = true
* patient = Reference(patient-male-example)
* includedStructure[0].structure = $sct#716921007 
  "Structure of posterolateral middle regional part of peripheral zone of right half prostate"


Instance: observation-prostate-peripheral-zone-diffuse-enhancement-example
InstanceOf: PelvicOrganChangesLtProstate
Usage: #example
Title: "Observation: Prostate - Peripheral Zone Diffuse Enhancement (No Focal Lesion) Example"
* status = #final
* category = $observation-category#exam
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject = Reference(patient-male-example)
* valueCodeableConcept = $sct#415684004 "Suspected (qualifier value)"
* bodyStructure = Reference(bodyStructure-prostate-peripheral-zone-mid-right-example)
* note.text = "Diffuse contrast enhancement in the right peripheral zone; no discrete focal lesion identified. No focal PI-RADS lesion in PZ."


Instance: observation-prostate-gleason-gradegroup-example
InstanceOf: GleasonIsupObservationLtProstate
Usage: #example
Title: "Observation: Prostate - Gleason / ISUP Grade Group Example"
* status = #final
* code = $sct#372278000 "Gleason score (observable entity)"
* subject = Reference(patient-male-example)
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
* subject = Reference(patient-male-example)
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

