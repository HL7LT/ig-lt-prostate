Instance: composition-prostate-mpmri-example
//InstanceOf: $CompositionEuImagingUrl
InstanceOf: ImagingCompositionLt
Usage: #example
Title: "Composition: Prostate mpMRI (example)"
* status = #final
* subject = Reference(patient-male-example)
* date = "2025-09-22T10:30:00Z"
* author[+] = Reference(practitioner-role-radiologist-example)
* title = "Multiparametric prostate MRI report"
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "mpmri-report-2025-0001"
* custodian = Reference(organization-lt-example)
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(diagnosticreport-prostate-mpmri-example)
* event[+].detail[+].concept = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* event[=].detail[=].reference = Reference(imagingstudy-prostate-mpmri-example)
* event[+].detail[+].concept = $sct#113011001 "Palpation (procedure)"
* event[=].detail[=].reference = Reference(procedure-prostate-mri-example)
* section[imagingstudy].title = "Imaging Study"
* section[imagingstudy].entry[+] = Reference(imagingstudy-prostate-mpmri-example)
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Multiparametric prostate MRI performed.</p></div>"
* section[order].title = "Order"
* section[order].text.status = #generated
* section[order].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Order information not available.</p></div>"
* section[order].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[history].title = "History"
* section[history].text.status = #generated
* section[history].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Clinical history not documented.</p></div>"
* section[history].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[procedure].title = "Procedure"
* section[procedure].text.status = #generated
* section[procedure].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Procedure details not specified.</p></div>"
* section[procedure].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[comparison].title = "Comparison"
* section[comparison].text.status = #generated
* section[comparison].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>No prior imaging available for comparison.</p></div>"
* section[comparison].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
* section[findings].title = "Findings"
* section[findings].text.status = #generated
* section[findings].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>PI-RADS 3 lesion noted.</p></div>"
* section[impression].title = "Impression"
* section[impression].text.status = #generated
* section[impression].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Findings consistent with prostate cancer screening.</p></div>"
* section[recommendation].title = "Recommendation"
* section[recommendation].text.status = #generated
* section[recommendation].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Clinical recommendations pending.</p></div>"
* section[recommendation].emptyReason = $ImSectionEmptyReason#unknown "Unknown"
