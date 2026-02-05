ValueSet: LTProstateISUPGradeGroupVS
* include $sct#1279715000 "ISUP Grade Group 1 (Gleason 3+3)"
* include $sct#1279714001 "ISUP Grade Group 2 (Gleason 3+4)"
* include $sct#1279716004 "ISUP Grade Group 3 (Gleason 4+3)"
* include $sct#1279717008 "ISUP Grade Group 4 (Gleason 8)"
* include $sct#1279720000 "ISUP Grade Group 5 (Gleason 9–10)"


Profile: LTProstateGleasonObservation
Parent: LTBaseObservation
Id: lt-prostate-gleason-observation
Title: "Prostate Histopathology – Gleason / ISUP Grade Group"
Description: "Histopathological grading of prostate cancer using Gleason score and ISUP Grade Group."
* status 1..1
* status = #final
* code 1..1
* code = $sct#372278000 "Gleason score (observable entity)"
* subject 1..1
* subject only Reference(LTBasePatient)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from LTProstateISUPGradeGroupVS (required)
* focus 0..1
* focus only Reference(LTProstateLesion)
* note 0..*
