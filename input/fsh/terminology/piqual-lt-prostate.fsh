CodeSystem: PiqualLtProstateCS
Id: piqual-lt-prostate
Title: "Prostate - PI-QUAL CS"
Description: "Local code system for PI-QUAL image quality assessment."
* ^url = $piqual-lt-prostate-url
* ^experimental = false
* ^caseSensitive = true
* #piqual "PI-QUAL image quality score"

ValueSet: PiqualLtProstateVS
Id: piqual-vs-lt-prostate
Title: "Prostate - PI-QUAL VS"
Description: "PI-QUAL (PI-Rads QUALity) score for prostate MRI image quality assessment."
* ^url = $piqual-vs-lt-prostate-url
* ^status = #active
* ^experimental = false
* include codes from system PiqualLtProstateCS
