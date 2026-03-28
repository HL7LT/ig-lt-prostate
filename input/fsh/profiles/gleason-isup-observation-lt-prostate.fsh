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
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    pattern4Percent 0..1 and
    pattern5Percent 0..1
* component[pattern4Percent].code = $sct#1286888005 "Percentage of Gleason pattern 4 in prostatic acinar adenocarcinoma (observable entity)"
* component[pattern4Percent].value[x] 1..1
* component[pattern4Percent].value[x] only integer
* component[pattern4Percent] ^short = "Pattern 4 quantity as percentage (0-100). Applicable to GG2, GG3, GG4, GG5."
* component[pattern5Percent].code = $sct#1286889002 "Percentage of Gleason pattern 5 in prostatic acinar adenocarcinoma (observable entity)"
* component[pattern5Percent].value[x] 1..1
* component[pattern5Percent].value[x] only integer
* component[pattern5Percent] ^short = "Pattern 5 quantity as percentage (0-100). Applicable to GG4 and GG5."
* note 0..*
