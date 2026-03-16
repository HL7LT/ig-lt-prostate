Profile: PreciseAssessmentLtProstate
Parent: ObservationLt
Id: precise-assessment-lt-prostate
Title: "Observation: PRECISE Longitudinal Assessment"
Description: """
PRECISE is an exam-level longitudinal assessment for prostate MRI follow-up.
It summarizes overall change compared to a prior MRI examination, using the PRECISE framework.

PRECISE does not replace PI-RADS (which is lesion-level). Instead, it provides a
patient/exam-level progression/regression category informed by lesion changes.
"""
* ^url = $precise-assessment-lt-prostate-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* code 1..1
* code = PreciseComponentLtProstateCS#precise-assessment "PRECISE longitudinal assessment"
* subject 1..1
* subject only Reference(PatientLt)
* encounter 0..1
* encounter only Reference(EncounterLt)
* effective[x] 1..1
* effective[x] only dateTime
* derivedFrom 0..*
* derivedFrom only Reference(ImagingStudy)
* derivedFrom ^short = "Prior ImagingStudy used as baseline for PRECISE longitudinal comparison"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from PreciseCategoryLtProstate (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    newLesion 0..1 and
    changePattern 0..1 and
    bestSequence 0..1 and
    sizeChangeMm 0..1
* component[newLesion].code = PreciseComponentLtProstateCS#new-lesion "New lesion indicator"
* component[newLesion].value[x] 1..1
* component[newLesion].value[x] only boolean
* component[changePattern].code = PreciseComponentLtProstateCS#change-pattern "Change pattern"
* component[changePattern].value[x] 1..1
* component[changePattern].value[x] only CodeableConcept
* component[changePattern].valueCodeableConcept from PreciseChangePatternLtProstate (required)
* component[bestSequence].code = PreciseComponentLtProstateCS#best-sequence "Best MRI sequence for change assessment"
* component[bestSequence].value[x] 1..1
* component[bestSequence].value[x] only CodeableConcept
* component[bestSequence].valueCodeableConcept from SequenceTypeLtProstate (extensible)
* component[sizeChangeMm].code = PreciseComponentLtProstateCS#size-change-mm "Size change in millimeters"
* component[sizeChangeMm].value[x] 1..1
* component[sizeChangeMm].valueQuantity only Quantity
* component[sizeChangeMm].valueQuantity.system = "http://unitsofmeasure.org"
* component[sizeChangeMm].valueQuantity.code = #mm
