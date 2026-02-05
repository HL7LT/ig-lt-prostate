Instance: composition-prostate-mpmri-report-adp-example
InstanceOf: ImComposition
Usage: #example
Title: "Composition: Prostate - mpMRI Report (ADP) Example"
Description: "ImComposition example summarizing prostate mpMRI findings for ADP diagnostic process."

* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "PROSTATE-ADP-MPMRI-2024-0001"

* status = #final
* date = "2024-05-27T10:30:00+02:00"
* title = "Prostate Cancer Prevention Program – mpMRI Report"

* subject = Reference(example-male-patient)
* author = Reference(example-radiologist-role)
* custodian = Reference(example-organization)

// Required extension linking to DiagnosticReport
* extension[diagnosticreport-reference].valueReference = Reference(diagnosticReport-prostate-mpmri-report-example)

// Required events
* event[imagingstudy].detail.reference = Reference(example-imagingstudy)
* event[procedure].detail.reference = Reference(procedure-prostate-mpmri-example)


// -----------------
// Sections

// Imaging Study
* section[imagingstudy].title = "Imaging Study"
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Multiparametric prostate MRI performed.</div>"
* section[imagingstudy].entry[imagingstudy][+] = Reference(example-imagingstudy)


// Order (if you have it; otherwise leave emptyReason)
* section[order].title = "Order"
* section[order].text.status = #generated
* section[order].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>mpMRI of prostate ordered as part of ADP diagnostic pathway.</div>"
* section[order].emptyReason = $ImSectionEmptyReason#unknown "Unknown"


// History
* section[history].title = "Clinical History"
* section[history].text.status = #generated
* section[history].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Elevated PSA. Patient under active surveillance for low-grade prostate cancer.</div>"
* section[history].entry[+] = Reference(observation-prostate-psa-example)


// Procedure
* section[procedure].title = "Procedure"
* section[procedure].text.status = #generated
* section[procedure].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Multiparametric prostate MRI with intravenous gadolinium contrast.</div>"
* section[procedure].entry[procedure][+] = Reference(procedure-prostate-mpmri-example)


// Comparison
* section[comparison].title = "Comparison"
* section[comparison].text.status = #generated
* section[comparison].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Compared with prior prostate MRI.</div>"
* section[comparison].entry[comparedstudy][+] = Reference(example-imagingstudy)


// Findings
* section[findings].title = "Findings"
* section[findings].text.status = #generated
* section[findings].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Anterior transition zone lesion with PI-RADS 5. No seminal vesicle, neurovascular bundle, or nodal invasion. Possible anterior capsular contact. Diffuse enhancement in right peripheral zone without focal lesion.</div>"

// Lesion + imaging findings
* section[findings].entry[finding][+] = Reference(bodyStructure-prostate-lesion1-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-pirads-lesion1-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-t2-score-lesion1-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-dwi-score-lesion1-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-adc-score-lesion1-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-dce-score-lesion1-example)

// Invasion / organ changes
* section[findings].entry[finding][+] = Reference(observation-prostate-seminal-vesicle-invasion-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-neurovascular-bundle-invasion-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-regional-lymph-node-invasion-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-capsule-invasion-suspected-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-urinary-bladder-changes-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-rectum-changes-example)
* section[findings].entry[finding][+] = Reference(observation-prostate-peripheral-zone-diffuse-enhancement-example)


// Impression
* section[impression].title = "Impression"
* section[impression].text.status = #generated
* section[impression].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>PI-RADS 5 lesion in anterior transition zone (~32 mm). PRECISE 3: stable disease. Imaging features consistent with high-suspicion lesion without definite extracapsular extension.</div>"
* section[impression].entry[finding][+] = Reference(observation-prostate-pirads-lesion1-example)
* section[impression].entry[finding][+] = Reference(observation-prostate-precise-followup-example)


// Recommendation
* section[recommendation].title = "Recommendation"
* section[recommendation].text.status = #generated
* section[recommendation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Continue active surveillance with mpMRI and PSA follow-up. Consider targeted biopsy if progression suspected.</div>"

// Later, when CarePlan exists:
// * section[recommendation].entry[careplan][+] = Reference(careplan-prostate-active-surveillance-example)
