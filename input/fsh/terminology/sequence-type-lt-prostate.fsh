ValueSet: SequenceTypeLtProstate
Id: sequence-type-lt-prostate
Title: "Prostate - mpMRI Sequence Type"
Description: "Sequence/image types used in prostate mpMRI scoring (DICOM terminology)."
* ^url = $sequence-type-lt-prostate-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include $dicom-dcm#110805 "T2 Weighted MR Signal Intensity"
* include $dicom-dcm#113043 "Diffusion weighted"
* include $dicom-dcm#113041 "Apparent Diffusion Coefficient"
* include $dicom-dcm#110816 "T1 Weighted Dynamic Contrast Enhanced MR Signal Intensity"
