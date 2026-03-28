Profile: BladderChangesLtProstate
Parent: ObservationLt
Id: bladder-changes-lt-prostate
Title: "Observation: Bladder Changes (LT Prostate)"
Description: """
Bladder changes observed during prostate cancer MRI staging.
Captures both the presence/absence status and the nature of the change
(neoplasm-related, benign, or non-neoplastic/incidental) as required by
the national mpMRI reporting form.
"""
* ^url = $bladder-changes-lt-prostate-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#364636000 "Lesion observable (observable entity)"
* subject 1..1
* value[x] 0..0
* bodySite 0..0
* bodyStructure 1..1
* bodyStructure only Reference($EuBodyStructureUrl)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    changeStatus 1..1 and
    changeNature 0..1
* component[changeStatus].code = $sct#260905004 "Condition (attribute)"
* component[changeStatus].value[x] 1..1
* component[changeStatus].value[x] only CodeableConcept
* component[changeStatus].valueCodeableConcept from ProstateDamageAndChangeStatusVS (required)
* component[changeNature].code = $sct#246454002 "Etiology (attribute)"
* component[changeNature].value[x] 1..1
* component[changeNature].value[x] only CodeableConcept
* component[changeNature].valueCodeableConcept from ProstateChangeNatureVS (required)
* note 0..1
* note.text 1..1
