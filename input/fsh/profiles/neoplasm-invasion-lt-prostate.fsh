Profile: NeoplasmInvasionLtProstate
Parent: ObservationLt
Id: neoplasm-invasion-lt-prostate
Title: "Observation: Neoplasm Invasion"
Description: "Direct invasion of prostate-related structures by neoplasm."
* ^url = $neoplasm-invasion-lt-prostate-url
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#371487005 "Presence of direct invasion by neoplasm (observable entity)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from DamageAndChangeStatusLtProstate (required)
* bodySite 0..0
* bodyStructure 1..1
* bodyStructure only Reference($EuBodyStructureUrl)
* note 0..1
* note.text 1..1
