Profile: GleasonIsupObservationLtProstate
Parent: ObservationLt
Id: gleason-isup-observation-lt-prostate
Title: "Observation: Gleason / ISUP Grade Group"
Description: "Histopathological grading of prostate cancer using Gleason score and ISUP Grade Group."
* ^url = $gleason-isup-observation-lt-prostate-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final
* code 1..1
* code = $sct#372278000 "Gleason score (observable entity)"
* subject 1..1
* subject only Reference(PatientLt)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ProstateIsupGradeGroupVS (required)
* focus 0..1
* focus only Reference(LesionLtProstate)
* note 0..*
// TODO 2.6: Add sub-combination Gleason codes (3+5, 5+3, 4+5, 5+4, 5+5) to ValueSet
//           Add Pattern 4/5 percentage band components per Excel pathology sheet
