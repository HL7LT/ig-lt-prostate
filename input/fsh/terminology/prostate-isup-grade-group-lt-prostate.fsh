ValueSet: ProstateIsupGradeGroupVS
Id: prostate-isup-grade-group
Title: "Prostate - ISUP Grade Group"
Description: "ISUP Grade Groups for prostate cancer histopathology, aligned with Gleason grading. Includes sub-combination codes for Grade Groups 4 and 5."
* ^url = $prostate-isup-grade-group-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
// Grade Group 1
* $sct#1279715000 "ISUP Grade Group 1 (Gleason 3+3 = 6)"
// Grade Group 2
* $sct#1279714001 "ISUP Grade Group 2 (Gleason 3+4 = 7)"
// Grade Group 3
* $sct#1279716004 "ISUP Grade Group 3 (Gleason 4+3 = 7)"
// Grade Group 4 — sub-combinations
* $sct#1279717008 "ISUP Grade Group 4 (Gleason 4+4 = 8)"
* $sct#1279718003 "ISUP Grade Group 4 (Gleason 3+5 = 8)"
* $sct#1279719006 "ISUP Grade Group 4 (Gleason 5+3 = 8)"
// Grade Group 5 — sub-combinations
* $sct#1279720000 "ISUP Grade Group 5 (Gleason 4+5 = 9)"
* $sct#1279721001 "ISUP Grade Group 5 (Gleason 5+4 = 9)"
* $sct#1279722008 "ISUP Grade Group 5 (Gleason 5+5 = 10)"
