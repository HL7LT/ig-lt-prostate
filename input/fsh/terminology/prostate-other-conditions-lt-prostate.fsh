ValueSet: ProstateOtherConditionsVS
Id: prostate-other-conditions
Title: "Prostate - Other (Incidental) Conditions"
Description: "Incidental prostate conditions observed during mpMRI or PRECISE assessment: benign prostatic hyperplasia, prostatitis, and fibrotic changes."
* ^url = $prostate-other-conditions-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include $sct#266569009 "Benign prostatic hyperplasia (disorder)"
* include $sct#9713002 "Prostatitis (disorder)"
* include $sct#263756000 "Fibrosis (morphologic abnormality)"
