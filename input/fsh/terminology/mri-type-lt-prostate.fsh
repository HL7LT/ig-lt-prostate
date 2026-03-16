ValueSet: MRITypeLtProstate
Id: mri-type-lt-prostate
Title: "Prostate - MRI Examination Type"
Description: "Type of prostate MRI examination, including bi-parametric and multi-parametric MRI."
* ^url = $mri-type-lt-prostate-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include $sct#75691003 "Magnetic resonance imaging of prostate (procedure)"
* include $sct#719178004 "Multiparametric magnetic resonance imaging of prostate (procedure)"
