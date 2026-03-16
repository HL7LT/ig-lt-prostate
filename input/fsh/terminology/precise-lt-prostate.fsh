CodeSystem: PreciseCategoryLtProstateCS
Id: precise-category-lt-prostate
Title: "Prostate - PRECISE Category CS"
Description: """
PRECISE categories for longitudinal assessment of prostate MRI follow-up examinations.
These categories describe overall change compared to a prior MRI examination.
"""
* ^url = $precise-category-lt-prostate-url
* ^experimental = false
* ^caseSensitive = true
* #precise-1 "PRECISE 1 - Resolution or definite regression"
* #precise-2 "PRECISE 2 - Likely regression"
* #precise-3 "PRECISE 3 - Stable disease"
* #precise-3v "PRECISE 3V - Stable volume but suspicious change"
* #precise-4 "PRECISE 4 - Likely progression"
* #precise-5 "PRECISE 5 - Definite progression"
* #precise-x "PRECISE X - Inadequate comparison or non-evaluable"

ValueSet: PreciseCategoryLtProstate
Id: precise-category-vs-lt-prostate
Title: "Prostate - PRECISE Category VS"
Description: "Allowed PRECISE categories for longitudinal prostate MRI assessment."
* ^url = $precise-category-vs-lt-prostate-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include codes from system PreciseCategoryLtProstateCS

CodeSystem: PreciseChangePatternLtProstateCS
Id: precise-change-pattern-lt-prostate
Title: "Prostate - PRECISE Change Pattern CS"
Description: "Pattern of change on follow-up MRI."
* ^url = $precise-change-pattern-lt-prostate-url
* #local "Local change"
* #diffuse "Diffuse change"
* ^experimental = false
* ^caseSensitive = true

ValueSet: PreciseChangePatternLtProstate
Id: precise-change-pattern-vs-lt-prostate
Title: "Prostate - PRECISE Change Pattern VS"
Description: "Pattern of change observed on follow-up prostate MRI examination (local, diffuse)."
* ^url = $precise-change-pattern-vs-lt-prostate-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include codes from system PreciseChangePatternLtProstateCS

CodeSystem: PreciseComponentLtProstateCS
Id: precise-component-lt-prostate
Title: "Prostate - PRECISE Component CS"
Description: "Local codes for detailed PRECISE assessment components."
* ^url = $precise-component-lt-prostate-url
* ^experimental = false
* ^caseSensitive = true
* #precise-assessment "PRECISE longitudinal assessment"
* #new-lesion "New lesion indicator"
* #change-pattern "Change pattern"
* #best-sequence "Best MRI sequence for change assessment"
* #size-change-mm "Size change in millimeters"

ValueSet: PreciseComponentLtProstateVS
Id: precise-component-vs-lt-prostate
Title: "Prostate - PRECISE Component VS"
Description: "Codes for detailed PRECISE assessment components used in longitudinal prostate MRI follow-up evaluation."
* ^url = $precise-component-vs-lt-prostate-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* include codes from system PreciseComponentLtProstateCS
