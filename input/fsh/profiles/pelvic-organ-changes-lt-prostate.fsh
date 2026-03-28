Profile: PelvicOrganChangesLtProstate
Parent: ObservationLt
Id: pelvic-organ-changes-lt-prostate
Title: "Observation: Pelvic Organ Changes"
Description: """
Rectal and other pelvic organ changes in prostate cancer staging.
For bladder-specific changes use BladderChangesLtProstate (with change nature component).
For bone metastasis use BoneMetastasisLtProstate.
"""
* ^url = $pelvic-organ-changes-lt-prostate-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ProstateDamageAndChangeStatusVS (required)
* bodySite 0..0
* bodyStructure 1..1
* bodyStructure only Reference($EuBodyStructureUrl)
* note 0..1
* note.text 1..1
