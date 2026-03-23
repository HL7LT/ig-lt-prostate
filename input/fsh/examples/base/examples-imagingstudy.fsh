Instance: imagingstudy-prostate-mpmri-example
InstanceOf: ImagingStudyLt
Usage: #example
Title: "ImagingStudy: Prostate mpMRI (example)"
Description: "Example multiparametric prostate MRI imaging study referenced by compositions and PRECISE observations."
* status = #available
* subject = Reference(patient-male-example)
* started = "2024-05-27T10:00:00Z"
* modality = $dicom-dcm#MR "Magnetic Resonance"
* series[0].uid = "1.2.3.4.5.6.7.8.9.10.11.12.13.14"
* series[0].number = 1
* series[0].modality = $dicom-dcm#MR "Magnetic Resonance"
* identifier[studyInstanceUid].system = "urn:dicom:uid"
* identifier[studyInstanceUid].value = "urn:oid:1.2.840.113619.2.55.3.604688433.781.1591782334.467"
