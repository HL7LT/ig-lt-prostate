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
* code = ProstatePreciseComponentCS#precise-assessment "PRECISE longitudinal assessment"
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
* valueCodeableConcept from ProstatePreciseCategoryVS (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    newLesion 0..1 and
    changePattern 0..1 and
    bestSequence 0..* and
    sizeChangeMm 0..1 and
    dimension1 0..1 and
    dimension2 0..1 and
    dimension3 0..1 and
    changeVolume 0..1 and
    likertScale 0..1 and
    priorPirads 0..1 and
    priorTnmStage 0..1 and
    priorCapsuleDamage 0..1 and
    priorVesicleDamage 0..1
// --- Existing components ---
* component[newLesion].code = ProstatePreciseComponentCS#new-lesion "New lesion indicator"
* component[newLesion].value[x] 1..1
* component[newLesion].value[x] only boolean
* component[changePattern].code = ProstatePreciseComponentCS#change-pattern "Change pattern"
* component[changePattern].value[x] 1..1
* component[changePattern].value[x] only CodeableConcept
* component[changePattern].valueCodeableConcept from ProstatePreciseChangePatternVS (required)
* component[bestSequence].code = ProstatePreciseComponentCS#best-sequence "Best MRI sequence for change assessment"
* component[bestSequence].value[x] 1..1
* component[bestSequence].value[x] only CodeableConcept
* component[bestSequence].valueCodeableConcept from ProstateSequenceTypeVS (extensible)
* component[sizeChangeMm].code = ProstatePreciseComponentCS#size-change-mm "Size change in millimeters"
* component[sizeChangeMm].value[x] 1..1
* component[sizeChangeMm].valueQuantity only Quantity
* component[sizeChangeMm].valueQuantity.system = $ucum
* component[sizeChangeMm].valueQuantity.code = #mm
// --- Dimensions (D1/D2/D3, at least two required per Excel) ---
* component[dimension1].code = ProstatePreciseComponentCS#dimension-1-mm "PSAD dimension 1 (mm, axial)"
* component[dimension1].value[x] 1..1
* component[dimension1].value[x] only Quantity
* component[dimension1].valueQuantity.system = $ucum
* component[dimension1].valueQuantity.code = #mm
* component[dimension2].code = ProstatePreciseComponentCS#dimension-2-mm "PSAD dimension 2 (mm, axial)"
* component[dimension2].value[x] 1..1
* component[dimension2].value[x] only Quantity
* component[dimension2].valueQuantity.system = $ucum
* component[dimension2].valueQuantity.code = #mm
* component[dimension3].code = ProstatePreciseComponentCS#dimension-3-mm "PSAD dimension 3 (mm, coronal/sagittal)"
* component[dimension3].value[x] 1..1
* component[dimension3].value[x] only Quantity
* component[dimension3].valueQuantity.system = $ucum
* component[dimension3].valueQuantity.code = #mm
// --- Change volume ---
* component[changeVolume].code = ProstatePreciseComponentCS#change-volume-cm3 "Change volume (cm³)"
* component[changeVolume].value[x] 1..1
* component[changeVolume].value[x] only Quantity
* component[changeVolume].valueQuantity.system = $ucum
* component[changeVolume].valueQuantity.code = #cm3
// --- Likert scale (optional, 1-5) ---
* component[likertScale].code = $sct#273575009 "Likert scale (assessment scale)"
* component[likertScale].value[x] 1..1
* component[likertScale].value[x] only integer
* component[likertScale].valueInteger obeys prostate-score-min-1 and prostate-score-max-5
// --- Prior study context ---
* component[priorPirads] ^short = "Prior PI-RADS score"
* component[priorPirads].code = $sct#350501000146102 "Prostate Imaging-Reporting and Data System score"
* component[priorPirads].value[x] 1..1
* component[priorPirads].value[x] only integer
* component[priorPirads].valueInteger obeys prostate-score-min-1 and prostate-score-max-5
* component[priorTnmStage].code = ProstatePreciseComponentCS#prior-tnm-stage "Prior TNM stage"
* component[priorTnmStage].value[x] 1..1
* component[priorTnmStage].value[x] only string
* component[priorCapsuleDamage] ^short = "Prior capsule damage"
* component[priorCapsuleDamage].code = $sct#60405008 "Structure of capsule of prostate (body structure)"
* component[priorCapsuleDamage].value[x] 1..1
* component[priorCapsuleDamage].value[x] only CodeableConcept
* component[priorCapsuleDamage].valueCodeableConcept from ProstateDamageStatusVS (required)
* component[priorVesicleDamage] ^short = "Prior seminal vesicle damage"
* component[priorVesicleDamage].code = $sct#64739004 "Seminal vesicle structure (body structure)"
* component[priorVesicleDamage].value[x] 1..1
* component[priorVesicleDamage].value[x] only CodeableConcept
* component[priorVesicleDamage].valueCodeableConcept from ProstateDamageStatusVS (required)
