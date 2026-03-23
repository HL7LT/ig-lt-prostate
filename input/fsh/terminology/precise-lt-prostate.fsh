CodeSystem: ProstatePreciseCategoryCS
Id: prostate-precise-category
Title: "Prostate - PRECISE Category CS"
Description: """
PRECISE categories for longitudinal assessment of prostate MRI follow-up examinations.
These categories describe overall change compared to a prior MRI examination.
"""
* ^url = $prostate-precise-category-cs-url
* ^experimental = false
* ^caseSensitive = true
* #1 "PRECISE 1 - Resolution or definite regression"
* #2 "PRECISE 2 - Likely regression"
* #3 "PRECISE 3 - Stable disease"
* #3v "PRECISE 3V - Stable volume but suspicious change"
* #4 "PRECISE 4 - Likely progression"
* #5 "PRECISE 5 - Definite progression"
* #x "PRECISE X - Inadequate comparison or non-evaluable"

ValueSet: ProstatePreciseCategoryVS
Id: prostate-precise-category
Title: "Prostate - PRECISE Category"
Description: "Allowed PRECISE categories for longitudinal prostate MRI assessment."
* ^url = $prostate-precise-category-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include codes from system ProstatePreciseCategoryCS

CodeSystem: ProstatePreciseChangePatternCS
Id: prostate-precise-change-pattern
Title: "Prostate - PRECISE Change Pattern CS"
Description: "Pattern of change on follow-up MRI."
* ^url = $prostate-precise-change-pattern-cs-url
* #local "Local change"
* #diffuse "Diffuse change"
* ^experimental = false
* ^caseSensitive = true

ValueSet: ProstatePreciseChangePatternVS
Id: precise-change-pattern-vs-lt-prostate
Title: "Prostate - PRECISE Change Pattern VS"
Description: "Pattern of change observed on follow-up prostate MRI examination (local, diffuse)."
* ^url = $prostate-precise-change-pattern-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include codes from system ProstatePreciseChangePatternCS

CodeSystem: ProstatePreciseComponentCS
Id: prostate-precise-component
Title: "Prostate - PRECISE Component CS"
Description: "Local codes for detailed PRECISE assessment components."
* ^url = $prostate-precise-component-cs-url
* ^experimental = false
* ^caseSensitive = true
* #precise-assessment "PRECISE longitudinal assessment"
* #new-lesion "New lesion indicator"
* #change-pattern "Change pattern"
* #best-sequence "Best MRI sequence for change assessment"
* #size-change-mm "Size change in millimeters"

ValueSet: ProstatePreciseComponentVS
Id: prostate-precise-component
Title: "Prostate - PRECISE Component"
Description: "Codes for detailed PRECISE assessment components used in longitudinal prostate MRI follow-up evaluation."
* ^url = $prostate-precise-component-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include codes from system ProstatePreciseComponentCS
