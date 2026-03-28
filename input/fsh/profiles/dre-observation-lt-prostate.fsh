Profile: DreObservationLtProstate
Parent: ObservationLt
Id: dre-observation-lt-prostate
Title: "Observation: Digital Rectal Examination (LT Prostate)"
Description: """
Digital rectal examination (DRE) finding for prostate assessment.
Records the palpation findings from the urologist's examination as part of
the prostate cancer early diagnosis programme (ADPP step T21).
"""
* ^url = $dre-observation-lt-prostate-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#410006001 "Digital examination of rectum (procedure)"
* subject 1..1
* subject only Reference(PatientLt)
* encounter 0..1
* encounter only Reference(EncounterLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from DigitalRectalExaminationVS (required)
* note 0..*
