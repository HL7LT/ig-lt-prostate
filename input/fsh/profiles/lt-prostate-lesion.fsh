Profile: LTProstateLesion
Parent: BodyStructure
Id: lt-prostate-lesion
Title: "Prostate Lesion"
Description: "An anatomical lesion in the prostate identified on MRI."
* patient 1..1
* patient only Reference(LTBasePatient)
* includedStructure 1..1
* includedStructure.structure 1..1
* includedStructure.structure from LTProstateZoneVS (required)
* includedStructure.laterality 0..1
* includedStructure.laterality from $mcode-laterality-vs (required)
* morphology 0..1
* description 0..1


Instance: example-prostate-lesion1
InstanceOf: LTProstateLesion
Usage: #example
Title: "Example Prostate Lesion – Left Peripheral Zone"
* patient = Reference(example-male-patient)
* includedStructure.structure = $sct#279706003 "Structure of peripheral glandular zone of prostate"
* includedStructure.laterality = $sct#7771000 "Left"
* morphology = $sct#49755003 "Morphologically abnormal structure"
* description = "MRI-visible focal lesion in the left peripheral zone."

