CodeSystem: PreciseCategoryProstateLtCS
Id: precise-category-prostate-lt
Title: "Prostate - PRECISE Category"
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


ValueSet: PreciseCategoryProstateLt
Id: precise-category-prostate-lt
Title: "Prostate - PRECISE Category"
Description: "Allowed PRECISE categories for longitudinal prostate MRI assessment."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* include codes from system PreciseCategoryProstateLtCS


CodeSystem: PreciseChangePatternProstateLtCS
Id: precise-change-pattern-prostate-lt
Title: "Prostate - PRECISE Change Pattern"
Description: "Pattern of change on follow-up MRI."
* #local "Local change"
* #diffuse "Diffuse change"


ValueSet: PreciseChangePatternProstateLt
Id: precise-change-pattern-prostate-lt
Title: "Prostate - PRECISE Change Pattern"
* ^status = #active
* ^publisher = "HL7 Lithuania"
* include codes from system PreciseChangePatternProstateLtCS


CodeSystem: PreciseComponentProstateLtCS
Id: precise-component-prostate-lt
Title: "Prostate - PRECISE Component"
Description: "Local codes for detailed PRECISE assessment components."
* #precise-assessment "PRECISE longitudinal assessment"
* #new-lesion "New lesion indicator"
* #change-pattern "Change pattern"
* #best-sequence "Best MRI sequence for change assessment"
* #size-change-mm "Size change in millimeters"


Profile: PreciseAssessmentProstateLt
Parent: LTBaseObservation
Id: precise-assessment-prostate-lt
Title: "Observation: PRECISE Longitudinal Assessment"
Description: """
PRECISE is an exam-level longitudinal assessment for prostate MRI follow-up.
It summarizes overall change compared to a prior MRI examination, using the PRECISE framework.

PRECISE does not replace PI-RADS (which is lesion-level). Instead, it provides a
patient/exam-level progression/regression category informed by lesion changes.
"""
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* code 1..1
* code = PreciseComponentProstateLtCS#precise-assessment "PRECISE longitudinal assessment"
* subject 1..1
* subject only Reference(LTBasePatient)
* encounter 0..1
* encounter only Reference(LTBaseEncounter)
* effective[x] 1..1
* effective[x] only dateTime
* derivedFrom 0..*
* derivedFrom only Reference(ImagingStudy)
* derivedFrom ^short = "Prior ImagingStudy used as baseline for PRECISE longitudinal comparison"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from PreciseCategoryProstateLt (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    newLesion 0..1 and
    changePattern 0..1 and
    bestSequence 0..1 and
    sizeChangeMm 0..1
* component[newLesion].code = PreciseComponentProstateLtCS#new-lesion "New lesion indicator"
* component[newLesion].value[x] 1..1
* component[newLesion].value[x] only boolean
* component[changePattern].code = PreciseComponentProstateLtCS#change-pattern "Change pattern"
* component[changePattern].value[x] 1..1
* component[changePattern].value[x] only CodeableConcept
* component[changePattern].valueCodeableConcept from PreciseChangePatternProstateLt (required)
* component[bestSequence].code = PreciseComponentProstateLtCS#best-sequence "Best MRI sequence for change assessment"
* component[bestSequence].value[x] 1..1
* component[bestSequence].value[x] only CodeableConcept
* component[bestSequence].valueCodeableConcept from SequenceTypeProstateLt (extensible)
* component[sizeChangeMm].code = PreciseComponentProstateLtCS#size-change-mm "Size change in millimeters"
* component[sizeChangeMm].value[x] 1..1
* component[sizeChangeMm].valueQuantity only $EuQuantityUrl
* component[sizeChangeMm].valueQuantity.system = "http://unitsofmeasure.org"
* component[sizeChangeMm].valueQuantity.code = #mm


Instance: observation-prostate-precise-followup-example2
InstanceOf: PreciseAssessmentProstateLt
Usage: #example
Title: "Observation: Prostate - PRECISE Longitudinal Assessment Example"
* status = #final
* code = PreciseComponentProstateLtCS#precise-assessment "PRECISE longitudinal assessment"
* subject = Reference(example-male-patient)
* encounter = Reference(example-encounter1)
* effectiveDateTime = "2026-03-15T10:30:00Z"
* derivedFrom[+] = Reference(example-imagingstudy)
* valueCodeableConcept = PreciseCategoryProstateLtCS#precise-4 "PRECISE 4 - Likely progression"
* component[newLesion].valueBoolean = false
* component[changePattern].valueCodeableConcept = PreciseChangePatternProstateLtCS#local "Local change"
* component[bestSequence].valueCodeableConcept = $dicom-dcm#113043 "Diffusion weighted"
* component[sizeChangeMm].valueQuantity = 3 'mm'
* note.text = "Follow-up MRI shows likely progression compared to prior study; progression driven by lesion growth and increased DWI restriction."
