Instance: example-mpmri-composition
InstanceOf: $CompositionEuImagingUrl
Usage: #example
Title: "Composition: Prostate - mpMRI Example"
* status = #final
* subject = Reference(example-male-patient)
* date = "2025-09-22T10:30:00Z"
* author[author] = Reference(example-radiologist-role)
* title = "Multiparametric prostate MRI report"
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "mpmri-report-2025-0001"
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(example-mpmri-report)
* event[imagingstudy].detail.concept = http://dicom.nema.org/resources/ontology/DCM#MR "Magnetic Resonance"
* event[imagingstudy].detail.reference = Reference(example-imagingstudy)
* event[procedure].detail.concept = $sct#113011001 "Palpation (procedure)"
* event[procedure].detail.reference = Reference(example-mri-procedure)
* section[imagingstudy].entry = Reference(example-imagingstudy)
* section[imagingstudy].text.status = #generated
* section[imagingstudy].text.div = "<div><p>Multiparametric prostate MRI performed.</p></div>"
* section[findings].text.status = #generated
* section[findings].text.div = "<div><p>PI-RADS 3 lesion noted.</p></div>"
* section[impression].text.status = #generated
* section[impression].text.div = "<div><p>Findings consistent with prostate cancer screening.</p></div>"
