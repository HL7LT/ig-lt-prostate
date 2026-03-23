Instance: composition-prostate-mpmri-example
//InstanceOf: $CompositionEuImagingUrl
InstanceOf: ImagingCompositionLt
Usage: #example
Title: "Composition: Prostate mpMRI (example)"
* status = #final
* subject = Reference(patient-male-example)
* date = "2025-09-22T10:30:00Z"
* author[author] = Reference(practitioner-role-radiologist-example)
* title = "Multiparametric prostate MRI report"
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "mpmri-report-2025-0001"
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(diagnosticreport-prostate-mpmri-example)
* event[imagingstudy].detail.concept = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* event[imagingstudy].detail.reference = Reference(imagingstudy-prostate-mpmri-example)
* event[procedure].detail.concept = $sct#113011001 "Palpation (procedure)"
* event[procedure].detail.reference = Reference(procedure-prostate-mri-example)
* section[imagingstudy].entry = Reference(imagingstudy-prostate-mpmri-example)
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div><p>Multiparametric prostate MRI performed.</p></div>"
* section[findings].text.status = #generated
* section[findings].text.div = "<div><p>PI-RADS 3 lesion noted.</p></div>"
* section[impression].text.status = #generated
* section[impression].text.div = "<div><p>Findings consistent with prostate cancer screening.</p></div>"
