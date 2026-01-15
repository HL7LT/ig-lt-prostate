Instance: example-mpmri-composition
InstanceOf: $CompositionEuImagingUrl
Usage: #example
Title: "Example mpMRI Composition"
* status = #final
* subject = Reference(example-male-patient)
* date = "2025-09-22T10:30:00Z"
* author = Reference(example-radiologist-role)
* title = "Multiparametric prostate MRI report"
* identifier.system = "https://hl7.lt/fhir/prostate/composition-id"
* identifier.value = "mpmri-report-2025-0001"
* extension[diagnosticreport-reference].url = $CompositionDiagnosticReportReferenceUrl
* extension[diagnosticreport-reference].valueReference = Reference(example-mpmri-report)
* event[imagingstudy].detail = Reference(example-imagingstudy)
* event[procedure].detail = Reference(example-mri-procedure)
* section[imagingstudy].entry = Reference(example-imagingstudy)
* section.text.status = #generated
* section.text.div = "<div><p>Multiparametric prostate MRI performed.</p></div>"
