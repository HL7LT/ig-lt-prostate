Profile: LesionProstateLt
Parent: $EuBodyStructureUrl
Id: lesion-prostate-lt
Title: "BodyStructure: Prostate Lesion"
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
* includedStructure.structure from PIRADSSectorProstateLt (required)
* morphology 0..1
* description 0..1


