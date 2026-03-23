ValueSet: ProstateSequenceType
Id: prostate-sequence-type
Title: "Prostate - mpMRI Sequence Type"
Description: "Sequence/image types used in prostate mpMRI scoring (DICOM terminology)."
* ^url = $prostate-sequence-type-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* $dicom-dcm#113043 "Diffusion weighted"
* $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"
