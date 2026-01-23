CodeSystem: LTProstatePreciseCS
Id: lt-prostate-precise-cs
Title: "Lithuanian Prostate PRECISE CodeSystem"
Description: """
PRECISE categories for longitudinal assessment of prostate lesions on follow-up MRI.
These categories describe change over time compared to a prior MRI examination.
"""
* #precise-1 "PRECISE 1 - Resolution or definite regression"
* #precise-2 "PRECISE 2 - Likely regression"
* #precise-3 "PRECISE 3 - Stable disease"
* #precise-3v "PRECISE 3V - Stable volume but suspicious change"
* #precise-4 "PRECISE 4 - Likely progression"
* #precise-5 "PRECISE 5 - Definite progression"
* #precise-x "PRECISE X - Inadequate comparison or non-evaluable"


ValueSet: LTProstatePreciseVS
Id: lt-prostate-precise-vs
Title: "PRECISE Category ValueSet"
Description: "Allowed PRECISE categories for longitudinal prostate MRI assessment."
* include codes from system LTProstatePreciseCS


CodeSystem: LTProstatePreciseChangePatternCS
Id: lt-prostate-precise-change-pattern-cs
Title: "PRECISE Change Pattern CodeSystem"
Description: "Pattern of lesion change on follow-up MRI."
* #local "Local change"
* #diffuse "Diffuse change"


ValueSet: LTProstatePreciseChangePatternVS
Id: lt-prostate-precise-change-pattern-vs
Title: "PRECISE Change Pattern ValueSet"
* include codes from system LTProstatePreciseChangePatternCS


CodeSystem: LTProstatePreciseComponentCS
Id: lt-prostate-precise-component-cs
Title: "PRECISE Component Codes"
Description: "Local codes for detailed PRECISE assessment components."
* #precise-assessment "PRECISE longitudinal lesion assessment"
* #new-lesion "New lesion indicator"
* #change-pattern "Change pattern"
* #best-sequence "Best MRI sequence for change assessment"
* #size-change-mm "Size change in millimeters"


Profile: LTProstatePreciseChangeObservation
Parent: LTBaseObservation
Id: lt-prostate-precise-change-observation
Title: "PRECISE Longitudinal Lesion Assessment"
Description: """
PRECISE longitudinal assessment for a prostate lesion.
This observation represents change over time compared to a prior MRI,
using the PRECISE framework. It does NOT replace PI-RADS or MRI findings,
but interprets change between studies.
"""
* status 1..1
* status = #final
* code 1..1
* code = LTProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal lesion assessment"
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1
* effective[x] only dateTime
// Link to lesion being assessed
* focus 1..1
* focus only Reference(LTProstateLesion)
// PRECISE category (main result)
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from LTProstatePreciseVS (required)
// Link to prior imaging / assessment used for comparison
* derivedFrom 0..*
* derivedFrom ^short = "Reference to prior imaging study or prior assessment used for comparison"
// Component slicing
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
// declare the slices
* component contains
    newLesion 0..1 and
    changePattern 0..1 and
    bestSequence 0..1 and
    sizeChangeMm 0..1
// New lesion indicator
* component[newLesion].code 1..1
* component[newLesion].code = LTProstatePreciseComponentCS#new-lesion "New lesion indicator"
* component[newLesion].value[x] 1..1
* component[newLesion].value[x] only boolean
// Change pattern
* component[changePattern].code 1..1
* component[changePattern].code = LTProstatePreciseComponentCS#change-pattern "Change pattern"
* component[changePattern].value[x] 1..1
* component[changePattern].value[x] only CodeableConcept
* component[changePattern].valueCodeableConcept from LTProstatePreciseChangePatternVS (required)
// Best sequence for assessing change
* component[bestSequence].code 1..1
* component[bestSequence].code = LTProstatePreciseComponentCS#best-sequence "Best MRI sequence for change assessment"
* component[bestSequence].value[x] 1..1
* component[bestSequence].value[x] only CodeableConcept
* component[bestSequence].valueCodeableConcept from LTProstateSequenceTypeVS (extensible)
// Quantitative size change (mm)
* component[sizeChangeMm].code 1..1
* component[sizeChangeMm].code = LTProstatePreciseComponentCS#size-change-mm "Size change in millimeters"
* component[sizeChangeMm].value[x] 1..1
* component[sizeChangeMm].value[x] only $EuQuantityUrl
* component[sizeChangeMm].valueQuantity = $ucum#mm


Instance: example-precise-lesion1
InstanceOf: LTProstatePreciseChangeObservation
Usage: #example
Title: "Example PRECISE Assessment – Lesion 1 Progression"
* status = #final
* code = LTProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal lesion assessment"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2026-03-15T10:30:00Z"
// Link to lesion
* focus = Reference(example-prostate-lesion1)
// Main PRECISE category
* valueCodeableConcept = LTProstatePreciseCS#precise-4 "PRECISE 4 - Likely progression"
// Compared to prior study (use ImagingStudy OR DocumentReference, not DiagnosticReport)
* derivedFrom = Reference(example-imagingstudy)
// Components
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = LTProstatePreciseChangePatternCS#local "Local change"
* component[bestSequence].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* component[sizeChangeMm].valueQuantity = 3 'mm'
