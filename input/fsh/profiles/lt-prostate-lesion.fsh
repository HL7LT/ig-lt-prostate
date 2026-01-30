Profile: LTProstateLesion
Parent: BodyStructure
Id: lt-prostate-lesion
Title: "Prostate Lesion"
Description: """
An anatomical prostate lesion identified on MRI and localized using
the PI-RADS 39-sector model.
Lesion location is encoded using specific SNOMED CT body structure
concepts representing exact prostate sectors (base/mid/apex, zone,
side and position).
"""
* patient 1..1
* patient only Reference(LTBasePatient)
* includedStructure 1..1
* includedStructure.structure 1..1
* includedStructure.structure from LTProstatePIRADSSectorVS (required)
* morphology 0..1
* description 0..1


Instance: example-prostate-lesion1
InstanceOf: LTProstateLesion
Usage: #example
Title: "Example Prostate Lesion – Right Posterolateral Basal Peripheral Zone"
* patient = Reference(example-male-patient)
* includedStructure.structure = $sct#716906001 
  "Structure of posterolateral basal part of peripheral zone of right half prostate"
* morphology = $sct#49755003 "Morphologically abnormal structure"
* description = "MRI-visible focal lesion in the right posterolateral basal peripheral zone."


