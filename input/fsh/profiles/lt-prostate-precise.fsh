CodeSystem: LTProstatePreciseCS
Id: lt-prostate-precise-cs
Title: "Lithuanian Prostate PRECISE CodeSystem"
Description: """
PRECISE categories for longitudinal assessment of prostate MRI follow-up examinations.
These categories describe overall change compared to a prior MRI examination.
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
Description: "Pattern of change on follow-up MRI."
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
* #precise-assessment "PRECISE longitudinal assessment"
* #new-lesion "New lesion indicator"
* #change-pattern "Change pattern"
* #best-sequence "Best MRI sequence for change assessment"
* #size-change-mm "Size change in millimeters"

Profile: LTProstatePreciseAssessment
Parent: LTBaseObservation
Id: lt-prostate-precise-assessment
Title: "PRECISE Longitudinal Assessment"
Description: """
PRECISE is an exam-level longitudinal assessment for prostate MRI follow-up.
It summarizes overall change compared to a prior MRI examination, using the PRECISE framework.

PRECISE does not replace PI-RADS (which is lesion-level). Instead, it provides a
patient/exam-level progression/regression category informed by lesion changes.
"""
* status 1..1
* status = #final
* code 1..1
* code = LTProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal assessment"
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1
* effective[x] only dateTime
// Comparison baseline (prior exam or prior PRECISE)
* derivedFrom 0..*
* derivedFrom only Reference(ImImagingStudy)
* derivedFrom ^short = "Prior ImagingStudy used as baseline for PRECISE longitudinal comparison"
// PRECISE category (main result)
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from LTProstatePreciseVS (required)
// Component slicing
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    newLesion 0..1 and
    changePattern 0..1 and
    bestSequence 0..1 and
    sizeChangeMm 0..1
* component[newLesion].code 1..1
* component[newLesion].code = LTProstatePreciseComponentCS#new-lesion "New lesion indicator"
* component[newLesion].value[x] 1..1
* component[newLesion].value[x] only boolean
* component[changePattern].code 1..1
* component[changePattern].code = LTProstatePreciseComponentCS#change-pattern "Change pattern"
* component[changePattern].value[x] 1..1
* component[changePattern].value[x] only CodeableConcept
* component[changePattern].valueCodeableConcept from LTProstatePreciseChangePatternVS (required)
* component[bestSequence].code 1..1
* component[bestSequence].code = LTProstatePreciseComponentCS#best-sequence "Best MRI sequence for change assessment"
* component[bestSequence].value[x] 1..1
* component[bestSequence].value[x] only CodeableConcept
* component[bestSequence].valueCodeableConcept from LTProstateSequenceTypeVS (extensible)
* component[sizeChangeMm].code 1..1
* component[sizeChangeMm].code = LTProstatePreciseComponentCS#size-change-mm "Size change in millimeters"
* component[sizeChangeMm].value[x] 1..1
* component[sizeChangeMm].valueQuantity 1..1
* component[sizeChangeMm].valueQuantity only $EuQuantityUrl
* component[sizeChangeMm].valueQuantity.system 1..1
* component[sizeChangeMm].valueQuantity.system = "http://unitsofmeasure.org"
* component[sizeChangeMm].valueQuantity.code 1..1
* component[sizeChangeMm].valueQuantity.code = #mm
* component[sizeChangeMm].valueQuantity.unit 0..1



Instance: example-precise-followup
InstanceOf: LTProstatePreciseAssessment
Usage: #example
Title: "Example PRECISE Assessment – Follow-up MRI"
* status = #final
* code = LTProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal assessment"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2026-03-15T10:30:00Z"
* valueCodeableConcept = LTProstatePreciseCS#precise-4 "PRECISE 4 - Likely progression"
// prior exam used for comparison
* derivedFrom[+] = Reference(example-imagingstudy)
// Components (supporting details)
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = LTProstatePreciseChangePatternCS#local "Local change"
* component[bestSequence].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* component[sizeChangeMm].valueQuantity = 3 'mm'
* note.text = "Follow-up MRI shows likely progression compared to prior study; progression driven by lesion growth and increased DWI restriction."
