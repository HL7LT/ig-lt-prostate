Profile: BoneMetastasisLtProstate
Parent: ObservationLt
Id: bone-metastasis-lt-prostate
Title: "Observation: Bone Metastasis Assessment (LT Prostate)"
Description: """
Assessment of bone metastatic changes on prostate MRI.
Records whether bone metastases are absent, present (SNOMED 94222008),
or unclear/requiring further investigation.
"""
* ^url = $bone-metastasis-lt-prostate-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* status 1..1
* status = #final (exactly)
* category 1..1
* category = $observation-category#exam
* code 1..1
* code = $sct#94222008 "Secondary malignant neoplasm of bone (disorder)"
* subject 1..1
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ProstateDamageAndChangeStatusVS (required)
* bodySite 0..0
* bodyStructure 0..1
* bodyStructure only Reference($EuBodyStructureUrl)
* bodyStructure ^short = "Specific bone structure if identified"
* note 0..1
* note.text 1..1
