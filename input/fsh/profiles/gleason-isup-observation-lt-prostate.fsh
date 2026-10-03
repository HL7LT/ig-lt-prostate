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
// Code corrected: 1286888005 is "a dexamethasone and levofloxacin ophthalmic product" in SNOMED CT,
// not what the display beside it said. 1287180006 is the concept meant.
* component[pattern4Percent].code = $sct#1287180006 "Percentage of primary malignant neoplasm of prostate with Gleason histologic pattern 4"
* component[pattern4Percent].value[x] 1..1
* component[pattern4Percent].value[x] only integer
* component[pattern4Percent] ^short = "Pattern 4 quantity as percentage (0-100). Applicable to GG2, GG3, GG4, GG5."
// SNOMED CT has no pre-coordinated concept for this: the whole Gleason list carries
// exactly one "Percentage of..." observable and it covers pattern 4 (1287180006).
// Expressed instead as a post-coordinated expression, which needs no local code and
// is understood by any SNOMED-aware system. Validated against the edition tx.fhir.org
// serves (International 2025-02-01): every component concept resolves there and
// $validate-code returns true for the expression as a whole.
// Composed by Igor Bossenko; a request for a pre-coordinated concept goes to SNOMED
// International separately.
* component[pattern5Percent].code = $sct#"363787002:{370130000=118596002,370132008=30766002,370134009=123029007,246514001=415067009,704319004=41216001,704325000=1187332001,704321009=1234914003,704327008=309133004,246501002=106241006,704326004=369774002}"
* component[pattern5Percent].value[x] 1..1
* component[pattern5Percent].value[x] only integer
* component[pattern5Percent] ^short = "Pattern 5 quantity as percentage (0-100). Applicable to GG4 and GG5."
* note 0..*
