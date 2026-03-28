Profile: PelvicOrganChangesLtProstate
Parent: ObservationLt
Id: pelvic-organ-changes-lt-prostate
Title: "Observation: Pelvic Organ Changes"
Description: "Bladder, rectal, and bone changes in prostate cancer staging."
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
//REVIEW. Change to leason?
* bodyStructure only Reference($EuBodyStructureUrl)
* note 0..1
* note.text 1..1
// TODO 2.4: Add change type categorization (tumor-related vs non-neoplastic vs benign) per Excel
// TODO 2.8: Bone metastasis should use a separate profile — bone is not a pelvic organ
