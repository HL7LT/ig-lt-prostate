ValueSet: ProstateDamageAndChangeStatusLt
Id: prostate-damage-and-change-status
Title: "ValueSet: Prostate - Damage and Change Status"
Description: "Absent, suspected, or present damage and change status for prostate cancer staging."
* ^url = $prostate-damage-and-change-status-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#2667000 "Absent (qualifier value)"
* $sct#415684004 "Suspected (qualifier value)"
* $sct#52101004  "Present (qualifier value)"

ValueSet: BodyStructureProstate
Id: body-structure-prostate
Title: "Prostate - Body Structure"
Description: "Body structures that may be affected by prostate cancer invasion or local organ changes."
* ^url = $body-structure-prostate-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#60405008 "Structure of capsule of prostate (body structure)"
* $sct#64739004 "Seminal vesicle structure (body structure)"
* $sct#279669004 "Structure of lower pole of seminal vesicle (body structure)"
* $sct#59820001 "Blood vessel structure (body structure)"
* $sct#312500006 "Regional lymph node structure (body structure)"
* $sct#89837001 "Urinary bladder structure (body structure)"
* $sct#34402009 "Rectum structure (body structure)"
* $sct#272673000 "Bone structure (body structure)"
