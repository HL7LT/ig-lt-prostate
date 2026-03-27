Instance: composition-prostate-programme-example
InstanceOf: ProstateCompositionLtProstate
Usage: #example
Title: "Composition: Prostate programme document (example)"
Description: "Imaging composition for the national prostate programme, paired with ProstateReportLtProstate. Mirrors ADP mpMRI layout; pathology remains in LT Lab."
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "PROSTATE-PROGRAMME-2024-0001"
* status = #final
* date = "2024-05-27T10:30:00+02:00"
* title = "Prostate programme — mpMRI summary"
* subject = Reference(patient-male-example)
* author[+] = Reference(PractitionerRole/practitioner-role-radiologist-example)
* custodian = Reference(organization-lt-example)
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(diagnosticreport-prostate-programme-report-example)
* event[+].detail[+].concept = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* event[=].detail[=].reference = Reference(imagingstudy-prostate-mpmri-example)
* event[+].detail[+].concept = $sct#103693007 "Diagnostic procedure (procedure)"
* event[=].detail[=].reference = Reference(procedure-prostate-mpmri-example)
* section[imagingstudy].title = "Imaging Study"
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Multiparametric prostate MRI performed.</div>"
* section[imagingstudy].entry[imagingstudy][+] = Reference(imagingstudy-prostate-mpmri-example)
* section[order].title = "Order"
* section[order].text.status = #generated
* section[order].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>mpMRI ordered under prostate programme pathway.</div>"
* section[history].title = "Clinical History"
* section[history].text.status = #generated
* section[history].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Elevated PSA; active surveillance context.</div>"
* section[history].entry[+] = Reference(observation-prostate-psa-example)
* section[procedure].title = "Procedure"
* section[procedure].text.status = #generated
* section[procedure].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Multiparametric prostate MRI with contrast.</div>"
* section[procedure].entry[procedure][+] = Reference(procedure-prostate-mpmri-example)
* section[comparison].title = "Comparison"
* section[comparison].text.status = #generated
* section[comparison].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Compared with prior prostate MRI when available.</div>"
* section[comparison].entry[comparedstudy][+] = Reference(imagingstudy-prostate-mpmri-example)
* section[findings].title = "Findings"
* section[findings].text.status = #generated
* section[findings].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Anterior transition zone lesion PI-RADS 5; see structured observations.</div>"
* section[findings].entry[finding][+] = Reference(imfinding-prostate-lesion1-example)
* section[impression].title = "Impression"
* section[impression].text.status = #generated
* section[impression].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>High-suspicion lesion; PRECISE 3 stable. Pathology if biopsy performed is documented separately in LT Lab.</div>"
* section[impression].entry[finding][+] = Reference(imfinding-prostate-lesion1-example)
* section[recommendation].title = "Recommendation"
* section[recommendation].text.status = #generated
* section[recommendation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Continue programme follow-up per urology.</div>"


Instance: diagnosticreport-prostate-programme-report-example
InstanceOf: ProstateReportLtProstate
Usage: #example
Title: "DiagnosticReport: Prostate programme report (example)"
Description: "ImagingReportLt-based programme anchor listing prostate observations; composition links narrative sections."
* status = #final
* identifier.system = "https://hl7.lt/fhir/prostate/sid/diagnostic-report"
* identifier.value = "PR-PROG-2024-0001"
* subject = Reference(patient-male-example)
* encounter = Reference(encounter-prostate-diagnostic-example)
* performer[author] = Reference(practitioner-role-radiologist-example)
* effectiveDateTime = "2024-05-27T10:30:00Z"
* issued = "2024-05-27T10:35:00Z"
* study = Reference(imagingstudy-prostate-mpmri-example)
* composition = Reference(composition-prostate-programme-example)
* conclusion = "PI-RADS 5 lesion; PI-QUAL adequate; PRECISE 3 stable. Programme imaging results in linked Observations."
* result[+] = Reference(imfinding-prostate-lesion1-example)
* result[+] = Reference(observation-prostate-pirads-lesion1-example)
* result[+] = Reference(observation-prostate-t2-score-lesion1-example)
* result[+] = Reference(observation-prostate-dwi-score-lesion1-example)
* result[+] = Reference(observation-prostate-adc-score-lesion1-example)
* result[+] = Reference(observation-prostate-dce-score-lesion1-example)
* result[+] = Reference(observation-prostate-piqual-example)
* result[+] = Reference(observation-prostate-precise-followup-example)
* result[+] = Reference(observation-prostate-gleason-gradegroup-example)
* supportingInfo[+].reference = Reference(observation-prostate-psa-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(observation-prostate-volume-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#RSLT
* supportingInfo[+].reference = Reference(observation-prostate-psad-example)
* supportingInfo[=].type = http://terminology.hl7.org/CodeSystem/v2-0936#SCI
